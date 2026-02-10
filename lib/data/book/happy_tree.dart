// 즐거움 감정 - 책 추천 질문 트리
import '../../question_tree.dart';

final Map<String, QuestionNode> bookHappyTree = {
  // ==================== depth 2: 상황/맥락 ====================
  'book_happy_2_1': QuestionNode(
    question: '이 즐거움이 가장 크게 느껴지는 순간은 언제인가요?',
    options: [
      Option(text: '좋아하는 일을 할 때', nextNodeKey: 'book_happy_3_1'),
      Option(text: '마음 맞는 사람들과 함께 있을 때', nextNodeKey: 'book_happy_3_2'),
      Option(text: '작은 행복을 발견했을 때', nextNodeKey: 'book_happy_3_3'),
      Option(text: '뭔가를 이뤘을 때', nextNodeKey: 'book_happy_3_4'),
      Option(text: '특별한 이유 없이 그냥', nextNodeKey: 'book_happy_3_5'),
    ],
  ),

  // ==================== depth 3: 내적 독백 ====================
  'book_happy_3_1': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"이걸 할 때가 제일 좋아"', nextNodeKey: 'book_happy_4_1'),
      Option(text: '"시간 가는 줄 모르겠어"', nextNodeKey: 'book_happy_4_2'),
      Option(text: '"나답다는 느낌이야"', nextNodeKey: 'book_happy_4_3'),
      Option(text: '"이런 순간이 행복이구나"', nextNodeKey: 'book_happy_4_4'),
      Option(text: '"계속 이러고 싶어"', nextNodeKey: 'book_happy_4_5'),
    ],
  ),
  'book_happy_3_2': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"이 사람들과 있으니 좋아"', nextNodeKey: 'book_happy_4_1'),
      Option(text: '"함께 웃을 수 있어서 행복해"', nextNodeKey: 'book_happy_4_2'),
      Option(text: '"이렇게 편안할 수가"', nextNodeKey: 'book_happy_4_3'),
      Option(text: '"혼자가 아니라는 게 좋아"', nextNodeKey: 'book_happy_4_4'),
      Option(text: '"이 순간을 기억하고 싶어"', nextNodeKey: 'book_happy_4_5'),
    ],
  ),
  'book_happy_3_3': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"이런 작은 것들이 소중해"', nextNodeKey: 'book_happy_4_1'),
      Option(text: '"평범한 순간이 특별해"', nextNodeKey: 'book_happy_4_2'),
      Option(text: '"일상이 반짝여"', nextNodeKey: 'book_happy_4_3'),
      Option(text: '"이렇게 예쁜 걸 발견했어"', nextNodeKey: 'book_happy_4_4'),
      Option(text: '"세상이 다르게 보여"', nextNodeKey: 'book_happy_4_5'),
    ],
  ),
  'book_happy_3_4': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"해냈어!"', nextNodeKey: 'book_happy_4_1'),
      Option(text: '"이 기분 정말 좋아"', nextNodeKey: 'book_happy_4_2'),
      Option(text: '"나 자랑스러워"', nextNodeKey: 'book_happy_4_3'),
      Option(text: '"보람있어"', nextNodeKey: 'book_happy_4_4'),
      Option(text: '"더 해보고 싶어"', nextNodeKey: 'book_happy_4_5'),
    ],
  ),
  'book_happy_3_5': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"그냥 기분이 좋아"', nextNodeKey: 'book_happy_4_1'),
      Option(text: '"살아있다는 게 좋아"', nextNodeKey: 'book_happy_4_2'),
      Option(text: '"모든 게 다 괜찮아"', nextNodeKey: 'book_happy_4_3'),
      Option(text: '"세상이 아름다워"', nextNodeKey: 'book_happy_4_4'),
      Option(text: '"이 느낌을 나누고 싶어"', nextNodeKey: 'book_happy_4_5'),
    ],
  ),

  // ==================== depth 4: 감정 결 세분화 ====================
  'book_happy_4_1': QuestionNode(
    question: '이 즐거움의 느낌은 어떤가요?',
    options: [
      Option(text: '충만하고 포근한', nextNodeKey: 'book_happy_5_1'),
      Option(text: '가볍고 경쾌한', nextNodeKey: 'book_happy_5_2'),
      Option(text: '따뜻하고 부드러운', nextNodeKey: 'book_happy_5_3'),
      Option(text: '활기차고 생동감 있는', nextNodeKey: 'book_happy_5_4'),
      Option(text: '고요하고 평화로운', nextNodeKey: 'book_happy_5_5'),
    ],
  ),
  'book_happy_4_2': QuestionNode(
    question: '즐거움의 색깔은 어떤가요?',
    options: [
      Option(text: '따뜻한 금빛', nextNodeKey: 'book_happy_5_1'),
      Option(text: '밝은 노란색', nextNodeKey: 'book_happy_5_2'),
      Option(text: '부드러운 주황색', nextNodeKey: 'book_happy_5_3'),
      Option(text: '생기 넘치는 초록색', nextNodeKey: 'book_happy_5_4'),
      Option(text: '맑은 하늘색', nextNodeKey: 'book_happy_5_5'),
    ],
  ),
  'book_happy_4_3': QuestionNode(
    question: '이 즐거움이 당신의 어디에 있나요?',
    options: [
      Option(text: '가슴 가득', nextNodeKey: 'book_happy_5_1'),
      Option(text: '얼굴 가득 미소로', nextNodeKey: 'book_happy_5_2'),
      Option(text: '온몸에 퍼져서', nextNodeKey: 'book_happy_5_3'),
      Option(text: '발걸음에 힘을 주며', nextNodeKey: 'book_happy_5_4'),
      Option(text: '나를 감싸며', nextNodeKey: 'book_happy_5_5'),
    ],
  ),
  'book_happy_4_4': QuestionNode(
    question: '즐거움의 온도는 어떤가요?',
    options: [
      Option(text: '따뜻하게 감싸는', nextNodeKey: 'book_happy_5_1'),
      Option(text: '상쾌하게 시원한', nextNodeKey: 'book_happy_5_2'),
      Option(text: '포근하게 데우는', nextNodeKey: 'book_happy_5_3'),
      Option(text: '활기차게 뜨거운', nextNodeKey: 'book_happy_5_4'),
      Option(text: '편안하게 적당한', nextNodeKey: 'book_happy_5_5'),
    ],
  ),
  'book_happy_4_5': QuestionNode(
    question: '즐거움이 당신에게 어떤 영향을 주고 있나요?',
    options: [
      Option(text: '마음이 가득 차요', nextNodeKey: 'book_happy_5_1'),
      Option(text: '자꾸 웃게 돼요', nextNodeKey: 'book_happy_5_2'),
      Option(text: '다정해져요', nextNodeKey: 'book_happy_5_3'),
      Option(text: '에너지가 넘쳐요', nextNodeKey: 'book_happy_5_4'),
      Option(text: '평온해져요', nextNodeKey: 'book_happy_5_5'),
    ],
  ),

  // ==================== depth 5: 욕구·부담 정도 ====================
  'book_happy_5_1': QuestionNode(
    question: '지금 당신은 무엇을 원하고 있나요?',
    options: [
      Option(text: '이 즐거움을 더 깊이 느끼고 싶어요', nextNodeKey: 'book_happy_6_1'),
      Option(text: '이 기분을 나누고 싶어요', nextNodeKey: 'book_happy_6_2'),
      Option(text: '이 순간을 기억하고 싶어요', nextNodeKey: 'book_happy_6_3'),
      Option(text: '이 즐거움을 계속 유지하고 싶어요', nextNodeKey: 'book_happy_6_4'),
      Option(text: '그냥 이대로 느끼고 싶어요', nextNodeKey: 'book_happy_6_5'),
    ],
  ),
  'book_happy_5_2': QuestionNode(
    question: '지금 어떤 것이 필요한가요?',
    options: [
      Option(text: '즐거움을 더 풍성하게 할 무언가', nextNodeKey: 'book_happy_6_1'),
      Option(text: '같은 기쁨을 나눌 이야기', nextNodeKey: 'book_happy_6_2'),
      Option(text: '이 순간을 담을 방법', nextNodeKey: 'book_happy_6_3'),
      Option(text: '행복을 지속하는 법', nextNodeKey: 'book_happy_6_4'),
      Option(text: '아무것도 필요 없어요', nextNodeKey: 'book_happy_6_5'),
    ],
  ),
  'book_happy_5_3': QuestionNode(
    question: '어떤 책이 지금의 기분과 어울릴까요?',
    options: [
      Option(text: '즐거움을 더 깊게 해줄 책', nextNodeKey: 'book_happy_6_1'),
      Option(text: '함께 웃을 수 있는 이야기', nextNodeKey: 'book_happy_6_2'),
      Option(text: '아름다운 순간을 담은 책', nextNodeKey: 'book_happy_6_3'),
      Option(text: '행복을 유지하는 지혜를 담은 책', nextNodeKey: 'book_happy_6_4'),
      Option(text: '가볍게 함께할 책', nextNodeKey: 'book_happy_6_5'),
    ],
  ),
  'book_happy_5_4': QuestionNode(
    question: '이 즐거움과 함께 무엇을 하고 싶나요?',
    options: [
      Option(text: '더 의미있는 경험을 하고 싶어요', nextNodeKey: 'book_happy_6_1'),
      Option(text: '다른 사람들과 공유하고 싶어요', nextNodeKey: 'book_happy_6_2'),
      Option(text: '특별하게 기록하고 싶어요', nextNodeKey: 'book_happy_6_3'),
      Option(text: '오래 간직하고 싶어요', nextNodeKey: 'book_happy_6_4'),
      Option(text: '그냥 흘러가게 두고 싶어요', nextNodeKey: 'book_happy_6_5'),
    ],
  ),
  'book_happy_5_5': QuestionNode(
    question: '지금의 즐거움을 어떻게 하고 싶으신가요?',
    options: [
      Option(text: '더 풍부하게 만들고 싶어요', nextNodeKey: 'book_happy_6_1'),
      Option(text: '함께 나누고 싶어요', nextNodeKey: 'book_happy_6_2'),
      Option(text: '소중히 담아두고 싶어요', nextNodeKey: 'book_happy_6_3'),
      Option(text: '계속 이어가고 싶어요', nextNodeKey: 'book_happy_6_4'),
      Option(text: '순수하게 즐기고 싶어요', nextNodeKey: 'book_happy_6_5'),
    ],
  ),

  // ==================== depth 6: 요약·공감 확인 ====================
  'book_happy_6_1': QuestionNode(
    question:
        '지금 당신은, 즐거움을 더 깊고 풍성하게 느끼고 싶어하는 상태이군요. 이 기쁨을 더욱 의미있고 충만하게 만들고 싶은 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_happy_7_1'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_happy_6_2'),
      Option(text: '비슷하지만 나누고도 싶어요', nextNodeKey: 'book_happy_6_2'),
      Option(text: '더 가볍게 즐기고 싶어요', nextNodeKey: 'book_happy_6_5'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_happy_6_3'),
    ],
  ),
  'book_happy_6_2': QuestionNode(
    question:
        '지금 당신은, 즐거움을 누군가와 나누고 싶어하는 상태이군요. 이 기쁨을 다른 사람들과 함께 느끼고 싶은 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_happy_7_2'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_happy_6_3'),
      Option(text: '비슷하지만 더 깊이 느끼고도 싶어요', nextNodeKey: 'book_happy_6_1'),
      Option(text: '더 가볍게 즐기고 싶어요', nextNodeKey: 'book_happy_6_5'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_happy_6_4'),
    ],
  ),
  'book_happy_6_3': QuestionNode(
    question:
        '지금 당신은, 즐거움을 아름답게 기록하고 싶어하는 상태이군요. 이 특별한 순간을 오래도록 기억하고 싶은 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_happy_7_3'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_happy_6_4'),
      Option(text: '비슷하지만 나누고도 싶어요', nextNodeKey: 'book_happy_6_2'),
      Option(text: '더 깊이 느끼고도 싶어요', nextNodeKey: 'book_happy_6_1'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_happy_6_5'),
    ],
  ),
  'book_happy_6_4': QuestionNode(
    question: '지금 당신은, 즐거움을 오래 유지하고 싶어하는 상태이군요. 이 행복한 기분이 계속되길 바라는 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_happy_7_4'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_happy_6_5'),
      Option(text: '비슷하지만 기록하고도 싶어요', nextNodeKey: 'book_happy_6_3'),
      Option(text: '나누고도 싶어요', nextNodeKey: 'book_happy_6_2'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_happy_6_1'),
    ],
  ),
  'book_happy_6_5': QuestionNode(
    question: '지금 당신은, 즐거움을 순수하게 즐기고 있는 상태이군요. 아무 부담 없이 이 순간 그 자체를 만끽하고 있습니다.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_happy_7_5'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_happy_6_1'),
      Option(text: '비슷하지만 유지하고도 싶어요', nextNodeKey: 'book_happy_6_4'),
      Option(text: '나누고도 싶어요', nextNodeKey: 'book_happy_6_2'),
      Option(text: '처음부터 다시 시작할래요', nextNodeKey: 'book_happy_2_1'),
    ],
  ),

  // ==================== depth 7: 결과 (bookTags 포함) ====================
  'book_happy_7_1': QuestionNode(
    question:
        '당신은 지금, 즐거움을 더 깊고 풍성하게 느끼고 싶어하는 상태입니다. 이 기쁨을 더욱 의미있는 경험으로 만들고 싶어합니다.',
    options: [
      Option(
        text: '행복의 본질을 탐구하는 책',
        nextNodeKey: 'end',
        bookTags: ['행복', '본질', '즐거움', '철학적', '깊이있는'],
      ),
      Option(
        text: '코미디 소설',
        nextNodeKey: 'end',
        bookTags: ['코미디', '소설', '즐거움', '풍자', '재미'],
      ),
      Option(
        text: '삶의 충만함을 담은 책',
        nextNodeKey: 'end',
        bookTags: ['충만', '삶', '즐거움', '긍정적', '풍성한'],
      ),
      Option(
        text: '놀이와 게임의 철학',
        nextNodeKey: 'end',
        bookTags: ['놀이', '게임', '즐거움', '철학', '인류학'],
      ),
      Option(
        text: '축제와 파티 문화서',
        nextNodeKey: 'end',
        bookTags: ['축제', '파티', '즐거움', '문화', '흥겨움'],
      ),
    ],
  ),
  'book_happy_7_2': QuestionNode(
    question:
        '당신은 지금, 즐거움을 누군가와 나누고 싶어하는 상태입니다. 이 기쁨을 다른 사람들과 함께 느끼고 공유하고 싶어합니다.',
    options: [
      Option(
        text: '함께 웃는 이야기들',
        nextNodeKey: 'end',
        bookTags: ['함께', '웃음', '즐거움', '유머', '경쾌한'],
      ),
      Option(
        text: '관계의 기쁨을 다룬 에세이',
        nextNodeKey: 'end',
        bookTags: ['관계', '기쁨', '즐거움', '에세이', '따뜻한'],
      ),
      Option(
        text: '우정과 사랑의 이야기',
        nextNodeKey: 'end',
        bookTags: ['우정', '사랑', '즐거움', '감동', '따스한'],
      ),
      Option(
        text: '함께 웃는 가족 이야기',
        nextNodeKey: 'end',
        bookTags: ['가족', '웃음', '즐거움', '일상', '유쾌한'],
      ),
      Option(
        text: '나눔의 기쁨을 담은 책',
        nextNodeKey: 'end',
        bookTags: ['나눔', '기쁨', '즐거움', '의미', '따뜻한'],
      ),
    ],
  ),
  'book_happy_7_3': QuestionNode(
    question: '당신은 지금, 즐거움을 아름답게 기록하고 싶어하는 상태입니다. 이 특별한 순간을 오래도록 간직하고 싶어합니다.',
    options: [
      Option(
        text: '아름다운 순간들의 기록',
        nextNodeKey: 'end',
        bookTags: ['순간', '기록', '즐거움', '아름다움', '감성'],
      ),
      Option(
        text: '일상의 기쁨을 담은 에세이',
        nextNodeKey: 'end',
        bookTags: ['일상', '기쁨', '즐거움', '에세이', '소소함'],
      ),
      Option(
        text: '행복한 날들의 이야기',
        nextNodeKey: 'end',
        bookTags: ['행복', '이야기', '즐거움', '따뜻함', '서정적'],
      ),
      Option(
        text: '특별한 순간을 포착하는 책',
        nextNodeKey: 'end',
        bookTags: ['순간', '포착', '즐거움', '감각적', '시적'],
      ),
      Option(
        text: '그림과 글로 담은 기쁨',
        nextNodeKey: 'end',
        bookTags: ['그림', '기쁨', '즐거움', '시각적', '예술적'],
      ),
    ],
  ),
  'book_happy_7_4': QuestionNode(
    question: '당신은 지금, 즐거움을 오래 유지하고 싶어하는 상태입니다. 이 행복한 기분이 계속되길 바라고 있습니다.',
    options: [
      Option(
        text: '행복을 지속하는 법',
        nextNodeKey: 'end',
        bookTags: ['지속', '행복', '즐거움', '실용적', '지혜'],
      ),
      Option(
        text: '일상의 기쁨을 가꾸는 책',
        nextNodeKey: 'end',
        bookTags: ['일상', '가꾸기', '즐거움', '마음', '따뜻한'],
      ),
      Option(
        text: '긍정의 힘에 대한 에세이',
        nextNodeKey: 'end',
        bookTags: ['긍정', '에너지', '즐거움', '에세이', '희망'],
      ),
      Option(
        text: '즐거운 일상 만들기',
        nextNodeKey: 'end',
        bookTags: ['일상디자인', '라이프스타일', '즐거움', '실천', '루틴'],
      ),
      Option(
        text: '행복 습관 77가지',
        nextNodeKey: 'end',
        bookTags: ['행복습관', '실천법', '즐거움', '자기관리', '긍정'],
      ),
    ],
  ),
  'book_happy_7_5': QuestionNode(
    question: '당신은 지금, 즐거움을 순수하게 즐기고 있는 상태입니다. 아무 부담 없이 이 순간을 만끽하고 있습니다.',
    options: [
      Option(
        text: '개그만화',
        nextNodeKey: 'end',
        bookTags: ['개그만화', '만화', '즐거움', '웃긴', '풍자'],
      ),
      Option(
        text: '유쾌한 웹툰 모음',
        nextNodeKey: 'end',
        bookTags: ['웹툰', '유머', '즐거움', '일상', '공감'],
      ),
      Option(
        text: '코미디 드라마 원작',
        nextNodeKey: 'end',
        bookTags: ['코미디드라마', '대본', '즐거움', '재미', '시트콤'],
      ),
      Option(
        text: '짧은 유머 모음집',
        nextNodeKey: 'end',
        bookTags: ['짧은유머', '모음집', '즐거움', '부담없는', '웃긴'],
      ),
      Option(
        text: '행복이 가득한 이야기',
        nextNodeKey: 'end',
        bookTags: ['행복', '가득', '즐거움', '밝은', '포근한'],
      ),
    ],
  ),
};
