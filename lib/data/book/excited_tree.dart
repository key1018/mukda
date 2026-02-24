// 설렘 감정 - 책 추천 질문 트리
import '../../question_tree.dart';

final Map<String, QuestionNode> bookExcitedTree = {
  // ==================== depth 2: 상황/맥락 ====================
  'book_excited_2_1': QuestionNode(
    question: '이 설렘이 가장 크게 느껴지는 순간은 언제인가요?',
    options: [
      Option(text: '새로운 시작을 앞두고 있을 때', nextNodeKey: 'book_excited_3_1'),
      Option(text: '기대되는 일을 생각할 때', nextNodeKey: 'book_excited_3_2'),
      Option(text: '가능성이 열릴 때', nextNodeKey: 'book_excited_3_3'),
      Option(text: '마음이 두근거릴 때', nextNodeKey: 'book_excited_3_4'),
      Option(text: '특별한 이유 없이 계속', nextNodeKey: 'book_excited_3_5'),
    ],
  ),

  // ==================== depth 3: 내적 독백 ====================
  'book_excited_3_1': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"드디어 시작이구나"', nextNodeKey: 'book_excited_4_1'),
      Option(text: '"어떤 일이 펼쳐질까"', nextNodeKey: 'book_excited_4_2'),
      Option(text: '"설레는 마음을 어쩌지"', nextNodeKey: 'book_excited_4_3'),
      Option(text: '"새로운 나를 만날 것 같아"', nextNodeKey: 'book_excited_4_4'),
      Option(text: '"이 순간이 좋아"', nextNodeKey: 'book_excited_4_5'),
    ],
  ),
  'book_excited_3_2': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"생각만 해도 두근거려"', nextNodeKey: 'book_excited_4_1'),
      Option(text: '"정말 기대돼"', nextNodeKey: 'book_excited_4_2'),
      Option(text: '"빨리 그때가 왔으면"', nextNodeKey: 'book_excited_4_3'),
      Option(text: '"상상만으로도 즐거워"', nextNodeKey: 'book_excited_4_4'),
      Option(text: '"이 느낌을 간직하고 싶어"', nextNodeKey: 'book_excited_4_5'),
    ],
  ),
  'book_excited_3_3': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"무한한 가능성이 보여"', nextNodeKey: 'book_excited_4_1'),
      Option(text: '"뭐든 할 수 있을 것 같아"', nextNodeKey: 'book_excited_4_2'),
      Option(text: '"세상이 열리는 느낌이야"', nextNodeKey: 'book_excited_4_3'),
      Option(text: '"이렇게 많은 길이 있었구나"', nextNodeKey: 'book_excited_4_4'),
      Option(text: '"새로운 세계가 펼쳐져"', nextNodeKey: 'book_excited_4_5'),
    ],
  ),
  'book_excited_3_4': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"심장이 빨리 뛰어"', nextNodeKey: 'book_excited_4_1'),
      Option(text: '"이 떨림이 좋아"', nextNodeKey: 'book_excited_4_2'),
      Option(text: '"살아있다는 느낌이야"', nextNodeKey: 'book_excited_4_3'),
      Option(text: '"온몸이 깨어나는 것 같아"', nextNodeKey: 'book_excited_4_4'),
      Option(text: '"이 순간을 기억하고 싶어"', nextNodeKey: 'book_excited_4_5'),
    ],
  ),
  'book_excited_3_5': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"매일이 설레"', nextNodeKey: 'book_excited_4_1'),
      Option(text: '"삶이 반짝거려"', nextNodeKey: 'book_excited_4_2'),
      Option(text: '"뭔가 좋은 일이 생길 것 같아"', nextNodeKey: 'book_excited_4_3'),
      Option(text: '"세상이 아름다워 보여"', nextNodeKey: 'book_excited_4_4'),
      Option(text: '"이 기분을 나누고 싶어"', nextNodeKey: 'book_excited_4_5'),
    ],
  ),

  // ==================== depth 4: 감정 결 세분화 ====================
  'book_excited_4_1': QuestionNode(
    question: '이 설렘의 색깔은 어떤가요?',
    options: [
      Option(text: '밝게 빛나는 노란색', nextNodeKey: 'book_excited_5_1'),
      Option(text: '생기 넘치는 주황색', nextNodeKey: 'book_excited_5_2'),
      Option(text: '따뜻한 분홍색', nextNodeKey: 'book_excited_5_3'),
      Option(text: '맑은 하늘색', nextNodeKey: 'book_excited_5_4'),
      Option(text: '반짝이는 무지개빛', nextNodeKey: 'book_excited_5_5'),
    ],
  ),
  'book_excited_4_2': QuestionNode(
    question: '이 설렘은 어떤 모양에 가까운가요?',
    options: [
      Option(text: '위로 솟아오르는', nextNodeKey: 'book_excited_5_1'),
      Option(text: '부드럽게 퍼져나가는', nextNodeKey: 'book_excited_5_2'),
      Option(text: '반짝이며 흩날리는', nextNodeKey: 'book_excited_5_3'),
      Option(text: '물결처럼 일렁이는', nextNodeKey: 'book_excited_5_4'),
      Option(text: '온몸을 감싸는', nextNodeKey: 'book_excited_5_5'),
    ],
  ),
  'book_excited_4_3': QuestionNode(
    question: '설렘이 당신의 어디에 머물고 있나요?',
    options: [
      Option(text: '가슴 한가운데', nextNodeKey: 'book_excited_5_1'),
      Option(text: '온몸 구석구석', nextNodeKey: 'book_excited_5_2'),
      Option(text: '손끝과 발끝까지', nextNodeKey: 'book_excited_5_3'),
      Option(text: '머리부터 발끝까지', nextNodeKey: 'book_excited_5_4'),
      Option(text: '나를 둘러싼 공기까지', nextNodeKey: 'book_excited_5_5'),
    ],
  ),
  'book_excited_4_4': QuestionNode(
    question: '이 설렘의 온도는 어떤가요?',
    options: [
      Option(text: '따뜻하게 데워지는', nextNodeKey: 'book_excited_5_1'),
      Option(text: '포근하게 감싸는', nextNodeKey: 'book_excited_5_2'),
      Option(text: '상쾌하게 시원한', nextNodeKey: 'book_excited_5_3'),
      Option(text: '살짝 뜨거운', nextNodeKey: 'book_excited_5_4'),
      Option(text: '온도를 느낄 수 없을 만큼 좋은', nextNodeKey: 'book_excited_5_5'),
    ],
  ),
  'book_excited_4_5': QuestionNode(
    question: '설렘이 당신에게 어떤 영향을 주고 있나요?',
    options: [
      Option(text: '더 많이 움직이게 해요', nextNodeKey: 'book_excited_5_1'),
      Option(text: '미소 짓게 만들어요', nextNodeKey: 'book_excited_5_2'),
      Option(text: '잠이 안 와요', nextNodeKey: 'book_excited_5_3'),
      Option(text: '모든 게 새롭게 보여요', nextNodeKey: 'book_excited_5_4'),
      Option(text: '누군가와 나누고 싶어져요', nextNodeKey: 'book_excited_5_5'),
    ],
  ),

  // ==================== depth 5: 욕구·부담 정도 ====================
  'book_excited_5_1': QuestionNode(
    question: '지금 당신은 무엇을 원하고 있나요?',
    options: [
      Option(text: '이 설렘을 더 깊이 느끼고 싶어요', nextNodeKey: 'book_excited_6_1'),
      Option(text: '설렘을 나누고 싶어요', nextNodeKey: 'book_excited_6_2'),
      Option(text: '이 순간을 기록하고 싶어요', nextNodeKey: 'book_excited_6_3'),
      Option(text: '설렘을 잘 간직하고 싶어요', nextNodeKey: 'book_excited_6_4'),
      Option(text: '그냥 이대로 느끼고 싶어요', nextNodeKey: 'book_excited_6_5'),
    ],
  ),
  'book_excited_5_2': QuestionNode(
    question: '지금 어떤 것이 필요한가요?',
    options: [
      Option(text: '설렘을 더욱 키워줄 무언가', nextNodeKey: 'book_excited_6_1'),
      Option(text: '이 감정을 함께할 이야기', nextNodeKey: 'book_excited_6_2'),
      Option(text: '설렘을 표현하는 방법', nextNodeKey: 'book_excited_6_3'),
      Option(text: '이 기분을 오래 유지하는 법', nextNodeKey: 'book_excited_6_4'),
      Option(text: '아무것도 필요 없어요', nextNodeKey: 'book_excited_6_5'),
    ],
  ),
  'book_excited_5_3': QuestionNode(
    question: '어떤 책이 지금의 설렘과 어울릴까요?',
    options: [
      Option(text: '설렘을 더 풍성하게 해줄 책', nextNodeKey: 'book_excited_6_1'),
      Option(text: '같은 설렘을 담은 이야기', nextNodeKey: 'book_excited_6_2'),
      Option(text: '아름다운 순간을 기록한 책', nextNodeKey: 'book_excited_6_3'),
      Option(text: '설렘을 간직하는 법을 담은 책', nextNodeKey: 'book_excited_6_4'),
      Option(text: '가볍게 함께할 책', nextNodeKey: 'book_excited_6_5'),
    ],
  ),
  'book_excited_5_4': QuestionNode(
    question: '이 설렘을 어떻게 하고 싶으신가요?',
    options: [
      Option(text: '더 크게 키우고 싶어요', nextNodeKey: 'book_excited_6_1'),
      Option(text: '누군가와 공유하고 싶어요', nextNodeKey: 'book_excited_6_2'),
      Option(text: '아름답게 표현하고 싶어요', nextNodeKey: 'book_excited_6_3'),
      Option(text: '소중히 간직하고 싶어요', nextNodeKey: 'book_excited_6_4'),
      Option(text: '그냥 흘러가는 대로 두고 싶어요', nextNodeKey: 'book_excited_6_5'),
    ],
  ),
  'book_excited_5_5': QuestionNode(
    question: '지금의 설렘과 함께 무엇을 하고 싶나요?',
    options: [
      Option(text: '더 깊은 감동을 경험하고 싶어요', nextNodeKey: 'book_excited_6_1'),
      Option(text: '비슷한 마음을 가진 이들과 만나고 싶어요', nextNodeKey: 'book_excited_6_2'),
      Option(text: '이 순간을 기억하고 싶어요', nextNodeKey: 'book_excited_6_3'),
      Option(text: '오래도록 간직하고 싶어요', nextNodeKey: 'book_excited_6_4'),
      Option(text: '그저 이 순간을 즐기고 싶어요', nextNodeKey: 'book_excited_6_5'),
    ],
  ),

  // ==================== depth 6: 요약·공감 확인 ====================
  'book_excited_6_1': QuestionNode(
    question:
        '지금 당신은, 설레는 마음을 더 깊고 풍성하게 느끼고 싶어하는 상태이군요. 이 감정을 더욱 확장하고 탐험하고 싶은 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_excited_7_1'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_excited_6_2'),
      Option(text: '비슷하지만 나누고도 싶어요', nextNodeKey: 'book_excited_6_2'),
      Option(text: '더 가볍게 느끼고 싶어요', nextNodeKey: 'book_excited_6_5'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_excited_6_3'),
    ],
  ),
  'book_excited_6_2': QuestionNode(
    question:
        '지금 당신은, 설레는 마음을 누군가와 나누고 싶어하는 상태이군요. 같은 감정을 느끼는 사람들과 연결되고 싶은 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_excited_7_2'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_excited_6_3'),
      Option(text: '비슷하지만 더 깊이 느끼고도 싶어요', nextNodeKey: 'book_excited_6_1'),
      Option(text: '더 가볍게 즐기고 싶어요', nextNodeKey: 'book_excited_6_5'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_excited_6_4'),
    ],
  ),
  'book_excited_6_3': QuestionNode(
    question:
        '지금 당신은, 설레는 마음을 아름답게 표현하거나 기록하고 싶어하는 상태이군요. 이 순간을 오래 기억하고 싶은 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_excited_7_3'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_excited_6_4'),
      Option(text: '비슷하지만 나누고도 싶어요', nextNodeKey: 'book_excited_6_2'),
      Option(text: '더 깊이 느끼고도 싶어요', nextNodeKey: 'book_excited_6_1'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_excited_6_5'),
    ],
  ),
  'book_excited_6_4': QuestionNode(
    question: '지금 당신은, 설레는 마음을 소중히 간직하고 싶어하는 상태이군요. 이 감정을 오래도록 유지하고 싶은 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_excited_7_4'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_excited_6_5'),
      Option(text: '비슷하지만 기록하고도 싶어요', nextNodeKey: 'book_excited_6_3'),
      Option(text: '나누고도 싶어요', nextNodeKey: 'book_excited_6_2'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_excited_6_1'),
    ],
  ),
  'book_excited_6_5': QuestionNode(
    question:
        '지금 당신은, 설렘 그 자체를 순수하게 느끼고 싶어하는 상태이군요. 아무 부담 없이 이 순간을 즐기고 싶은 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_excited_7_5'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_excited_6_1'),
      Option(text: '비슷하지만 간직하고도 싶어요', nextNodeKey: 'book_excited_6_4'),
      Option(text: '나누고도 싶어요', nextNodeKey: 'book_excited_6_2'),
      Option(text: '처음부터 다시 시작할래요', nextNodeKey: 'book_excited_2_1'),
    ],
  ),

  // ==================== depth 7: 결과 (bookTags 포함) ====================
  'book_excited_7_1': QuestionNode(
    question:
        '당신은 지금, 설렘을 더 깊고 풍성하게 느끼고 싶어하는 상태입니다. 이 감정을 확장하고 더 아름다운 경험으로 만들고 싶어합니다.',
    options: [
      Option(
        text: '설렘을 탐구하는 에세이',
        nextNodeKey: 'end',
        bookTags: ['설렘', '탐구', '감성', '에세이', '깊이있는'],
      ),
      Option(
        text: '새로운 시작을 다룬 소설',
        nextNodeKey: 'end',
        bookTags: ['시작', '소설', '설렘', '감동적', '서정적'],
      ),
      Option(
        text: '가슴 뛰는 순간들의 이야기',
        nextNodeKey: 'end',
        bookTags: ['순간', '감동', '설렘', '문학', '아름다운'],
      ),
      Option(
        text: '꿈을 향한 여정 에세이',
        nextNodeKey: 'end',
        bookTags: ['꿈', '여정', '설렘', '희망', '에세이'],
      ),
      Option(
        text: '낭만적인 사랑 이야기',
        nextNodeKey: 'end',
        bookTags: ['사랑이야기', '낭만', '설렘', '로맨틱', '감성'],
      ),
    ],
  ),
  'book_excited_7_2': QuestionNode(
    question:
        '당신은 지금, 설렘을 누군가와 나누고 싶어하는 상태입니다. 같은 감정을 느끼는 사람들과 연결되고 공감하고 싶어습니다.',
    options: [
      Option(
        text: '설렘을 공유하는 이야기들',
        nextNodeKey: 'end',
        bookTags: ['공유', '설렘', '공감', '연결', '따뜻한'],
      ),
      Option(
        text: '청춘 로맨스',
        nextNodeKey: 'end',
        bookTags: ['청춘', '로맨스', '설렘', '첫사랑', '풋풋한'],
      ),
      Option(
        text: '설렘의 감정을 다룬 심리서',
        nextNodeKey: 'end',
        bookTags: ['감정심리', '설렘', '이해', '과학', '흥미로운'],
      ),
      Option(
        text: '운명적 만남의 소설',
        nextNodeKey: 'end',
        bookTags: ['운명', '만남', '설렘', '로맨스', '극적인'],
      ),
      Option(
        text: '관계의 시작을 담은 책',
        nextNodeKey: 'end',
        bookTags: ['관계시작', '연결', '설렘', '인간관계', '따뜻한'],
      ),
    ],
  ),
  'book_excited_7_3': QuestionNode(
    question: '당신은 지금, 설렘을 아름답게 표현하고 기록하고 싶어하는 상태입니다. 이 순간을 오래 기억하고 싶어합니다.',
    options: [
      Option(
        text: '순간을 포착하는 에세이',
        nextNodeKey: 'end',
        bookTags: ['순간', '기록', '설렘', '에세이', '서정적'],
      ),
      Option(
        text: '여행 로맨스',
        nextNodeKey: 'end',
        bookTags: ['여행', '로맨스', '설렘', '이국적', '감성'],
      ),
      Option(
        text: '설렘을 시로 담은 책',
        nextNodeKey: 'end',
        bookTags: ['시', '설렘', '표현', '서정', '아름다운'],
      ),
      Option(
        text: '특별한 날들의 기록',
        nextNodeKey: 'end',
        bookTags: ['기록', '특별함', '설렘', '일상', '감성'],
      ),
      Option(
        text: '첫경험들의 에세이',
        nextNodeKey: 'end',
        bookTags: ['첫경험', '에세이', '설렘', '신선함', '회상'],
      ),
    ],
  ),
  'book_excited_7_4': QuestionNode(
    question: '당신은 지금, 설렘을 소중히 간직하고 싶어하는 상태입니다. 이 감정을 오래도록 유지하고 지켜가고 싶어습니다.',
    options: [
      Option(
        text: '설렘을 지키는 법에 대한 책',
        nextNodeKey: 'end',
        bookTags: ['유지', '설렘', '지혜', '실용', '따뜻한'],
      ),
      Option(
        text: '일상의 설렘을 담은 에세이',
        nextNodeKey: 'end',
        bookTags: ['일상', '설렘', '에세이', '소소함', '다정한'],
      ),
      Option(
        text: '마음을 가꾸는 이야기',
        nextNodeKey: 'end',
        bookTags: ['마음', '가꾸기', '설렘', '성장', '포근한'],
      ),
      Option(
        text: '오래된 사랑의 소설',
        nextNodeKey: 'end',
        bookTags: ['오래된사랑', '로맨스', '설렘', '깊이', '성숙'],
      ),
      Option(
        text: '행복을 간직하는 법',
        nextNodeKey: 'end',
        bookTags: ['행복', '간직', '설렘', '지혜', '긍정적'],
      ),
    ],
  ),
  'book_excited_7_5': QuestionNode(
    question: '당신은 지금, 설렘 그 자체를 순수하게 즐기고 있는 상태입니다. 아무 부담 없이 이 순간을 만끽하고 있습니다.',
    options: [
      Option(
        text: '가볍게 읽히는 설렘 가득한 이야기',
        nextNodeKey: 'end',
        bookTags: ['가벼운', '설렘', '즐거운', '부담없는', '경쾌한'],
      ),
      Option(
        text: '달콤한 로맨틱코미디',
        nextNodeKey: 'end',
        bookTags: ['로맨틱코미디', '유머', '설렘', '가벼운', '재미'],
      ),
      Option(
        text: '힐링 로맨스',
        nextNodeKey: 'end',
        bookTags: ['힐링로맨스', '치유', '설렘', '따뜻함', '편안한'],
      ),
      Option(
        text: '경쾌한 이야기들',
        nextNodeKey: 'end',
        bookTags: ['경쾌함', '이야기', '설렘', '밝은', '상쾌한'],
      ),
      Option(
        text: '반짝이는 순간들',
        nextNodeKey: 'end',
        bookTags: ['반짝임', '순간', '설렘', '즐거움', '경쾌한'],
      ),
    ],
  ),
};
