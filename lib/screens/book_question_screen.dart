import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import '../question_tree.dart';
import '../data/book/all_book_trees.dart';
import '../services/aladin_api_service.dart';
import '../main.dart';

class BookQuestionScreen extends StatefulWidget {
  const BookQuestionScreen({super.key});

  @override
  State<BookQuestionScreen> createState() => _BookQuestionScreenState();
}

class _BookQuestionScreenState extends State<BookQuestionScreen> {
  String currentNodeKey = 'book_root';
  List<String> questionHistory = [];
  List<String> collectedBookTags = [];

  QuestionNode? get currentNode => allBookTrees[currentNodeKey];

  void _handleAnswer(Option option) {
    questionHistory.add(currentNodeKey);
    if (option.bookTags != null && option.bookTags!.isNotEmpty) {
      collectedBookTags.addAll(option.bookTags!);
    }
    String nextKey = option.nextNodeKey;
    if (nextKey == 'end') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => BookResultScreen(
            bookTags: collectedBookTags,
            lastOptionText: option.text,
          ),
        ),
      );
    } else {
      setState(() => currentNodeKey = nextKey);
    }
  }

  void _goBack() {
    if (questionHistory.isEmpty) {
      Navigator.pop(context);
    } else {
      setState(() => currentNodeKey = questionHistory.removeLast());
    }
  }

  @override
  Widget build(BuildContext context) {
    final node = currentNode;
    if (node == null)
      return const Scaffold(body: Center(child: Text('질문 데이터 오류')));

    final depth = _getDepthFromNodeKey(currentNodeKey);
    final progress = depth / 7.0;

    return Scaffold(
      // Scaffold 배경색을 메인과 통일 (디자인 일관성)
      backgroundColor: const Color(0xFFFFFBEB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: _goBack,
        ),
      ),
      body: SafeArea(
        // [수정 핵심 1] SingleChildScrollView를 최상단에 두고 다른 제약을 최소화합니다.
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Center(
            // 가로 중앙 정렬만 담당
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 500.w), // 태블릿용 폭 제한
              child: Padding(
                // [수정 핵심 2] 위쪽 여백은 줄이고 하단 여백은 아주 넉넉히(80.h) 줍니다.
                padding: EdgeInsets.fromLTRB(24.w, 10.h, 24.w, 80.h),
                child: Column(
                  // [수정 핵심 3] MainAxisAlignment.center를 절대 쓰지 않고 상단(start)부터 배치합니다.
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 프로그레스 바
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4.r),
                      child: LinearProgressIndicator(
                        value: progress,
                        backgroundColor: Colors.grey[300],
                        color: const Color(0xFF818CF8),
                        minHeight: 6.h,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    Text(
                      '$depth/7',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    // 질문 텍스트 - 높이 제한 없이 자연스럽게 늘어나게 함
                    Text(
                      node.question,
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                        height: 1.3,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 32.h),
                    // 선택지 리스트 - shrinkWrap으로 전체 스크롤의 일부가 되게 함
                    ListView.builder(
                      key: ValueKey(currentNodeKey),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: node.options.length,
                      itemBuilder: (context, index) {
                        final option = node.options[index];
                        return Padding(
                          padding: EdgeInsets.only(bottom: 12.h),
                          child: _OptionButton(
                            text: option.text,
                            onTap: () => _handleAnswer(option),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  int _getDepthFromNodeKey(String key) {
    if (key == 'book_root') return 1;
    final match = RegExp(r'_(\d+)_').firstMatch(key);
    if (match != null && match.groupCount >= 1) {
      return int.tryParse(match.group(1)!) ?? 1;
    }
    return 1;
  }
}

// ==================== 선택지 버튼 (더 콤팩트하게 수정) ====================
class _OptionButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const _OptionButton({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20.r),
      child: Container(
        width: double.infinity,
        // [수정 핵심 4] 버튼의 세로 여백을 줄여 한 화면에 더 많은 버튼이 보이게 합니다.
        padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 20.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: const Color(0xFF818CF8).withValues(alpha: 0.3),
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

// ==================== 결과 화면 (BookResultScreen) ====================
class BookResultScreen extends StatefulWidget {
  final List<String> bookTags;
  final String? lastOptionText;
  const BookResultScreen({
    super.key,
    required this.bookTags,
    this.lastOptionText,
  });

  @override
  State<BookResultScreen> createState() => _BookResultScreenState();
}

class _BookResultScreenState extends State<BookResultScreen> {
  late final Future<List<Book>> _booksFuture;

  @override
  void initState() {
    super.initState();
    _booksFuture = _loadBooks();
  }

  Future<List<Book>> _loadBooks() async {
    final keyword = widget.bookTags.take(2).join(' ').trim();
    return searchBooksByKeyword(
      keyword.isEmpty ? '치유' : keyword,
      bookTags: widget.bookTags,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFBEB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black87),
          onPressed: () =>
              Navigator.of(context).popUntil((route) => route.isFirst),
        ),
      ),
      body: FutureBuilder<List<Book>>(
        future: _booksFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(color: Color(0xFF818CF8)),
            );
          }
          final books = snapshot.data ?? [];
          if (books.isEmpty) return const Center(child: Text('추천 결과가 없습니다.'));

          return PageView.builder(
            itemCount: books.length,
            controller: PageController(viewportFraction: 0.85),
            itemBuilder: (context, index) {
              return Center(child: _BookResultCard(book: books[index]));
            },
          );
        },
      ),
    );
  }
}

// ==================== 결과 카드 위젯 ====================
class _BookResultCard extends StatelessWidget {
  final Book book;
  const _BookResultCard({required this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
      padding: EdgeInsets.all(24.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 15.r,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: Image.network(
              book.imageUrl,
              height: MediaQuery.of(context).size.height * 0.25,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                height: 150.h,
                color: Colors.grey[200],
                child: const Icon(Icons.book),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            book.title,
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.h),
          Text(
            book.author,
            style: TextStyle(fontSize: 14.sp, color: Colors.grey[600]),
          ),
          SizedBox(height: 16.h),
          Expanded(
            child: SingleChildScrollView(
              child: Text(
                '"${book.famousLine}"',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontStyle: FontStyle.italic,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
