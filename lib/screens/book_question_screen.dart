// 책 추천을 위한 질문 화면 (실제 질문 트리 사용)
import 'package:flutter/material.dart';
import '../question_tree.dart';
import '../data/book/all_book_trees.dart';
import '../services/book_recommendation_service.dart';
import '../main.dart';

class BookQuestionScreen extends StatefulWidget {
  const BookQuestionScreen({super.key});

  @override
  State<BookQuestionScreen> createState() => _BookQuestionScreenState();
}

class _BookQuestionScreenState extends State<BookQuestionScreen> {
  String currentNodeKey = 'book_root';
  List<String> questionHistory = []; // 질문 히스토리
  List<String> collectedBookTags = []; // 수집된 책 태그

  QuestionNode? get currentNode => allBookTrees[currentNodeKey];

  void _handleAnswer(Option option) {
    // 히스토리에 현재 노드 추가
    questionHistory.add(currentNodeKey);

    // bookTags가 있으면 수집
    if (option.bookTags != null && option.bookTags!.isNotEmpty) {
      collectedBookTags.addAll(option.bookTags!);
    }

    // 다음 노드로 이동
    String nextKey = option.nextNodeKey;

    // 'end'면 결과 화면으로
    if (nextKey == 'end') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => BookResultScreen(bookTags: collectedBookTags),
        ),
      );
    } else {
      setState(() {
        currentNodeKey = nextKey;
      });
    }
  }

  void _goBack() {
    if (questionHistory.isEmpty) {
      Navigator.pop(context);
    } else {
      setState(() {
        currentNodeKey = questionHistory.removeLast();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final node = currentNode;

    if (node == null) {
      return Scaffold(
        appBar: AppBar(),
        body: const Center(child: Text('오류: 질문을 찾을 수 없습니다.')),
      );
    }

    // 진행도 계산 (depth 기반 - depth 7까지)
    int depth = _getDepthFromNodeKey(currentNodeKey);
    double progress = depth / 7.0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: _goBack,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 진행 표시
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: LinearProgressIndicator(
                  value: progress,
                  backgroundColor: Colors.grey[300],
                  color: const Color(0xFF818CF8), // indigo-400
                  minHeight: 8,
                ),
              ),

              const SizedBox(height: 32),

              // 질문 번호 (depth 표시)
              Text(
                '$depth/7',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 12),

              // 질문 텍스트
              SizedBox(
                height: 140,
                child: SingleChildScrollView(
                  child: Align(
                    // 텍스트가 짧아도 상단에 붙게 함
                    alignment: Alignment.centerLeft,
                    child: Text(
                      node.question,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        height: 1.4,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 32),

              SizedBox(
                height: 360,
                child: ListView.builder(
                  key: ValueKey(currentNodeKey),
                  physics: depth == 1
                      ? const ClampingScrollPhysics()
                      : const NeverScrollableScrollPhysics(),
                  itemCount: node.options.length,
                  itemBuilder: (context, index) {
                    final option = node.options[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: _OptionButton(
                        text: option.text,
                        onTap: () => _handleAnswer(option),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // 노드 키에서 depth 추출
  int _getDepthFromNodeKey(String key) {
    if (key == 'book_root') return 1;

    // book_sad_2_1 형식에서 숫자 추출
    RegExp regExp = RegExp(r'_(\d+)_');
    Match? match = regExp.firstMatch(key);

    if (match != null && match.groupCount >= 1) {
      return int.tryParse(match.group(1)!) ?? 1;
    }

    return 1;
  }
}

// 선택지 버튼 위젯
class _OptionButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const _OptionButton({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: const Color(0xFF818CF8).withOpacity(0.3), // indigo
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

// 책 결과 화면
class BookResultScreen extends StatelessWidget {
  final List<String> bookTags;

  const BookResultScreen({super.key, required this.bookTags});

  @override
  Widget build(BuildContext context) {
    // 수집된 태그로 책 추천
    final recommendedBooks = BookRecommendationService.recommendBooks(bookTags);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black87),
          onPressed: () {
            // 홈으로 돌아가기
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // 결과 헤더
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  const Text(
                    '당신을 위한 책 추천',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '총 ${bookTags.length}개의 태그를 바탕으로 골랐어요',
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                  if (bookTags.isNotEmpty) ...[
                    const SizedBox(height: 12),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: bookTags.take(10).map((tag) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFF818CF8).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            tag,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF818CF8),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ],
              ),
            ),

            const SizedBox(height: 24),

            // PageView로 카드 표시
            Expanded(
              child: recommendedBooks.isEmpty
                  ? const Center(child: Text('추천할 책을 찾지 못했습니다.'))
                  : PageView.builder(
                      itemCount: recommendedBooks.length,
                      padEnds: true,
                      controller: PageController(viewportFraction: 0.85),
                      itemBuilder: (context, index) {
                        return Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: _BookResultCard(
                              book: recommendedBooks[index],
                            ),
                          ),
                        );
                      },
                    ),
            ),

            const SizedBox(height: 24),

            // 처음으로 버튼
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF818CF8), // indigo-400
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 48,
                    vertical: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 5,
                ),
                child: const Text(
                  '처음으로 돌아가기',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

// 책 결과 카드
class _BookResultCard extends StatelessWidget {
  final Book book;

  const _BookResultCard({required this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 책 이미지
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              book.imageUrl,
              width: 160,
              height: 240,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 160,
                  height: 240,
                  color: Colors.grey[300],
                  child: const Icon(Icons.book, size: 60),
                );
              },
            ),
          ),

          const SizedBox(height: 20),

          // 제목
          Text(
            book.title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 8),

          // 작가
          Text(
            book.author,
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 16),

          // 명대사
          Container(
            height: 100,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFFFFBEB),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Text(
                  '"${book.famousLine}"',
                  style: TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey[800],
                    height: 1.4,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
