// 우울 감정 - 책 추천 질문 트리
import '../../question_tree.dart';

final Map<String, QuestionNode> bookSadTree = {
  // ==================== depth 2: 상황/맥락 ====================
  'book_sad_2_1': QuestionNode(
    question: '이 우울한 감정이 가장 또렷해지는 순간은 언제인가요?',
    options: [
      Option(text: '조용히 혼자 있을 때', nextNodeKey: 'book_sad_3_1'),
      Option(text: '밤이 깊어질 때', nextNodeKey: 'book_sad_3_2'),
      Option(text: '사람들 속에 있지만 혼자인 것 같을 때', nextNodeKey: 'book_sad_3_3'),
      Option(text: '과거의 기억이 떠오를 때', nextNodeKey: 'book_sad_3_4'),
      Option(text: '아무 이유 없이 문득', nextNodeKey: 'book_sad_3_5'),
    ],
  ),

  // ==================== depth 3: 내적 독백 ====================
  'book_sad_3_1': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"나만 이렇게 느끼는 건가"', nextNodeKey: 'book_sad_4_1'),
      Option(text: '"아무도 날 이해하지 못할 거야"', nextNodeKey: 'book_sad_4_2'),
      Option(text: '"이 마음이 언제 끝날까"', nextNodeKey: 'book_sad_4_3'),
      Option(text: '"내가 뭘 잘못한 걸까"', nextNodeKey: 'book_sad_4_4'),
      Option(text: '"그냥 이대로 있고 싶어"', nextNodeKey: 'book_sad_4_5'),
    ],
  ),
  'book_sad_3_2': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"또 하루가 그냥 지나갔네"', nextNodeKey: 'book_sad_4_1'),
      Option(text: '"내일도 별반 다르지 않겠지"', nextNodeKey: 'book_sad_4_2'),
      Option(text: '"시간이 멈춰 있는 것 같아"', nextNodeKey: 'book_sad_4_3'),
      Option(text: '"밤이 너무 고요해"', nextNodeKey: 'book_sad_4_4'),
      Option(text: '"잠들기가 두려워"', nextNodeKey: 'book_sad_4_5'),
    ],
  ),
  'book_sad_3_3': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"왜 나는 이렇게 외로운 걸까"', nextNodeKey: 'book_sad_4_1'),
      Option(text: '"다른 사람들은 다 행복해 보여"', nextNodeKey: 'book_sad_4_2'),
      Option(text: '"진짜 내 모습을 숨기고 있어"', nextNodeKey: 'book_sad_4_3'),
      Option(text: '"누구도 이 마음을 모를 거야"', nextNodeKey: 'book_sad_4_4'),
      Option(text: '"차라리 혼자가 편해"', nextNodeKey: 'book_sad_4_5'),
    ],
  ),
  'book_sad_3_4': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"그때는 좋았는데"', nextNodeKey: 'book_sad_4_1'),
      Option(text: '"돌아갈 수 없다는 게 슬퍼"', nextNodeKey: 'book_sad_4_2'),
      Option(text: '"왜 그랬을까"', nextNodeKey: 'book_sad_4_3'),
      Option(text: '"그때의 나는 어디 갔지"', nextNodeKey: 'book_sad_4_4'),
      Option(text: '"이 아픔이 계속될 것 같아"', nextNodeKey: 'book_sad_4_5'),
    ],
  ),
  'book_sad_3_5': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"뭔가 계속 비어있는 느낌이야"', nextNodeKey: 'book_sad_4_1'),
      Option(text: '"나도 내가 왜 그런지 모르겠어"', nextNodeKey: 'book_sad_4_2'),
      Option(text: '"이게 나인가 싶어"', nextNodeKey: 'book_sad_4_3'),
      Option(text: '"아무것도 하기 싫어"', nextNodeKey: 'book_sad_4_4'),
      Option(text: '"그냥 가만히 있고 싶어"', nextNodeKey: 'book_sad_4_5'),
    ],
  ),

  // ==================== depth 4: 감정 결 세분화 ====================
  'book_sad_4_1': QuestionNode(
    question: '이 우울함은 어떤 색깔에 가까운가요?',
    options: [
      Option(text: '깊고 무거운 파란색', nextNodeKey: 'book_sad_5_1'),
      Option(text: '회색빛 안개', nextNodeKey: 'book_sad_5_2'),
      Option(text: '까맣게 가라앉은 먹물', nextNodeKey: 'book_sad_5_3'),
      Option(text: '빛바랜 갈색', nextNodeKey: 'book_sad_5_4'),
      Option(text: '텅 빈 투명함', nextNodeKey: 'book_sad_5_5'),
    ],
  ),
  'book_sad_4_2': QuestionNode(
    question: '지금의 우울함은 어디에 더 가까운가요?',
    options: [
      Option(text: '조용히 가라앉는 느낌', nextNodeKey: 'book_sad_5_1'),
      Option(text: '흐릿하게 번지는 느낌', nextNodeKey: 'book_sad_5_2'),
      Option(text: '무겁게 짓누르는 느낌', nextNodeKey: 'book_sad_5_3'),
      Option(text: '천천히 스며드는 느낌', nextNodeKey: 'book_sad_5_4'),
      Option(text: '아무 느낌도 없는 느낌', nextNodeKey: 'book_sad_5_5'),
    ],
  ),
  'book_sad_4_3': QuestionNode(
    question: '이 우울함이 당신에게 어떻게 머무르고 있나요?',
    options: [
      Option(text: '가슴 깊은 곳에 가라앉아 있어요', nextNodeKey: 'book_sad_5_1'),
      Option(text: '온몸을 감싸고 있어요', nextNodeKey: 'book_sad_5_2'),
      Option(text: '목구멍에 걸려 있어요', nextNodeKey: 'book_sad_5_3'),
      Option(text: '머릿속을 맴돌고 있어요', nextNodeKey: 'book_sad_5_4'),
      Option(text: '어디인지 모르겠지만 어딘가에 있어요', nextNodeKey: 'book_sad_5_5'),
    ],
  ),
  'book_sad_4_4': QuestionNode(
    question: '지금 우울함의 질감은 어떤가요?',
    options: [
      Option(text: '젖은 솜처럼 축축하고 무거워요', nextNodeKey: 'book_sad_5_1'),
      Option(text: '안개처럼 흐릿하고 잡히지 않아요', nextNodeKey: 'book_sad_5_2'),
      Option(text: '돌멩이처럼 단단하고 무거워요', nextNodeKey: 'book_sad_5_3'),
      Option(text: '물처럼 계속 흘러내려요', nextNodeKey: 'book_sad_5_4'),
      Option(text: '공기처럼 있는 것 같기도, 없는 것 같기도 해요', nextNodeKey: 'book_sad_5_5'),
    ],
  ),
  'book_sad_4_5': QuestionNode(
    question: '이 우울한 마음이 어떤 모양으로 느껴지나요?',
    options: [
      Option(text: '깊은 우물처럼', nextNodeKey: 'book_sad_5_1'),
      Option(text: '끝없는 바다처럼', nextNodeKey: 'book_sad_5_2'),
      Option(text: '좁은 방처럼', nextNodeKey: 'book_sad_5_3'),
      Option(text: '긴 터널처럼', nextNodeKey: 'book_sad_5_4'),
      Option(text: '경계 없는 허공처럼', nextNodeKey: 'book_sad_5_5'),
    ],
  ),

  // ==================== depth 5: 욕구·부담 정도 ====================
  'book_sad_5_1': QuestionNode(
    question: '지금 당신은 어떤 걸 원하고 있나요?',
    options: [
      Option(text: '이 마음을 온전히 들여다보고 싶어요', nextNodeKey: 'book_sad_6_1'),
      Option(text: '누군가 이 마음을 알아줬으면 좋겠어요', nextNodeKey: 'book_sad_6_2'),
      Option(text: '이 마음과 함께 머물고 싶어요', nextNodeKey: 'book_sad_6_3'),
      Option(text: '조용히 위로받고 싶어요', nextNodeKey: 'book_sad_6_4'),
      Option(text: '아무것도 원하지 않아요', nextNodeKey: 'book_sad_6_5'),
    ],
  ),
  'book_sad_5_2': QuestionNode(
    question: '지금 이 순간, 당신에게 필요한 건 무엇일까요?',
    options: [
      Option(text: '나를 깊이 이해하는 시간', nextNodeKey: 'book_sad_6_1'),
      Option(text: '따뜻한 공감과 위로', nextNodeKey: 'book_sad_6_2'),
      Option(text: '조용히 나를 바라보는 시간', nextNodeKey: 'book_sad_6_3'),
      Option(text: '가만히 안아주는 마음', nextNodeKey: 'book_sad_6_4'),
      Option(text: '아무것도 필요 없어요', nextNodeKey: 'book_sad_6_5'),
    ],
  ),
  'book_sad_5_3': QuestionNode(
    question: '무언가를 읽거나 생각한다면, 지금 감당할 수 있을 것 같나요?',
    options: [
      Option(text: '천천히라면 깊이 들여다볼 수 있을 것 같아요', nextNodeKey: 'book_sad_6_1'),
      Option(text: '부담 없이 읽을 수 있는 정도면 좋겠어요', nextNodeKey: 'book_sad_6_2'),
      Option(text: '짧고 마음을 어루만지는 정도면 좋겠어요', nextNodeKey: 'book_sad_6_3'),
      Option(text: '그냥 옆에 있어주는 느낌이면 좋겠어요', nextNodeKey: 'book_sad_6_4'),
      Option(text: '아무것도 읽고 싶지 않아요', nextNodeKey: 'book_sad_6_5'),
    ],
  ),
  'book_sad_5_4': QuestionNode(
    question: '지금 당신의 마음이 감당할 수 있는 무게는 어느 정도인가요?',
    options: [
      Option(text: '무거운 이야기도 받아들일 수 있어요', nextNodeKey: 'book_sad_6_1'),
      Option(text: '적당한 울림이 있는 정도면 좋겠어요', nextNodeKey: 'book_sad_6_2'),
      Option(text: '가벼운 위로만으로도 충분해요', nextNodeKey: 'book_sad_6_3'),
      Option(text: '그저 곁에 있는 느낌만으로도 좋아요', nextNodeKey: 'book_sad_6_4'),
      Option(text: '아무것도 감당하고 싶지 않아요', nextNodeKey: 'book_sad_6_5'),
    ],
  ),
  'book_sad_5_5': QuestionNode(
    question: '어떤 책이 지금의 당신에게 필요할까요?',
    options: [
      Option(text: '내면 깊숙이 들어가는 책', nextNodeKey: 'book_sad_6_1'),
      Option(text: '마음을 다독이는 책', nextNodeKey: 'book_sad_6_2'),
      Option(text: '곁에서 조용히 함께하는 책', nextNodeKey: 'book_sad_6_3'),
      Option(text: '부담 없이 기댈 수 있는 책', nextNodeKey: 'book_sad_6_4'),
      Option(text: '아무 책도 필요 없어요', nextNodeKey: 'book_sad_6_5'),
    ],
  ),

  // ==================== depth 6: 요약·공감 확인 ====================
  'book_sad_6_1': QuestionNode(
    question:
        '지금 당신은, 우울한 마음 한가운데 서서 그 깊이를 온전히 느끼고 싶은 상태이군요. 이 감정을 회피하지 않고 마주하려는 용기가 느껴집니다.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_sad_7_1'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_sad_6_2'),
      Option(text: '비슷하지만 좀 더 가벼웠으면 해요', nextNodeKey: 'book_sad_6_3'),
      Option(text: '너무 무거운 것 같아요', nextNodeKey: 'book_sad_6_4'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_sad_6_5'),
    ],
  ),
  'book_sad_6_2': QuestionNode(
    question:
        '지금 당신은, 우울한 마음을 느끼면서도 그 안에서 위로와 이해를 찾고 싶은 상태이군요. 혼자가 아니라는 걸 느끼고 싶어 하는 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_sad_7_2'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_sad_6_3'),
      Option(text: '비슷하지만 좀 더 조용했으면 해요', nextNodeKey: 'book_sad_6_1'),
      Option(text: '좀 더 가벼웠으면 해요', nextNodeKey: 'book_sad_6_4'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_sad_6_5'),
    ],
  ),
  'book_sad_6_3': QuestionNode(
    question:
        '지금 당신은, 우울한 마음을 억지로 떨쳐내려 하지 않고 그저 함께 머물고 싶은 상태이군요. 서두르지 않아도 괜찮다는 걸 알고 있는 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_sad_7_3'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_sad_6_4'),
      Option(text: '비슷하지만 더 위로받고 싶어요', nextNodeKey: 'book_sad_6_2'),
      Option(text: '좀 더 깊이 들어가고 싶어요', nextNodeKey: 'book_sad_6_1'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_sad_6_5'),
    ],
  ),
  'book_sad_6_4': QuestionNode(
    question:
        '지금 당신은, 우울한 마음에 지쳐 있고 부담 없이 가만히 기댈 곳이 필요한 상태이군요. 아무것도 하지 않아도 괜찮은 순간이 필요한 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_sad_7_4'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_sad_6_5'),
      Option(text: '비슷하지만 약간의 위로는 원해요', nextNodeKey: 'book_sad_6_3'),
      Option(text: '좀 더 깊은 공감이 필요해요', nextNodeKey: 'book_sad_6_2'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_sad_6_5'),
    ],
  ),
  'book_sad_6_5': QuestionNode(
    question:
        '지금 당신은, 우울한 마음조차 느끼기 힘들 정도로 아무것도 하고 싶지 않은 상태이군요. 그저 있는 그대로 존재하는 것만으로도 충분한 순간인 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_sad_7_5'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_sad_6_1'),
      Option(text: '비슷하지만 약간은 기대고 싶어요', nextNodeKey: 'book_sad_6_4'),
      Option(text: '조금은 위로받고 싶어요', nextNodeKey: 'book_sad_6_3'),
      Option(text: '처음부터 다시 시작할래요', nextNodeKey: 'book_sad_2_1'),
    ],
  ),

  // ==================== depth 7: 결과 (bookTags 포함) ====================
  'book_sad_7_1': QuestionNode(
    question:
        '당신은 지금, 우울의 깊이를 온전히 느끼며 내면을 탐색하려는 상태입니다. 이 마음을 회피하지 않고 있는 그대로 마주하려는 용기가 있습니다.',
    options: [
      Option(
        text: '실존주의 철학서',
        nextNodeKey: 'end',
        bookTags: ['실존주의', '카뮈', '우울', '철학', '사르트르'],
      ),
      Option(
        text: '인간 내면을 다룬 소설',
        nextNodeKey: 'end',
        bookTags: ['심리', '인간본성', '우울', '감정탐구', '문학적'],
      ),
      Option(
        text: '고독을 이해하는 에세이',
        nextNodeKey: 'end',
        bookTags: ['고독', '성찰', '우울', '에세이', '사색적'],
      ),
      Option(
        text: '존재에 대한 철학서',
        nextNodeKey: 'end',
        bookTags: ['철학', '존재', '우울', '사유', '근본적'],
      ),
      Option(
        text: '우울을 통찰하는 정신분석서',
        nextNodeKey: 'end',
        bookTags: ['정신분석', '융', '우울', '심리학', '프로이트'],
      ),
    ],
  ),
  'book_sad_7_2': QuestionNode(
    question:
        '당신은 지금, 우울한 마음 속에서 공감과 위로를 찾고 있는 상태입니다. 같은 감정을 느낀 누군가의 이야기가 힘이 될 수 있습니다.',
    options: [
      Option(
        text: '멜랑콜리 문학',
        nextNodeKey: 'end',
        bookTags: ['멜랑콜리', '프루스트', '우울', '프랑스문학', '감성'],
      ),
      Option(
        text: '슬픔을 다룬 소설',
        nextNodeKey: 'end',
        bookTags: ['슬픔', '감정', '우울', '문학', '깊은울림'],
      ),
      Option(
        text: '상실을 다룬 회고록',
        nextNodeKey: 'end',
        bookTags: ['회고록', '상실', '우울', '자전적', '치유'],
      ),
      Option(
        text: '인간의 감정을 이해하는 책',
        nextNodeKey: 'end',
        bookTags: ['감정', '이해', '우울', '공감', '심리적'],
      ),
      Option(
        text: '우울증을 이해하는 정신의학서',
        nextNodeKey: 'end',
        bookTags: ['정신의학', '우울증', '이해', '케이제이미슨', '전문서'],
      ),
    ],
  ),
  'book_sad_7_3': QuestionNode(
    question:
        '당신은 지금, 우울한 마음과 함께 조용히 머물고 있는 상태입니다. 서두르지 않고 천천히 나아가도 괜찮다는 걸 알고 있습니다.',
    options: [
      Option(
        text: '고요한 선 사상',
        nextNodeKey: 'end',
        bookTags: ['선불교', '명상', '우울', '동양철학', '틱낫한'],
      ),
      Option(
        text: '느리게 읽히는 서정 소설',
        nextNodeKey: 'end',
        bookTags: ['서정소설', '느린문학', '우울', '서정적', '문학'],
      ),
      Option(
        text: '마음의 쉼표 같은 에세이',
        nextNodeKey: 'end',
        bookTags: ['휴식', '에세이', '우울', '편안한', '잔잔한'],
      ),
      Option(
        text: '침묵과 고독에 대한 책',
        nextNodeKey: 'end',
        bookTags: ['침묵', '고독', '우울', '철학', '사색'],
      ),
      Option(
        text: '있는 그대로를 담은 이야기',
        nextNodeKey: 'end',
        bookTags: ['있는그대로', '수용', '우울', '자연스러운', '담담한'],
      ),
    ],
  ),
  'book_sad_7_4': QuestionNode(
    question:
        '당신은 지금, 우울에 지쳐 있고 부담 없이 기댈 곳이 필요한 상태입니다. 아무 요구도 하지 않는 부드러운 존재가 필요합니다.',
    options: [
      Option(
        text: '가볍게 읽히는 위로의 글',
        nextNodeKey: 'end',
        bookTags: ['가벼운', '위로', '우울', '부담없는', '다정한'],
      ),
      Option(
        text: '짧고 따뜻한 이야기',
        nextNodeKey: 'end',
        bookTags: ['짧은', '따뜻함', '우울', '쉬운', '포근한'],
      ),
      Option(
        text: '부드러운 에세이',
        nextNodeKey: 'end',
        bookTags: ['부드러운', '에세이', '우울', '편안한', '온화한'],
      ),
      Option(
        text: '마음을 쉬게 하는 책',
        nextNodeKey: 'end',
        bookTags: ['휴식', '평온', '우울', '치유', '여유로운'],
      ),
      Option(
        text: '그림과 짧은 글이 있는 책',
        nextNodeKey: 'end',
        bookTags: ['그림책', '짧은', '우울', '시각적', '감각적'],
      ),
    ],
  ),
  'book_sad_7_5': QuestionNode(
    question:
        '당신은 지금, 아무것도 하고 싶지 않을 만큼 지쳐 있는 상태입니다. 그저 존재하는 것만으로도 충분합니다. 책도 나중에 읽어도 괜찮습니다.',
    options: [
      Option(
        text: '언제든 펼칠 수 있는 짧은 글',
        nextNodeKey: 'end',
        bookTags: ['짧은', '단편', '우울', '가벼운', '부담없는'],
      ),
      Option(
        text: '그냥 옆에 두기만 해도 좋은 책',
        nextNodeKey: 'end',
        bookTags: ['존재감', '편안한', '우울', '부담없는', '곁에두기'],
      ),
      Option(
        text: '사진이나 그림이 많은 책',
        nextNodeKey: 'end',
        bookTags: ['시각적', '그림', '우울', '글없는', '감각적'],
      ),
      Option(
        text: '한 문장만 읽어도 되는 책',
        nextNodeKey: 'end',
        bookTags: ['짧은문장', '명언', '우울', '가벼운', '부담없는'],
      ),
      Option(
        text: '아무 페이지나 펼쳐도 되는 책',
        nextNodeKey: 'end',
        bookTags: ['자유로운', '순서없는', '우울', '편안한', '가벼운'],
      ),
    ],
  ),
};
