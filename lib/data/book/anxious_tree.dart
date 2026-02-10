// 불안 감정 - 책 추천 질문 트리
import '../../question_tree.dart';

final Map<String, QuestionNode> bookAnxiousTree = {
  // ==================== depth 2: 상황/맥락 ====================
  'book_anxious_2_1': QuestionNode(
    question: '이 불안이 가장 크게 느껴지는 순간은 언제인가요?',
    options: [
      Option(text: '미래를 생각할 때', nextNodeKey: 'book_anxious_3_1'),
      Option(text: '중요한 결정을 앞두고 있을 때', nextNodeKey: 'book_anxious_3_2'),
      Option(text: '혼자 조용히 있을 때', nextNodeKey: 'book_anxious_3_3'),
      Option(text: '무언가 통제할 수 없다고 느낄 때', nextNodeKey: 'book_anxious_3_4'),
      Option(text: '특별한 순간 없이 계속', nextNodeKey: 'book_anxious_3_5'),
    ],
  ),

  // ==================== depth 3: 내적 독백 ====================
  'book_anxious_3_1': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"잘못될 것 같아"', nextNodeKey: 'book_anxious_4_1'),
      Option(text: '"어떻게 될지 모르겠어"', nextNodeKey: 'book_anxious_4_2'),
      Option(text: '"준비가 안 된 것 같아"', nextNodeKey: 'book_anxious_4_3'),
      Option(text: '"감당할 수 있을까"', nextNodeKey: 'book_anxious_4_4'),
      Option(text: '"계속 걱정이 돼"', nextNodeKey: 'book_anxious_4_5'),
    ],
  ),
  'book_anxious_3_2': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"잘못 선택하면 어쩌지"', nextNodeKey: 'book_anxious_4_1'),
      Option(text: '"확신이 없어"', nextNodeKey: 'book_anxious_4_2'),
      Option(text: '"실패할까 봐 두려워"', nextNodeKey: 'book_anxious_4_3'),
      Option(text: '"책임이 무거워"', nextNodeKey: 'book_anxious_4_4'),
      Option(text: '"이것만 생각나"', nextNodeKey: 'book_anxious_4_5'),
    ],
  ),
  'book_anxious_3_3': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"이 생각에서 벗어날 수가 없어"', nextNodeKey: 'book_anxious_4_1'),
      Option(text: '"최악의 상황이 계속 떠올라"', nextNodeKey: 'book_anxious_4_2'),
      Option(text: '"뭔가 불길해"', nextNodeKey: 'book_anxious_4_3'),
      Option(text: '"진정이 안 돼"', nextNodeKey: 'book_anxious_4_4'),
      Option(text: '"마음이 너무 불편해"', nextNodeKey: 'book_anxious_4_5'),
    ],
  ),
  'book_anxious_3_4': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"내가 할 수 있는 게 없어"', nextNodeKey: 'book_anxious_4_1'),
      Option(text: '"어떻게 해야 할지 모르겠어"', nextNodeKey: 'book_anxious_4_2'),
      Option(text: '"상황이 나빠질 것 같아"', nextNodeKey: 'book_anxious_4_3'),
      Option(text: '"불안이 점점 커져"', nextNodeKey: 'book_anxious_4_4'),
      Option(text: '"무력해"', nextNodeKey: 'book_anxious_4_5'),
    ],
  ),
  'book_anxious_3_5': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"뭔가 계속 신경 쓰여"', nextNodeKey: 'book_anxious_4_1'),
      Option(text: '"마음이 편할 때가 없어"', nextNodeKey: 'book_anxious_4_2'),
      Option(text: '"긴장이 풀리지 않아"', nextNodeKey: 'book_anxious_4_3'),
      Option(text: '"이유를 모르겠는데 불안해"', nextNodeKey: 'book_anxious_4_4'),
      Option(text: '"언제부터인지도 모르겠어"', nextNodeKey: 'book_anxious_4_5'),
    ],
  ),

  // ==================== depth 4: 감정 결 세분화 ====================
  'book_anxious_4_1': QuestionNode(
    question: '이 불안은 어떤 모양에 가까운가요?',
    options: [
      Option(text: '끝없이 반복되는 원', nextNodeKey: 'book_anxious_5_1'),
      Option(text: '점점 커지는 파도', nextNodeKey: 'book_anxious_5_2'),
      Option(text: '가시처럼 찌르는', nextNodeKey: 'book_anxious_5_3'),
      Option(text: '안개처럼 둘러싼', nextNodeKey: 'book_anxious_5_4'),
      Option(text: '형체 없이 떠다니는', nextNodeKey: 'book_anxious_5_5'),
    ],
  ),
  'book_anxious_4_2': QuestionNode(
    question: '불안이 당신의 어디에 머물고 있나요?',
    options: [
      Option(text: '가슴을 조이며', nextNodeKey: 'book_anxious_5_1'),
      Option(text: '머리를 꽉 채우며', nextNodeKey: 'book_anxious_5_2'),
      Option(text: '목구멍에 걸려', nextNodeKey: 'book_anxious_5_3'),
      Option(text: '배 속을 뒤틀며', nextNodeKey: 'book_anxious_5_4'),
      Option(text: '온몸을 떨게 하며', nextNodeKey: 'book_anxious_5_5'),
    ],
  ),
  'book_anxious_4_3': QuestionNode(
    question: '이 불안의 색깔은 어떤가요?',
    options: [
      Option(text: '어두운 회색', nextNodeKey: 'book_anxious_5_1'),
      Option(text: '날카로운 노란색', nextNodeKey: 'book_anxious_5_2'),
      Option(text: '불안정한 빨간색', nextNodeKey: 'book_anxious_5_3'),
      Option(text: '탁한 보라색', nextNodeKey: 'book_anxious_5_4'),
      Option(text: '형체 없는 흐릿함', nextNodeKey: 'book_anxious_5_5'),
    ],
  ),
  'book_anxious_4_4': QuestionNode(
    question: '불안의 질감은 어떤가요?',
    options: [
      Option(text: '거칠고 날카로운', nextNodeKey: 'book_anxious_5_1'),
      Option(text: '촘촘하게 엉킨', nextNodeKey: 'book_anxious_5_2'),
      Option(text: '꽉 조이는', nextNodeKey: 'book_anxious_5_3'),
      Option(text: '불규칙하게 흔들리는', nextNodeKey: 'book_anxious_5_4'),
      Option(text: '잡히지 않는', nextNodeKey: 'book_anxious_5_5'),
    ],
  ),
  'book_anxious_4_5': QuestionNode(
    question: '불안이 당신에게 어떻게 다가오나요?',
    options: [
      Option(text: '계속 쫓아오는 것처럼', nextNodeKey: 'book_anxious_5_1'),
      Option(text: '파도처럼 밀려오는', nextNodeKey: 'book_anxious_5_2'),
      Option(text: '갑자기 덮치는', nextNodeKey: 'book_anxious_5_3'),
      Option(text: '서서히 스며드는', nextNodeKey: 'book_anxious_5_4'),
      Option(text: '늘 함께 있는', nextNodeKey: 'book_anxious_5_5'),
    ],
  ),

  // ==================== depth 5: 욕구·부담 정도 ====================
  'book_anxious_5_1': QuestionNode(
    question: '지금 당신은 무엇을 원하고 있나요?',
    options: [
      Option(text: '불안을 이해하고 싶어요', nextNodeKey: 'book_anxious_6_1'),
      Option(text: '불안을 진정시키고 싶어요', nextNodeKey: 'book_anxious_6_2'),
      Option(text: '불안과 함께 있는 법을 알고 싶어요', nextNodeKey: 'book_anxious_6_3'),
      Option(text: '마음의 평온을 찾고 싶어요', nextNodeKey: 'book_anxious_6_4'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_anxious_6_5'),
    ],
  ),
  'book_anxious_5_2': QuestionNode(
    question: '지금 어떤 것이 필요한가요?',
    options: [
      Option(text: '불안의 뿌리를 찾는 시간', nextNodeKey: 'book_anxious_6_1'),
      Option(text: '마음을 안정시키는 방법', nextNodeKey: 'book_anxious_6_2'),
      Option(text: '불안을 수용하는 법', nextNodeKey: 'book_anxious_6_3'),
      Option(text: '편안해질 수 있는 공간', nextNodeKey: 'book_anxious_6_4'),
      Option(text: '아무것도 필요 없어요', nextNodeKey: 'book_anxious_6_5'),
    ],
  ),
  'book_anxious_5_3': QuestionNode(
    question: '책을 읽을 수 있는 마음의 여유가 있나요?',
    options: [
      Option(text: '천천히라면 읽을 수 있어요', nextNodeKey: 'book_anxious_6_1'),
      Option(text: '마음을 진정시킬 수 있다면 읽고 싶어요', nextNodeKey: 'book_anxious_6_2'),
      Option(text: '짧고 부드러운 글이라면 가능해요', nextNodeKey: 'book_anxious_6_3'),
      Option(text: '편안하게 읽을 수 있는 것이면 좋겠어요', nextNodeKey: 'book_anxious_6_4'),
      Option(text: '거의 없어요', nextNodeKey: 'book_anxious_6_5'),
    ],
  ),
  'book_anxious_5_4': QuestionNode(
    question: '어떤 책이 지금의 당신에게 도움이 될까요?',
    options: [
      Option(text: '불안을 이해하는 책', nextNodeKey: 'book_anxious_6_1'),
      Option(text: '마음을 진정시키는 책', nextNodeKey: 'book_anxious_6_2'),
      Option(text: '불안과 함께 사는 법을 다룬 책', nextNodeKey: 'book_anxious_6_3'),
      Option(text: '평온함을 주는 책', nextNodeKey: 'book_anxious_6_4'),
      Option(text: '아무 책도 필요 없어요', nextNodeKey: 'book_anxious_6_5'),
    ],
  ),
  'book_anxious_5_5': QuestionNode(
    question: '지금 무언가를 집중해서 읽을 수 있나요?',
    options: [
      Option(text: '조금은 집중할 수 있어요', nextNodeKey: 'book_anxious_6_1'),
      Option(text: '진정되는 내용이라면 가능해요', nextNodeKey: 'book_anxious_6_2'),
      Option(text: '짧은 글 정도면 괜찮아요', nextNodeKey: 'book_anxious_6_3'),
      Option(text: '거의 집중이 안 돼요', nextNodeKey: 'book_anxious_6_4'),
      Option(text: '전혀 안 돼요', nextNodeKey: 'book_anxious_6_5'),
    ],
  ),

  // ==================== depth 6: 요약·공감 확인 ====================
  'book_anxious_6_1': QuestionNode(
    question:
        '지금 당신은, 불안한 상태에 있지만 이것을 이해하고 싶어하는 상태이군요. 불안이 무엇인지, 왜 생기는지 알고 싶은 마음이 느껴집니다.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_anxious_7_1'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_anxious_6_2'),
      Option(text: '비슷하지만 진정하고도 싶어요', nextNodeKey: 'book_anxious_6_2'),
      Option(text: '더 편안해지고 싶어요', nextNodeKey: 'book_anxious_6_4'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_anxious_6_5'),
    ],
  ),
  'book_anxious_6_2': QuestionNode(
    question:
        '지금 당신은, 불안으로 힘들어하면서 마음을 진정시키고 싶어하는 상태이군요. 이 불편한 감정에서 벗어나 안정을 찾고 싶은 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_anxious_7_2'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_anxious_6_3'),
      Option(text: '비슷하지만 이해하고도 싶어요', nextNodeKey: 'book_anxious_6_1'),
      Option(text: '더 편안해지고 싶어요', nextNodeKey: 'book_anxious_6_4'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_anxious_6_5'),
    ],
  ),
  'book_anxious_6_3': QuestionNode(
    question:
        '지금 당신은, 불안을 없애기보다 함께 있는 법을 배우고 싶어하는 상태이군요. 불안을 있는 그대로 받아들이려는 마음이 있는 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_anxious_7_3'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_anxious_6_4'),
      Option(text: '비슷하지만 진정하고도 싶어요', nextNodeKey: 'book_anxious_6_2'),
      Option(text: '이해하고도 싶어요', nextNodeKey: 'book_anxious_6_1'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_anxious_6_5'),
    ],
  ),
  'book_anxious_6_4': QuestionNode(
    question:
        '지금 당신은, 불안으로 지쳐있고 편안함과 평온함이 필요한 상태이군요. 마음이 쉴 수 있는 안전한 공간이 필요한 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_anxious_7_4'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_anxious_6_5'),
      Option(text: '비슷하지만 수용하는 법도 알고 싶어요', nextNodeKey: 'book_anxious_6_3'),
      Option(text: '진정하는 법도 알고 싶어요', nextNodeKey: 'book_anxious_6_2'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_anxious_6_5'),
    ],
  ),
  'book_anxious_6_5': QuestionNode(
    question:
        '지금 당신은, 불안이 너무 커서 무엇이 필요한지조차 알기 어려운 상태이군요. 그저 이 순간을 견디는 것만으로도 충분합니다.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_anxious_7_5'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_anxious_6_1'),
      Option(text: '비슷하지만 편안해지고 싶어요', nextNodeKey: 'book_anxious_6_4'),
      Option(text: '진정하고 싶어요', nextNodeKey: 'book_anxious_6_3'),
      Option(text: '처음부터 다시 시작할래요', nextNodeKey: 'book_anxious_2_1'),
    ],
  ),

  // ==================== depth 7: 결과 (bookTags 포함) ====================
  'book_anxious_7_1': QuestionNode(
    question:
        '당신은 지금, 불안을 이해하고 싶어하는 상태입니다. 불안이 무엇이고, 왜 생기는지, 어떻게 작동하는지 알고 싶어합니다.',
    options: [
      Option(
        text: '불안의 심리를 다룬 책',
        nextNodeKey: 'end',
        bookTags: ['불안', '심리', '이해', '분석적', '통찰'],
      ),
      Option(
        text: '걱정과 불안에 대한 책',
        nextNodeKey: 'end',
        bookTags: ['걱정', '불안', '탐구', '심리학', '이해'],
      ),
      Option(
        text: '불안의 메커니즘을 설명하는 책',
        nextNodeKey: 'end',
        bookTags: ['메커니즘', '불안', '이해', '과학적', '명확한'],
      ),
      Option(
        text: '감정을 이해하는 심리서',
        nextNodeKey: 'end',
        bookTags: ['감정', '심리', '불안', '이해', '깊이있는'],
      ),
      Option(
        text: '불안과 뇌에 대한 책',
        nextNodeKey: 'end',
        bookTags: ['뇌과학', '불안', '이해', '과학', '명쾌한'],
      ),
    ],
  ),
  'book_anxious_7_2': QuestionNode(
    question: '당신은 지금, 불안을 진정시키고 싶어하는 상태입니다. 마음의 안정을 찾고 이 불편한 감정에서 벗어나고 싶어합니다.',
    options: [
      Option(
        text: '인지행동치료 워크북',
        nextNodeKey: 'end',
        bookTags: ['CBT워크북', '불안치료', '실습', '자가치료', '데이비드번스'],
      ),
      Option(
        text: '명상과 호흡법',
        nextNodeKey: 'end',
        bookTags: ['명상실천', '호흡법', '불안', '요가', '존카밧진'],
      ),
      Option(
        text: '불안 극복 자기계발서',
        nextNodeKey: 'end',
        bookTags: ['자기계발', '불안극복', '실천', '도구', '액션플랜'],
      ),
      Option(
        text: '마음챙김 명상 안내서',
        nextNodeKey: 'end',
        bookTags: ['마음챙김명상', 'MBSR', '불안', '존카밧진', '실천'],
      ),
      Option(
        text: '불안을 다스리는 지혜',
        nextNodeKey: 'end',
        bookTags: ['지혜', '다스림', '불안', '실용', '효과적'],
      ),
    ],
  ),
  'book_anxious_7_3': QuestionNode(
    question:
        '당신은 지금, 불안과 함께 사는 법을 배우고 싶어하는 상태입니다. 불안을 없애기보다 수용하고 공존하는 길을 찾고 있습니다.',
    options: [
      Option(
        text: '불안을 수용하는 법',
        nextNodeKey: 'end',
        bookTags: ['수용', '불안', '공존', '마음챙김', '지혜'],
      ),
      Option(
        text: '불완전함을 받아들이는 책',
        nextNodeKey: 'end',
        bookTags: ['불완전', '수용', '불안', '철학적', '위로'],
      ),
      Option(
        text: '마음챙김에 대한 책',
        nextNodeKey: 'end',
        bookTags: ['마음챙김', '현재', '불안', '명상', '평온'],
      ),
      Option(
        text: '불안과의 대화',
        nextNodeKey: 'end',
        bookTags: ['대화', '수용', '불안', '성찰', '이해'],
      ),
      Option(
        text: '있는 그대로의 삶',
        nextNodeKey: 'end',
        bookTags: ['있는그대로', '수용', '불안', '철학', '평화'],
      ),
    ],
  ),
  'book_anxious_7_4': QuestionNode(
    question: '당신은 지금, 불안으로 지쳐 편안함과 평온함이 필요한 상태입니다. 마음이 쉴 수 있는 안전한 공간이 필요합니다.',
    options: [
      Option(
        text: '마음의 안식처 같은 에세이',
        nextNodeKey: 'end',
        bookTags: ['안식', '에세이', '불안', '위로', '평온'],
      ),
      Option(
        text: '편안함을 주는 이야기',
        nextNodeKey: 'end',
        bookTags: ['편안함', '이야기', '불안', '치유', '포근한'],
      ),
      Option(
        text: '고요함에 대한 책',
        nextNodeKey: 'end',
        bookTags: ['고요', '평온', '불안', '명상적', '조용한'],
      ),
      Option(
        text: '부드러운 위로의 글',
        nextNodeKey: 'end',
        bookTags: ['위로', '부드러운', '불안', '다정한', '따뜻한'],
      ),
      Option(
        text: '평화로운 순간들',
        nextNodeKey: 'end',
        bookTags: ['평화', '순간', '불안', '잔잔한', '편안한'],
      ),
    ],
  ),
  'book_anxious_7_5': QuestionNode(
    question:
        '당신은 지금, 불안이 너무 커서 무엇도 하기 어려운 상태입니다. 그저 견디는 것만으로도 충분하고, 책은 나중에 읽어도 괜찮습니다.',
    options: [
      Option(
        text: '짧고 부드러운 글',
        nextNodeKey: 'end',
        bookTags: ['짧은', '부드러운', '불안', '가벼운', '부담없는'],
      ),
      Option(
        text: '그림이 많은 책',
        nextNodeKey: 'end',
        bookTags: ['그림', '시각적', '불안', '편안한', '감각적'],
      ),
      Option(
        text: '한 문장씩 읽는 책',
        nextNodeKey: 'end',
        bookTags: ['짧은문장', '명언', '불안', '부담없는', '가벼운'],
      ),
      Option(
        text: '언제든 펼칠 수 있는 책',
        nextNodeKey: 'end',
        bookTags: ['언제든', '부담없는', '불안', '여유', '편안한'],
      ),
      Option(
        text: '그냥 곁에 두기만 해도 좋은 책',
        nextNodeKey: 'end',
        bookTags: ['곁에두기', '존재감', '불안', '안심', '포근한'],
      ),
    ],
  ),
};
