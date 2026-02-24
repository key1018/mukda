// 공허 감정 - 책 추천 질문 트리
import '../../question_tree.dart';

final Map<String, QuestionNode> bookEmptyTree = {
  // ==================== depth 2: 상황/맥락 ====================
  'book_empty_2_1': QuestionNode(
    question: '이 공허한 느낌이 가장 크게 다가오는 순간은 언제인가요?',
    options: [
      Option(text: '무언가를 이루고 난 직후', nextNodeKey: 'book_empty_3_1'),
      Option(text: '사람들과 헤어지고 혼자 남았을 때', nextNodeKey: 'book_empty_3_2'),
      Option(text: '아침에 눈을 뜰 때', nextNodeKey: 'book_empty_3_3'),
      Option(text: '바쁘게 움직이다가 멈췄을 때', nextNodeKey: 'book_empty_3_4'),
      Option(text: '특별한 순간 없이 계속', nextNodeKey: 'book_empty_3_5'),
    ],
  ),

  // ==================== depth 3: 내적 독백 ====================
  'book_empty_3_1': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"이게 다인가"', nextNodeKey: 'book_empty_4_1'),
      Option(text: '"왜 아무 느낌이 안 드는 거지"', nextNodeKey: 'book_empty_4_2'),
      Option(text: '"기쁠 줄 알았는데"', nextNodeKey: 'book_empty_4_3'),
      Option(text: '"뭔가 빠져있는 것 같아"', nextNodeKey: 'book_empty_4_4'),
      Option(text: '"의미가 없는 것 같아"', nextNodeKey: 'book_empty_4_5'),
    ],
  ),
  'book_empty_3_2': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"왜 이렇게 비어있는 걸까"', nextNodeKey: 'book_empty_4_1'),
      Option(text: '"다른 사람들도 이럴까"', nextNodeKey: 'book_empty_4_2'),
      Option(text: '"진짜 나는 어디 있지"', nextNodeKey: 'book_empty_4_3'),
      Option(text: '"그냥 껍데기만 남은 느낌이야"', nextNodeKey: 'book_empty_4_4'),
      Option(text: '"무엇도 채워지지 않아"', nextNodeKey: 'book_empty_4_5'),
    ],
  ),
  'book_empty_3_3': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"또 하루가 시작되네"', nextNodeKey: 'book_empty_4_1'),
      Option(text: '"오늘도 이럴 거야"', nextNodeKey: 'book_empty_4_2'),
      Option(text: '"뭐하러 일어나는 거지"', nextNodeKey: 'book_empty_4_3'),
      Option(text: '"아무것도 기대되지 않아"', nextNodeKey: 'book_empty_4_4'),
      Option(text: '"텅 빈 채로 시작하네"', nextNodeKey: 'book_empty_4_5'),
    ],
  ),
  'book_empty_3_4': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"뭐 하려고 이렇게 바빴지"', nextNodeKey: 'book_empty_4_1'),
      Option(text: '"소용없는 짓이었나"', nextNodeKey: 'book_empty_4_2'),
      Option(text: '"무언가로 채우려 했는데"', nextNodeKey: 'book_empty_4_3'),
      Option(text: '"멈추니까 아무것도 없네"', nextNodeKey: 'book_empty_4_4'),
      Option(text: '"계속 움직여야 하나"', nextNodeKey: 'book_empty_4_5'),
    ],
  ),
  'book_empty_3_5': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"뭔가 계속 빠져나가는 것 같아"', nextNodeKey: 'book_empty_4_1'),
      Option(text: '"내가 왜 이러는지 모르겠어"', nextNodeKey: 'book_empty_4_2'),
      Option(text: '"채워도 채워도 공허해"', nextNodeKey: 'book_empty_4_3'),
      Option(text: '"이게 나인지 모르겠어"', nextNodeKey: 'book_empty_4_4'),
      Option(text: '"무감각해진 것 같아"', nextNodeKey: 'book_empty_4_5'),
    ],
  ),

  // ==================== depth 4: 감정 결 세분화 ====================
  'book_empty_4_1': QuestionNode(
    question: '이 공허함의 모양은 어떤가요?',
    options: [
      Option(text: '깊고 넓은 동굴', nextNodeKey: 'book_empty_5_1'),
      Option(text: '끝없는 사막', nextNodeKey: 'book_empty_5_2'),
      Option(text: '텅 빈 방', nextNodeKey: 'book_empty_5_3'),
      Option(text: '구멍 뚫린 주머니', nextNodeKey: 'book_empty_5_4'),
      Option(text: '형체 없는 안개', nextNodeKey: 'book_empty_5_5'),
    ],
  ),
  'book_empty_4_2': QuestionNode(
    question: '공허함이 어디서 느껴지나요?',
    options: [
      Option(text: '가슴 한가운데', nextNodeKey: 'book_empty_5_1'),
      Option(text: '온몸 전체', nextNodeKey: 'book_empty_5_2'),
      Option(text: '머리 속', nextNodeKey: 'book_empty_5_3'),
      Option(text: '배 안쪽', nextNodeKey: 'book_empty_5_4'),
      Option(text: '어딘지 모르겠어요', nextNodeKey: 'book_empty_5_5'),
    ],
  ),
  'book_empty_4_3': QuestionNode(
    question: '이 공허함은 어떤 온도인가요?',
    options: [
      Option(text: '차갑고 얼어붙은', nextNodeKey: 'book_empty_5_1'),
      Option(text: '미지근하고 생기 없는', nextNodeKey: 'book_empty_5_2'),
      Option(text: '냉랭하고 메마른', nextNodeKey: 'book_empty_5_3'),
      Option(text: '무온도의 진공', nextNodeKey: 'book_empty_5_4'),
      Option(text: '온도조차 느껴지지 않아요', nextNodeKey: 'book_empty_5_5'),
    ],
  ),
  'book_empty_4_4': QuestionNode(
    question: '공허함의 무게는 어떤가요?',
    options: [
      Option(text: '무겁게 짓누르는', nextNodeKey: 'book_empty_5_1'),
      Option(text: '가볍게 떠다니는', nextNodeKey: 'book_empty_5_2'),
      Option(text: '텅 빈 가벼움', nextNodeKey: 'book_empty_5_3'),
      Option(text: '있는지 없는지 모를', nextNodeKey: 'book_empty_5_4'),
      Option(text: '무게조차 없는', nextNodeKey: 'book_empty_5_5'),
    ],
  ),
  'book_empty_4_5': QuestionNode(
    question: '공허함이 당신을 어떻게 대하고 있나요?',
    options: [
      Option(text: '깊숙이 파고들고 있어요', nextNodeKey: 'book_empty_5_1'),
      Option(text: '조용히 감싸고 있어요', nextNodeKey: 'book_empty_5_2'),
      Option(text: '멀리서 지켜보고 있어요', nextNodeKey: 'book_empty_5_3'),
      Option(text: '나의 일부가 된 것 같아요', nextNodeKey: 'book_empty_5_4'),
      Option(text: '나 자체가 된 것 같아요', nextNodeKey: 'book_empty_5_5'),
    ],
  ),

  // ==================== depth 5: 욕구·부담 정도 ====================
  'book_empty_5_1': QuestionNode(
    question: '지금 당신은 무엇을 원하고 있나요?',
    options: [
      Option(text: '이 공허함의 의미를 이해하고 싶어요', nextNodeKey: 'book_empty_6_1'),
      Option(text: '무언가로 이 빈자리를 채우고 싶어요', nextNodeKey: 'book_empty_6_2'),
      Option(text: '공허함을 있는 그대로 느끼고 싶어요', nextNodeKey: 'book_empty_6_3'),
      Option(text: '조용히 쉬고 싶어요', nextNodeKey: 'book_empty_6_4'),
      Option(text: '아무것도 원하지 않아요', nextNodeKey: 'book_empty_6_5'),
    ],
  ),
  'book_empty_5_2': QuestionNode(
    question: '지금 어떤 것이 필요한가요?',
    options: [
      Option(text: '근본적인 질문과 답을 찾는 시간', nextNodeKey: 'book_empty_6_1'),
      Option(text: '의미와 연결을 느낄 수 있는 무언가', nextNodeKey: 'book_empty_6_2'),
      Option(text: '빈 공간을 인정하는 시간', nextNodeKey: 'book_empty_6_3'),
      Option(text: '부담 없이 머무를 수 있는 곳', nextNodeKey: 'book_empty_6_4'),
      Option(text: '아무것도 필요하지 않아요', nextNodeKey: 'book_empty_6_5'),
    ],
  ),
  'book_empty_5_3': QuestionNode(
    question: '책을 읽는다면, 어느 정도 깊이를 감당할 수 있을까요?',
    options: [
      Option(text: '존재의 의미를 파고드는 깊이', nextNodeKey: 'book_empty_6_1'),
      Option(text: '삶의 가치를 찾아가는 깊이', nextNodeKey: 'book_empty_6_2'),
      Option(text: '있는 그대로를 바라보는 깊이', nextNodeKey: 'book_empty_6_3'),
      Option(text: '가볍게 스치는 깊이', nextNodeKey: 'book_empty_6_4'),
      Option(text: '아무 깊이도 원하지 않아요', nextNodeKey: 'book_empty_6_5'),
    ],
  ),
  'book_empty_5_4': QuestionNode(
    question: '어떤 이야기가 지금 당신에게 닿을 수 있을까요?',
    options: [
      Option(text: '공허의 본질을 다루는 이야기', nextNodeKey: 'book_empty_6_1'),
      Option(text: '의미를 찾아가는 이야기', nextNodeKey: 'book_empty_6_2'),
      Option(text: '비움을 이해하는 이야기', nextNodeKey: 'book_empty_6_3'),
      Option(text: '조용히 곁에 있는 이야기', nextNodeKey: 'book_empty_6_4'),
      Option(text: '어떤 이야기도 닿지 않을 것 같아요', nextNodeKey: 'book_empty_6_5'),
    ],
  ),
  'book_empty_5_5': QuestionNode(
    question: '지금 무언가를 읽거나 생각할 에너지가 있나요?',
    options: [
      Option(text: '천천히라면 깊이 생각할 수 있어요', nextNodeKey: 'book_empty_6_1'),
      Option(text: '적당한 무게라면 괜찮아요', nextNodeKey: 'book_empty_6_2'),
      Option(text: '가볍게라면 가능해요', nextNodeKey: 'book_empty_6_3'),
      Option(text: '거의 없어요', nextNodeKey: 'book_empty_6_4'),
      Option(text: '전혀 없어요', nextNodeKey: 'book_empty_6_5'),
    ],
  ),

  // ==================== depth 6: 요약·공감 확인 ====================
  'book_empty_6_1': QuestionNode(
    question:
        '지금 당신은, 공허함의 의미를 이해하고 싶어하는 상태이군요. 이 빈 공간이 왜 생겼는지, 무엇을 말하고 있는지 알고 싶은 마음이 느껴집니다.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_empty_7_1'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_empty_6_2'),
      Option(text: '비슷하지만 더 가볍게 접근하고 싶어요', nextNodeKey: 'book_empty_6_3'),
      Option(text: '너무 무거운 것 같아요', nextNodeKey: 'book_empty_6_4'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_empty_6_5'),
    ],
  ),
  'book_empty_6_2': QuestionNode(
    question:
        '지금 당신은, 공허함을 채울 무언가를 찾고 있는 상태이군요. 의미와 연결, 그리고 살아있음을 느낄 수 있는 무언가가 필요한 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_empty_7_2'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_empty_6_3'),
      Option(text: '비슷하지만 더 근본적으로 파고들고 싶어요', nextNodeKey: 'book_empty_6_1'),
      Option(text: '더 가볍게 접근하고 싶어요', nextNodeKey: 'book_empty_6_4'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_empty_6_5'),
    ],
  ),
  'book_empty_6_3': QuestionNode(
    question:
        '지금 당신은, 공허함을 억지로 채우려 하지 않고 있는 그대로 받아들이고 싶은 상태이군요. 비어있음도 하나의 상태로 인정하고 있는 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_empty_7_3'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_empty_6_4'),
      Option(text: '비슷하지만 의미를 찾고도 싶어요', nextNodeKey: 'book_empty_6_2'),
      Option(text: '좀 더 깊이 들어가고 싶어요', nextNodeKey: 'book_empty_6_1'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_empty_6_5'),
    ],
  ),
  'book_empty_6_4': QuestionNode(
    question:
        '지금 당신은, 공허함에 지쳐있고 부담 없이 쉴 곳이 필요한 상태이군요. 무언가를 이해하거나 채우려 하지 않고 그저 머물고 싶은 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_empty_7_4'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_empty_6_5'),
      Option(text: '비슷하지만 조금은 의미를 찾고 싶어요', nextNodeKey: 'book_empty_6_3'),
      Option(text: '좀 더 채워지고 싶어요', nextNodeKey: 'book_empty_6_2'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_empty_6_5'),
    ],
  ),
  'book_empty_6_5': QuestionNode(
    question:
        '지금 당신은, 공허함조차 느끼기 힘들 만큼 아무것도 하고 싶지 않은 상태이군요. 그 어떤 시도도 하지 않아도 괜찮은 순간인 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_empty_7_5'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_empty_6_1'),
      Option(text: '비슷하지만 조금은 쉬고 싶어요', nextNodeKey: 'book_empty_6_4'),
      Option(text: '무언가 있는 그대로 바라보고 싶어요', nextNodeKey: 'book_empty_6_3'),
      Option(text: '처음부터 다시 시작할래요', nextNodeKey: 'book_empty_2_1'),
    ],
  ),

  // ==================== depth 7: 결과 (bookTags 포함) ====================
  'book_empty_7_1': QuestionNode(
    question:
        '당신은 지금, 공허의 의미를 탐구하며 존재에 대한 근본적인 질문을 던지고 있는 상태입니다. 이 빈 공간이 무엇을 말하는지 알고 싶어습니다.',
    options: [
      Option(
        text: '존재와 공허를 다룬 철학서',
        nextNodeKey: 'end',
        bookTags: ['실존주의', '철학', '공허', '존재론', '형이상학'],
      ),
      Option(
        text: '니힐리즘을 다룬 소설',
        nextNodeKey: 'end',
        bookTags: ['니힐리즘', '실존소설', '공허', '허무주의', '현대문학'],
      ),
      Option(
        text: '공허와 허무를 성찰하는 에세이',
        nextNodeKey: 'end',
        bookTags: ['성찰', '허무', '공허', '에세이', '사색적'],
      ),
      Option(
        text: '실존을 다룬 문학작품',
        nextNodeKey: 'end',
        bookTags: ['실존', '문학', '공허', '철학적', '깊은'],
      ),
      Option(
        text: '의미 상실을 다룬 심리학서',
        nextNodeKey: 'end',
        bookTags: ['실존심리학', '의미상실', '공허', '심리학', '로고테라피'],
      ),
    ],
  ),
  'book_empty_7_2': QuestionNode(
    question:
        '당신은 지금, 공허를 채울 의미와 연결을 찾고 있는 상태입니다. 삶의 가치와 목적, 그리고 살아있음을 느낄 수 있는 무언가가 필요합니다.',
    options: [
      Option(
        text: '삶의 의미를 찾는 이야기',
        nextNodeKey: 'end',
        bookTags: ['의미', '목적', '공허', '희망', '탐색'],
      ),
      Option(
        text: '연결과 관계를 다룬 소설',
        nextNodeKey: 'end',
        bookTags: ['관계소설', '연결', '공허', '감성', '문학'],
      ),
      Option(
        text: '가치를 재발견하는 에세이',
        nextNodeKey: 'end',
        bookTags: ['가치관', '재발견', '공허', '성찰에세이', '따뜻한'],
      ),
      Option(
        text: '내면 성장 심리서',
        nextNodeKey: 'end',
        bookTags: ['내면성장', '심리', '공허', '자아실현', '치유'],
      ),
      Option(
        text: '존재의 충만함을 다룬 책',
        nextNodeKey: 'end',
        bookTags: ['충만', '존재', '공허', '긍정적', '따스한'],
      ),
    ],
  ),
  'book_empty_7_3': QuestionNode(
    question:
        '당신은 지금, 공허함을 있는 그대로 받아들이고 있는 상태입니다. 비어있음도 하나의 자연스러운 상태로 인정하고 있습니다.',
    options: [
      Option(
        text: '선불교 명상서',
        nextNodeKey: 'end',
        bookTags: ['선불교', '명상', '공허', '무', '동양철학'],
      ),
      Option(
        text: '도교 사상서',
        nextNodeKey: 'end',
        bookTags: ['도교', '무위자연', '공허', '동양사상', '수용'],
      ),
      Option(
        text: '무를 이해하는 에세이',
        nextNodeKey: 'end',
        bookTags: ['무', '이해', '공허', '에세이', '사색'],
      ),
      Option(
        text: '미니멀리즘 철학',
        nextNodeKey: 'end',
        bookTags: ['미니멀리즘', '단순함', '공허', '비움', '라이프스타일'],
      ),
      Option(
        text: '있는 그대로를 바라보는 명상서',
        nextNodeKey: 'end',
        bookTags: ['명상', '수용', '공허', '고요', '평온'],
      ),
    ],
  ),
  'book_empty_7_4': QuestionNode(
    question:
        '당신은 지금, 공허에 지쳐있고 부담 없이 쉴 곳이 필요한 상태입니다. 무언가를 이해하거나 채우려 하지 않아도 괜찮습니다.',
    options: [
      Option(
        text: '가볍게 읽히는 위로의 글',
        nextNodeKey: 'end',
        bookTags: ['위로', '가벼운', '공허', '부담없는', '다정한'],
      ),
      Option(
        text: '마음을 쉬게 하는 에세이',
        nextNodeKey: 'end',
        bookTags: ['휴식', '에세이', '공허', '편안한', '치유'],
      ),
      Option(
        text: '조용한 풍경을 담은 책',
        nextNodeKey: 'end',
        bookTags: ['풍경', '조용함', '공허', '평온', '시각적'],
      ),
      Option(
        text: '짧은 이야기 모음집',
        nextNodeKey: 'end',
        bookTags: ['짧은', '이야기', '공허', '부담없는', '다양한'],
      ),
      Option(
        text: '그림과 짧은 글',
        nextNodeKey: 'end',
        bookTags: ['그림', '짧은', '공허', '시각적', '감각적'],
      ),
    ],
  ),
  'book_empty_7_5': QuestionNode(
    question: '당신은 지금, 아무것도 하고 싶지 않을 만큼 깊이 비어있는 상태입니다. 그 어떤 것도 요구받지 않아도 됩니다.',
    options: [
      Option(
        text: '펼치지 않아도 되는 책',
        nextNodeKey: 'end',
        bookTags: ['존재감', '부담없는', '공허', '곁에두기', '편안한'],
      ),
      Option(
        text: '그림만 보아도 되는 책',
        nextNodeKey: 'end',
        bookTags: ['그림책', '시각적', '공허', '글없는', '감각적'],
      ),
      Option(
        text: '한 문장씩만 읽어도 되는 책',
        nextNodeKey: 'end',
        bookTags: ['짧은문장', '명언', '공허', '가벼운', '부담없는'],
      ),
      Option(
        text: '순서 없이 펼쳐도 되는 책',
        nextNodeKey: 'end',
        bookTags: ['자유로운', '순서없는', '공허', '편안한', '가벼운'],
      ),
      Option(
        text: '언젠가 읽을 수 있는 책',
        nextNodeKey: 'end',
        bookTags: ['언젠가', '기다림', '공허', '여유', '미래'],
      ),
    ],
  ),
};
