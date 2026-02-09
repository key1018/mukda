import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math';

void main() {
  runApp(const MukdaApp());
}

// ==================== 앱 진입점 ====================
class MukdaApp extends StatelessWidget {
  const MukdaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => RecommendationProvider(),
      child: MaterialApp(
        title: '먹다',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFFFB923C), // orange-400
            brightness: Brightness.light,
          ),
          scaffoldBackgroundColor: const Color(0xFFFFFBEB), // amber-50
          useMaterial3: true,
        ),
        home: const MainScreen(),
      ),
    );
  }
}

// ==================== 데이터 모델 ====================

// 책 데이터 모델
class Book {
  final String title;
  final String author;
  final String imageUrl;
  final String famousLine;
  final List<String> tags;
  // TODO: 플랫폼 기능 추후 구현
  // final List<String> availablePlatforms; // 'millie', 'aladin' 등

  Book({
    required this.title,
    required this.author,
    required this.imageUrl,
    required this.famousLine,
    required this.tags,
    // this.availablePlatforms = const [],
  });
}

// 음식 데이터 모델
class Food {
  final String name;
  final String imageUrl;
  final List<String> tags;
  final String? brand; // 브랜드가 있으면 표시, 없으면 null

  Food({
    required this.name,
    required this.imageUrl,
    required this.tags,
    this.brand,
  });
}

// 질문 데이터 모델
class Question {
  final String question;
  final List<String> options;
  final List<String> tags; // 각 옵션에 대응하는 태그

  Question({required this.question, required this.options, required this.tags});
}

// ==================== 상태 관리 Provider ====================
class RecommendationProvider extends ChangeNotifier {
  String? selectedCategory; // 'book' 또는 'food'
  List<String> userTags = []; // 사용자가 선택한 태그들
  final Random _random = Random();

  // 카테고리 선택
  void selectCategory(String category) {
    selectedCategory = category;
    userTags.clear();
    notifyListeners();
  }

  // 사용자 답변 추가
  void addUserTag(String tag) {
    userTags.add(tag);
    notifyListeners();
  }

  // 추천 초기화
  void reset() {
    selectedCategory = null;
    userTags.clear();
    notifyListeners();
  }

  // 책 추천 로직 (태그 매칭 + 랜덤)
  List<Book> getRecommendedBooks() {
    List<Map<String, dynamic>> scored = sampleBooks.map((book) {
      int matchCount = book.tags.where((tag) => userTags.contains(tag)).length;
      return {'book': book, 'score': matchCount};
    }).toList();

    // 점수순 정렬 후 상위권에서 랜덤 선택
    scored.sort((a, b) => (b['score'] as int).compareTo(a['score'] as int));

    List<Book> result = [];
    for (var item in scored.take(5)) {
      // 상위 5개 중에서
      result.add(item['book'] as Book);
    }
    result.shuffle(_random);
    return result.take(3).toList();
  }

  // 음식 추천 로직 (태그 매칭 + 랜덤)
  List<Food> getRecommendedFoods() {
    List<Map<String, dynamic>> scored = sampleFoods.map((food) {
      int matchCount = food.tags.where((tag) => userTags.contains(tag)).length;
      return {'food': food, 'score': matchCount};
    }).toList();

    scored.sort((a, b) => (b['score'] as int).compareTo(a['score'] as int));

    List<Food> result = [];
    for (var item in scored.take(5)) {
      result.add(item['food'] as Food);
    }
    result.shuffle(_random);
    return result.take(3).toList();
  }
}

// ==================== 샘플 데이터 ====================

// 책 10개 샘플 데이터
final List<Book> sampleBooks = [
  Book(
    title: '데미안',
    author: '헤르만 헤세',
    imageUrl: 'https://via.placeholder.com/200x300/FFB6C1/000000?text=데미안',
    famousLine: '새는 알을 깨고 나온다. 알은 세계이다. 태어나려는 자는 하나의 세계를 깨뜨려야 한다.',
    tags: ['성장', '고민', '철학적', '위로'],
    // availablePlatforms: ['millie', 'aladin'],
  ),
  Book(
    title: '아몬드',
    author: '손원평',
    imageUrl: 'https://via.placeholder.com/200x300/87CEEB/000000?text=아몬드',
    famousLine: '괴물은 사람이 만드는 거야. 사람들이 차별하고 무시하고 겁을 주니까 괴물이 되는 거라고.',
    tags: ['감동', '성장', '따뜻함', '위로'],
    // availablePlatforms: ['millie'],
  ),
  Book(
    title: '미드나잇 라이브러리',
    author: '매트 헤이그',
    imageUrl: 'https://via.placeholder.com/200x300/DDA0DD/000000?text=미드나잇',
    famousLine: '후회는 도서관처럼 끝이 없다. 하지만 당신이 원하는 삶은 그 어딘가에 있을 것이다.',
    tags: ['위로', '판타지', '희망', '고민'],
    // availablePlatforms: ['aladin'],
  ),
  Book(
    title: '달러구트 꿈 백화점',
    author: '이미예',
    imageUrl: 'https://via.placeholder.com/200x300/F0E68C/000000?text=달러구트',
    famousLine: '당신이 원하는 꿈을 판매합니다. 행복한 꿈, 슬픈 꿈, 무서운 꿈까지 모두요.',
    tags: ['판타지', '따뜻함', '희망', '힐링'],
    // availablePlatforms: ['millie', 'aladin'],
  ),
  Book(
    title: '코스모스',
    author: '칼 세이건',
    imageUrl: 'https://via.placeholder.com/200x300/4B0082/FFFFFF?text=코스모스',
    famousLine: '우리는 우주를 이해하는 방법이다. 우리는 우주가 스스로를 인식하는 수단이다.',
    tags: ['지식', '철학적', '경이로움', '성장'],
    // availablePlatforms: ['aladin'],
  ),
  Book(
    title: '연금술사',
    author: '파울로 코엘료',
    imageUrl: 'https://via.placeholder.com/200x300/FFD700/000000?text=연금술사',
    famousLine: '네가 무언가를 간절히 원할 때 온 우주는 네가 그것을 이루도록 도와준다. 그것이 너의 운명이기 때문이다.',
    tags: ['모험', '희망', '철학적', '성장'],
    // availablePlatforms: ['millie', 'aladin'],
  ),
  Book(
    title: '82년생 김지영',
    author: '조남주',
    imageUrl: 'https://via.placeholder.com/200x300/FF69B4/000000?text=82년생',
    famousLine: '김지영 씨는 아무 문제가 없었다. 아무 문제없는 말과 행동이었고, 지극히 평범한 삶이었다.',
    tags: ['공감', '현실적', '감동', '위로'],
    // availablePlatforms: ['millie'],
  ),
  Book(
    title: '해리포터와 마법사의 돌',
    author: 'J.K. 롤링',
    imageUrl: 'https://via.placeholder.com/200x300/8B0000/FFFFFF?text=해리포터',
    famousLine: '행복은 찾아낼 수 있는 사람에게는 가장 어두운 곳에서도 발견된다. 단지 불을 켤 생각만 한다면 말이다.',
    tags: ['모험', '판타지', '재미', '희망'],
    // availablePlatforms: ['aladin'],
  ),
  Book(
    title: '어린왕자',
    author: '생텍쥐페리',
    imageUrl: 'https://via.placeholder.com/200x300/87CEEB/000000?text=어린왕자',
    famousLine: '가장 중요한 것은 눈에 보이지 않아. 오직 마음으로만 볼 수 있단다.',
    tags: ['철학적', '따뜻함', '위로', '감동'],
    // availablePlatforms: ['millie', 'aladin'],
  ),
  Book(
    title: '지적 대화를 위한 넓고 얕은 지식',
    author: '채사장',
    imageUrl: 'https://via.placeholder.com/200x300/708090/FFFFFF?text=지적대화',
    famousLine: '세상을 이해하는 가장 쉬운 방법. 역사, 경제, 정치, 사회, 윤리를 하나로 꿰뚫는 통찰.',
    tags: ['지식', '현실적', '성장', '철학적'],
    // availablePlatforms: ['millie'],
  ),
];

// 음식 10개 샘플 데이터
final List<Food> sampleFoods = [
  Food(
    name: '뿌링클',
    imageUrl: 'https://via.placeholder.com/200x200/FFB6C1/000000?text=뿌링클',
    tags: ['매운맛', '치킨', '간식', '달콤함'],
    brand: 'BHC',
  ),
  Food(
    name: '떡볶이',
    imageUrl: 'https://via.placeholder.com/200x200/FF6347/FFFFFF?text=떡볶이',
    tags: ['매운맛', '간식', '따뜻함', '국물'],
    brand: null,
  ),
  Food(
    name: '삼겹살',
    imageUrl: 'https://via.placeholder.com/200x200/8B4513/FFFFFF?text=삼겹살',
    tags: ['고기', '든든함', '저녁', '소주'],
    brand: null,
  ),
  Food(
    name: '와퍼',
    imageUrl: 'https://via.placeholder.com/200x200/D2691E/FFFFFF?text=와퍼',
    tags: ['패스트푸드', '햄버거', '든든함', '간편함'],
    brand: '버거킹',
  ),
  Food(
    name: '미역국',
    imageUrl: 'https://via.placeholder.com/200x200/2E8B57/FFFFFF?text=미역국',
    tags: ['국물', '따뜻함', '건강', '집밥'],
    brand: null,
  ),
  Food(
    name: '치즈돈까스',
    imageUrl: 'https://via.placeholder.com/200x200/FFD700/000000?text=치즈돈까스',
    tags: ['든든함', '튀김', '치즈', '점심'],
    brand: null,
  ),
  Food(
    name: '맥스파이시 상하이버거',
    imageUrl: 'https://via.placeholder.com/200x200/FF4500/FFFFFF?text=맥스파이시',
    tags: ['매운맛', '햄버거', '패스트푸드', '간편함'],
    brand: '맥도날드',
  ),
  Food(
    name: '냉면',
    imageUrl: 'https://via.placeholder.com/200x200/ADD8E6/000000?text=냉면',
    tags: ['시원함', '면', '국물', '여름'],
    brand: null,
  ),
  Food(
    name: '빙그레 바나나맛우유',
    imageUrl: 'https://via.placeholder.com/200x200/FFFFE0/000000?text=바나나우유',
    tags: ['달콤함', '간식', '음료', '추억'],
    brand: '빙그레',
  ),
  Food(
    name: '김치찌개',
    imageUrl: 'https://via.placeholder.com/200x200/DC143C/FFFFFF?text=김치찌개',
    tags: ['매운맛', '국물', '따뜻함', '집밥', '든든함'],
    brand: null,
  ),
];

// 책 추천을 위한 질문들
final List<Question> bookQuestions = [
  Question(
    question: '지금 당신의 기분은?',
    options: ['힘들고 지쳐요', '뭔가 배우고 싶어요', '현실이 답답해요'],
    tags: ['위로', '지식', '판타지'],
  ),
  Question(
    question: '어떤 이야기를 원하시나요?',
    options: ['따뜻한 위로', '깊은 생각', '재미있는 모험'],
    tags: ['따뜻함', '철학적', '모험'],
  ),
  Question(
    question: '읽고 나서 어떤 기분이 들고 싶으세요?',
    options: ['마음이 편안해지고 싶어요', '성장한 기분', '희망이 생기는 기분'],
    tags: ['힐링', '성장', '희망'],
  ),
  Question(
    question: '누구와 공감하고 싶으세요?',
    options: ['나와 비슷한 사람', '완전히 다른 세계', '현실적인 이야기'],
    tags: ['공감', '판타지', '현실적'],
  ),
  Question(
    question: '요즘 가장 고민되는 건?',
    options: ['내 미래', '인간관계', '삶의 의미'],
    tags: ['성장', '감동', '철학적'],
  ),
];

// 음식 추천을 위한 질문들
final List<Question> foodQuestions = [
  Question(
    question: '지금 어떤 맛이 당기시나요?',
    options: ['매콤한 맛', '달콤한 맛', '담백한 맛'],
    tags: ['매운맛', '달콤함', '국물'],
  ),
  Question(
    question: '식사 타이밍은?',
    options: ['제대로 된 식사', '간단한 간식', '야식'],
    tags: ['든든함', '간식', '야식'],
  ),
  Question(
    question: '어떤 분위기를 원하시나요?',
    options: ['빠르고 간편하게', '집에서 편안하게', '밖에서 먹고 싶어요'],
    tags: ['간편함', '집밥', '외식'],
  ),
  Question(
    question: '오늘 컨디션은?',
    options: ['힘들어서 든든한 게 필요해요', '가벼운 게 좋아요', '뭔가 특별한 게 먹고 싶어요'],
    tags: ['든든함', '시원함', '특별함'],
  ),
  Question(
    question: '선호하는 음식 타입은?',
    options: ['국물 있는 음식', '튀김/고기', '면 요리'],
    tags: ['국물', '고기', '면'],
  ),
];

// ==================== 메인 화면 ====================
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<RecommendationProvider>(context);
    final random = Random();

    // 랜덤으로 책 또는 음식 하나 선택
    final isBook = random.nextBool();
    final randomItem = isBook
        ? sampleBooks[random.nextInt(sampleBooks.length)]
        : sampleFoods[random.nextInt(sampleFoods.length)];

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 앱 타이틀
                const Text(
                  '먹다',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFB923C), // orange-400
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  '마음의 양식과 진짜 양식을',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                const SizedBox(height: 48),

                // 랜덤 추천 카드
                Container(
                  width: double.infinity,
                  constraints: const BoxConstraints(maxWidth: 400),
                  padding: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFFFB923C).withOpacity(0.3), // orange-400
                        const Color(0xFF818CF8).withOpacity(0.3), // indigo-400
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const Text(
                        '오늘은 이거 먹는 거 어떠세요?',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 24),

                      // 랜덤 아이템 이미지
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          isBook
                              ? (randomItem as Book).imageUrl
                              : (randomItem as Food).imageUrl,
                          height: 200,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              height: 200,
                              color: Colors.grey[300],
                              child: const Icon(Icons.image, size: 50),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 16),

                      // 아이템 정보
                      Text(
                        isBook
                            ? (randomItem as Book).title
                            : (randomItem as Food).name,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      if (isBook) ...[
                        const SizedBox(height: 8),
                        Text(
                          (randomItem as Book).author,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),

                const SizedBox(height: 32),

                // 다른 거 추천받기 버튼
                ElevatedButton(
                  onPressed: () {
                    provider.reset();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const CategoryScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFB923C), // orange-400
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
                    '다른 거 추천받기',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ==================== 카테고리 선택 화면 ====================
class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<RecommendationProvider>(
      context,
      listen: false,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '무엇을 추천받고 싶으세요?',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 48),

                // 마음의 양식 (책) 버튼
                _CategoryButton(
                  title: '마음의 양식',
                  subtitle: '책',
                  icon: Icons.menu_book,
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF818CF8),
                      Color(0xFFA78BFA),
                    ], // indigo-400 to purple
                  ),
                  onTap: () {
                    provider.selectCategory('book');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const QuestionScreen(isBook: true),
                      ),
                    );
                  },
                ),

                const SizedBox(height: 24),

                // 음식 버튼
                _CategoryButton(
                  title: '진짜 양식',
                  subtitle: '음식',
                  icon: Icons.restaurant,
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFFB923C),
                      Color(0xFFF59E0B),
                    ], // orange-400 to amber
                  ),
                  onTap: () {
                    provider.selectCategory('food');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const QuestionScreen(isBook: false),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// 카테고리 버튼 위젯
class _CategoryButton extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Gradient gradient;
  final VoidCallback onTap;

  const _CategoryButton({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.gradient,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: double.infinity,
        constraints: const BoxConstraints(maxWidth: 400),
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(icon, size: 64, color: Colors.white),
            const SizedBox(width: 24),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, color: Colors.white),
          ],
        ),
      ),
    );
  }
}

// ==================== 질문 화면 ====================
class QuestionScreen extends StatefulWidget {
  final bool isBook;

  const QuestionScreen({super.key, required this.isBook});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentQuestionIndex = 0;

  void _handleAnswer(String tag) {
    final provider = Provider.of<RecommendationProvider>(
      context,
      listen: false,
    );
    provider.addUserTag(tag);

    // 질문 리스트
    final questions = widget.isBook ? bookQuestions : foodQuestions;

    // 다음 질문으로 또는 결과 화면으로
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      // 모든 질문 완료 -> 결과 화면으로
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => ResultScreen(isBook: widget.isBook)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final questions = widget.isBook ? bookQuestions : foodQuestions;
    final currentQuestion = questions[currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 진행 표시
              Row(
                children: List.generate(
                  questions.length,
                  (index) => Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      height: 4,
                      decoration: BoxDecoration(
                        color: index <= currentQuestionIndex
                            ? const Color(0xFFFB923C)
                            : Colors.grey[300],
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 32),

              // 질문 번호
              Text(
                '질문 ${currentQuestionIndex + 1}/${questions.length}',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 12),

              // 질문 텍스트
              Text(
                currentQuestion.question,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  height: 1.3,
                ),
              ),

              const SizedBox(height: 48),

              // 선택지 버튼들
              Expanded(
                child: ListView.builder(
                  itemCount: currentQuestion.options.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: _OptionButton(
                        text: currentQuestion.options[index],
                        onTap: () => _handleAnswer(currentQuestion.tags[index]),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
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
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: const Color(0xFFFB923C).withOpacity(0.3),
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
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

// ==================== 결과 화면 ====================
class ResultScreen extends StatelessWidget {
  final bool isBook;

  const ResultScreen({super.key, required this.isBook});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<RecommendationProvider>(context);

    // 추천 결과 가져오기
    final recommendedBooks = isBook ? provider.getRecommendedBooks() : <Book>[];
    final recommendedFoods = !isBook
        ? provider.getRecommendedFoods()
        : <Food>[];

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
                    '당신을 위한 추천',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '${provider.userTags.length}개의 답변을 바탕으로 골랐어요',
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 16),
                  // 스와이프 안내
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Icon(Icons.swipe, size: 20, color: Colors.grey[600]),
                  //     const SizedBox(width: 8),
                  //     Text(
                  //       '좌우로 스와이프하세요',
                  //       style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // PageView로 카드 표시
            Expanded(
              child: Center(
                child: PageView.builder(
                  itemCount: isBook
                      ? recommendedBooks.length
                      : recommendedFoods.length,
                  padEnds: true,
                  controller: PageController(viewportFraction: 0.85),
                  itemBuilder: (context, index) {
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: isBook
                            ? _BookResultCard(book: recommendedBooks[index])
                            : _FoodResultCard(food: recommendedFoods[index]),
                      ),
                    );
                  },
                ),
              ),
            ),

            const SizedBox(height: 24),

            // 처음으로 버튼
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: ElevatedButton(
                onPressed: () {
                  provider.reset();
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

  // TODO: 플랫폼 기능 추후 구현
  // // 플랫폼 텍스트 생성 헬퍼 함수
  // String _getPlatformText(List<String> platforms) {
  //   if (platforms.isEmpty) return '';
  //
  //   List<String> platformNames = [];
  //   if (platforms.contains('millie')) platformNames.add('밀리의 서재');
  //   if (platforms.contains('aladin')) platformNames.add('알라딘');
  //
  //   if (platformNames.isEmpty) return '';
  //
  //   return '${platformNames.join('/')}에서 읽을 수 있어요!';
  // }

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
          // 책 이미지 - 더 크게!
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

          // TODO: 플랫폼 표시 기능 추후 구현
          // const SizedBox(height: 8),
          //
          // // 플랫폼 표시
          // if (book.availablePlatforms.isNotEmpty)
          //   Container(
          //     padding: const EdgeInsets.symmetric(
          //       horizontal: 10,
          //       vertical: 4,
          //     ),
          //     decoration: BoxDecoration(
          //       color: const Color(0xFF818CF8).withOpacity(0.2),
          //       borderRadius: BorderRadius.circular(12),
          //     ),
          //     child: Text(
          //       _getPlatformText(book.availablePlatforms),
          //       style: const TextStyle(
          //         fontSize: 11,
          //         fontWeight: FontWeight.w600,
          //         color: Color(0xFF818CF8),
          //       ),
          //     ),
          //   ),
        ],
      ),
    );
  }
}

// 음식 결과 카드
class _FoodResultCard extends StatelessWidget {
  final Food food;

  const _FoodResultCard({required this.food});

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
          // 음식 이미지
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              food.imageUrl,
              width: 160,
              height: 240,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 160,
                  height: 240,
                  color: Colors.grey[300],
                  child: const Icon(Icons.restaurant, size: 60),
                );
              },
            ),
          ),

          const SizedBox(height: 20),

          // 음식 이름
          Text(
            food.name,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 8),

          // 브랜드 (없으면 빈 공간 유지)
          Text(
            food.brand != null ? '판매: ${food.brand}' : '',
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 16),

          // 음식 태그
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
                  '"${food.tags.join(', ')}"',
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
