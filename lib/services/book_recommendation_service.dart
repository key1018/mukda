// 책 추천 서비스
import 'dart:math';
import '../main.dart';

class BookRecommendationService {
  static final Random _random = Random();

  // bookTags를 기반으로 책을 랜덤 추천
  static List<Book> recommendBooks(List<String> bookTags) {
    if (bookTags.isEmpty) {
      // 태그가 없으면 랜덤 책 3권
      List<Book> shuffled = List.from(sampleBooks);
      shuffled.shuffle(_random);
      return shuffled.take(3).toList();
    }

    // 태그 매칭 점수 계산
    List<Map<String, dynamic>> scored = sampleBooks.map((book) {
      int matchCount = book.tags.where((tag) => bookTags.contains(tag)).length;
      return {'book': book, 'score': matchCount};
    }).toList();

    // 점수순 정렬
    scored.sort((a, b) => (b['score'] as int).compareTo(a['score'] as int));

    // 최고 점수 확인
    int maxScore = scored.isNotEmpty ? scored[0]['score'] as int : 0;

    // 최고 점수를 가진 책들만 필터링
    List<Book> topBooks = scored
        .where((item) => (item['score'] as int) == maxScore && maxScore > 0)
        .map((item) => item['book'] as Book)
        .toList();

    // 최고 점수 책이 없으면 전체 책에서 랜덤
    if (topBooks.isEmpty) {
      topBooks = List.from(sampleBooks);
    }

    // 랜덤으로 섞고 3권 선택
    topBooks.shuffle(_random);
    return topBooks.take(3).toList();
  }
}

