// 알라딘 오픈 API 연동 (우선순위 완벽 적용: 판타지/웹툰/소설 분리)
// 실행: flutter run --dart-define=ALADIN_TTBKEY=발급받은키
import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import '../main.dart'; // 프로젝트 상황에 맞게 경로를 수정하세요

final Random _random = Random();

String get _ttbKey =>
    const String.fromEnvironment('ALADIN_TTBKEY', defaultValue: '');

String _stripHtml(String? raw) {
  if (raw == null || raw.isEmpty) return '';
  return raw
      .replaceAll(RegExp(r'<[^>]*>'), '')
      .replaceAll(RegExp(r'&[^;]+;'), '')
      .replaceAll(RegExp(r'\s+'), ' ')
      .trim();
}

Book _itemToBook(Map<String, dynamic> item) {
  List<String> tags = [];
  final raw = item['categoryName'];
  if (raw != null && raw is String && raw.isNotEmpty) {
    tags = raw
        .split('>')
        .map((e) => e.trim())
        .where((e) => e.isNotEmpty)
        .toList();
  }
  final desc = item['description'] as String? ?? '';
  return Book(
    title: item['title'] as String? ?? '',
    author: (item['author'] as String?)?.replaceAll('^', ', ') ?? '',
    imageUrl: item['cover'] as String? ?? '',
    famousLine: _stripHtml(desc),
    tags: tags,
    link: item['link'] as String? ?? '',
  );
}

/// [핵심 수정] 태그 검사에 우선순위(Priority)를 부여합니다.
/// 구체적인 장르(웹툰, 판타지 등)를 먼저 검사하고, 넓은 범위(소설, 에세이)는 나중에 검사합니다.
String? _mapTagsToCategoryId(List<String>? bookTags) {
  if (bookTags == null || bookTags.isEmpty) return null;

  // 1순위: 매우 구체적인 세부 장르 (가장 먼저 확인)
  if (bookTags.any((t) => t.contains('웹툰'))) return '178781';
  if (bookTags.any((t) => t.contains('만화'))) return '2551';
  if (bookTags.any((t) => t.contains('추리') || t.contains('미스터리') || t.contains('스릴러'))) return '112011';
  if (bookTags.any((t) => t.contains('SF'))) return '50993';
  if (bookTags.any((t) => t.contains('판타지') || t.contains('이세계'))) return '50994';
  if (bookTags.any((t) => t.contains('로맨스'))) return '50930';

  // 2순위: 비문학 및 특정 테마
  if (bookTags.any((t) => t.contains('철학') || t.contains('인문') || t.contains('사유') || t.contains('실존'))) return '656';
  if (bookTags.any((t) => t.contains('심리') || t.contains('정신분석'))) return '51373';
  if (bookTags.any((t) => t.contains('그림책') || t.contains('동화'))) return '48821';
  if (bookTags.any((t) => t.contains('예술') || t.contains('사진') || t.contains('디자인') || t.contains('미술'))) return '51000';
  if (bookTags.any((t) => t.contains('과학'))) return '987';
  if (bookTags.any((t) => t.contains('가드닝') || t.contains('식물'))) return '55561';
  if (bookTags.any((t) => t.contains('여행'))) return '1196';
  if (bookTags.any((t) => t.contains('취미') || t.contains('실용') || t.contains('요리'))) return '55890';

  // 3순위: 넓은 범위의 문학/에세이 (판타지 소설에서 '소설'로 빠지는 것을 막기 위해 마지막에 배치)
  if (bookTags.any((t) => t.contains('에세이') || t.contains('산문') || t.contains('수필') || 
                          t.contains('위로') || t.contains('휴식') || t.contains('일상') || t.contains('여유'))) return '55889';
  if (bookTags.any((t) => t.contains('시') || t.contains('서정'))) return '50940';
  if (bookTags.any((t) => t.contains('소설') || t.contains('문학') || t.contains('이야기'))) return '1';

  return null; // 매핑된 카테고리가 없으면 넓은 키워드 검색으로 넘어감
}

const List<String> _learningKeywords = ['IT', '공부', '학습', '전공', '수험', '교재'];

bool _categoryIsTextbookOrNiche(String? categoryName) {
  if (categoryName == null || categoryName.isEmpty) return false;
  final lower = categoryName.toLowerCase();
  return lower.contains('대학교재') ||
      lower.contains('전문서적') ||
      lower.contains('수험서') ||
      lower.contains('수험') ||
      lower.contains('참고서') ||
      lower.contains('자격증') ||
      lower.contains('육아');
}

bool _hasLearningTag(List<String>? bookTags) {
  if (bookTags == null || bookTags.isEmpty) return false;
  for (final tag in bookTags) {
    if (_learningKeywords.any((k) => tag.contains(k) || k.contains(tag))) {
      return true;
    }
  }
  return false;
}

bool _isHowToOrGuideStyle(String? title, String? categoryName) {
  final t = title ?? '';
  final c = categoryName ?? '';
  const howToMarkers = ['교실', '입문', '가이드', '실기', '테크닉', '그리기', '드로잉'];
  for (final marker in howToMarkers) {
    if (t.contains(marker) || c.contains(marker)) return true;
  }
  if (t.contains('일러스트') && (t.contains('교실') || t.contains('배경'))) {
    return true;
  }
  return false;
}

int _scoreItem(
  Map<String, dynamic> item,
  List<String>? bookTags,
) {
  int score = 100;

  final categoryName = item['categoryName'] as String? ?? '';
  final description = item['description'] as String? ?? '';
  final title = item['title'] as String? ?? '';

  bool isHobbyIntent = false;

  if (bookTags != null && bookTags.isNotEmpty) {
    for (final tag in bookTags) {
      if (tag.isEmpty) continue;
      
      if (description.contains(tag) || title.contains(tag)) score += 30;

      if (tag.contains('취미') || tag.contains('예술') || tag.contains('가이드') ||
          tag.contains('실용') || tag.contains('미술') || tag.contains('드로잉') ||
          tag.contains('활동') || tag.contains('만들기')) {
        isHobbyIntent = true;
      }
    }
  }
  
  if (!_hasLearningTag(bookTags) && !isHobbyIntent && _isHowToOrGuideStyle(title, categoryName)) {
    score -= 50;
  }

  score += _random.nextInt(15);
  return score;
}

/// 무조건 5권 반환 로직
Future<List<Book>> searchBooksByKeyword(
  String keyword, {
  List<String>? bookTags,
  List<String>? targetGenres, 
}) async {
  if (_ttbKey.isEmpty) {
    throw StateError(
      'ALADIN_TTBKEY가 없습니다. '
      'flutter run --dart-define=ALADIN_TTBKEY=키값',
    );
  }

  String? categoryId = _mapTagsToCategoryId(bookTags);
  String url;
  const int requestCount = 50;
  const int returnCount = 5;

  if (categoryId != null) {
    final queryParams = {
      'ttbkey': _ttbKey,
      'QueryType': 'Bestseller',
      'CategoryId': categoryId,
      'MaxResults': requestCount.toString(),
      'Output': 'js',
      'Version': '20131101',
      'Cover': 'Big',
    };
    url = Uri.parse('http://www.aladin.co.kr/ttb/api/ItemList.aspx')
        .replace(queryParameters: queryParams)
        .toString();
  } else {
    String broadQuery = keyword.trim().isEmpty ? '베스트셀러' : keyword.trim();
    if (bookTags != null && bookTags.isNotEmpty) {
      broadQuery = bookTags.first; 
    }

    final queryParams = {
      'ttbkey': _ttbKey,
      'Query': broadQuery,
      'QueryType': 'Keyword',
      'SearchTarget': 'Book',
      'MaxResults': requestCount.toString(),
      'Sort': 'SalesPoint',
      'Output': 'js',
      'Version': '20131101',
      'Cover': 'Big',
    };
    url = Uri.parse('http://www.aladin.co.kr/ttb/api/ItemSearch.aspx')
        .replace(queryParameters: queryParams)
        .toString();
  }

  final res = await http.get(Uri.parse(url));
  if (res.statusCode != 200) {
    throw Exception('알라딘 API 오류: ${res.statusCode}');
  }

  final decoded = json.decode(res.body);
  if (decoded is! Map<String, dynamic>) return [];

  final rawItems = decoded['item'];
  if (rawItems == null) return [];

  final items = rawItems is List
      ? rawItems
      : rawItems is Map<String, dynamic>
      ? [rawItems]
      : <dynamic>[];

  final scored = <Map<String, dynamic>>[];
  for (final e in items) {
    if (e is Map<String, dynamic>) {
      if (e['adult'] == true) continue;
      
      final categoryName = e['categoryName'] as String? ?? '';
      if (_categoryIsTextbookOrNiche(categoryName)) continue;

      scored.add({'item': e, 'score': _scoreItem(e, bookTags)});
    }
  }

  scored.sort((a, b) => (b['score'] as int).compareTo(a['score'] as int));

  final int takeCount = scored.length < 15 ? scored.length : 15;
  final topCandidates = scored.take(takeCount).toList();
  topCandidates.shuffle(_random);

  final books = <Book>[];
  for (final entry in topCandidates.take(returnCount)) {
    try {
      books.add(_itemToBook(entry['item'] as Map<String, dynamic>));
    } catch (_) {}
  }

  return books;
}