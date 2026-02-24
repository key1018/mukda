// 번아웃 감정 - 책 추천 질문 트리
import '../../question_tree.dart';

final Map<String, QuestionNode> bookBurnoutTree = {
  // ==================== depth 2: 상황/맥락 ====================
  'book_burnout_2_1': QuestionNode(
    question: '이 번아웃이 가장 선명하게 느껴지는 순간은 언제인가요?',
    options: [
      Option(text: '해야 할 일을 마주할 때', nextNodeKey: 'book_burnout_3_1'),
      Option(text: '아침에 하루를 시작할 때', nextNodeKey: 'book_burnout_3_2'),
      Option(text: '열심히 했는데 아무 의미가 없다고 느껴질 때', nextNodeKey: 'book_burnout_3_3'),
      Option(text: '계속 무언가를 요구받을 때', nextNodeKey: 'book_burnout_3_4'),
      Option(text: '특별한 순간 없이 늘', nextNodeKey: 'book_burnout_3_5'),
    ],
  ),

  // ==================== depth 3: 내적 독백 ====================
  'book_burnout_3_1': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"더 이상 할 수 없어"', nextNodeKey: 'book_burnout_4_1'),
      Option(text: '"이게 무슨 의미가 있지"', nextNodeKey: 'book_burnout_4_2'),
      Option(text: '"다 내려놓고 싶어"', nextNodeKey: 'book_burnout_4_3'),
      Option(text: '"이렇게까지 해야 하나"', nextNodeKey: 'book_burnout_4_4'),
      Option(text: '"나는 왜 이걸 하고 있지"', nextNodeKey: 'book_burnout_4_5'),
    ],
  ),
  'book_burnout_3_2': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"또 하루를 버텨야 하네"', nextNodeKey: 'book_burnout_4_1'),
      Option(text: '"일어나기가 싫어"', nextNodeKey: 'book_burnout_4_2'),
      Option(text: '"언제까지 이래야 하지"', nextNodeKey: 'book_burnout_4_3'),
      Option(text: '"오늘도 똑같은 하루겠지"', nextNodeKey: 'book_burnout_4_4'),
      Option(text: '"이미 지쳐서 시작도 못 하겠어"', nextNodeKey: 'book_burnout_4_5'),
    ],
  ),
  'book_burnout_3_3': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"이렇게 열심히 했는데"', nextNodeKey: 'book_burnout_4_1'),
      Option(text: '"내가 뭘 위해 이러는 거지"', nextNodeKey: 'book_burnout_4_2'),
      Option(text: '"다 허무해"', nextNodeKey: 'book_burnout_4_3'),
      Option(text: '"아무도 몰라줘"', nextNodeKey: 'book_burnout_4_4'),
      Option(text: '"이제 아무것도 중요하지 않아"', nextNodeKey: 'book_burnout_4_5'),
    ],
  ),
  'book_burnout_3_4': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"이제 더 이상 줄 게 없어"', nextNodeKey: 'book_burnout_4_1'),
      Option(text: '"계속 쏟아내기만 하는 것 같아"', nextNodeKey: 'book_burnout_4_2'),
      Option(text: '"나는 언제쯤 쉴 수 있지"', nextNodeKey: 'book_burnout_4_3'),
      Option(text: '"모두가 나한테서 뭔가를 원해"', nextNodeKey: 'book_burnout_4_4'),
      Option(text: '"나는 사라져도 될 것 같아"', nextNodeKey: 'book_burnout_4_5'),
    ],
  ),
  'book_burnout_3_5': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"언제부터 이렇게 됐지"', nextNodeKey: 'book_burnout_4_1'),
      Option(text: '"감정이 메말라버린 것 같아"', nextNodeKey: 'book_burnout_4_2'),
      Option(text: '"나 자신이 낯설어"', nextNodeKey: 'book_burnout_4_3'),
      Option(text: '"모든 게 무뎌졌어"', nextNodeKey: 'book_burnout_4_4'),
      Option(text: '"예전의 나는 어디 갔지"', nextNodeKey: 'book_burnout_4_5'),
    ],
  ),

  // ==================== depth 4: 감정 결 세분화 ====================
  'book_burnout_4_1': QuestionNode(
    question: '이 번아웃은 어떤 느낌에 가까운가요?',
    options: [
      Option(text: '다 타버린 재처럼', nextNodeKey: 'book_burnout_5_1'),
      Option(text: '완전히 소진된', nextNodeKey: 'book_burnout_5_2'),
      Option(text: '아무것도 남지 않은', nextNodeKey: 'book_burnout_5_3'),
      Option(text: '껍데기만 남은', nextNodeKey: 'book_burnout_5_4'),
      Option(text: '무감각해진', nextNodeKey: 'book_burnout_5_5'),
    ],
  ),
  'book_burnout_4_2': QuestionNode(
    question: '지금의 번아웃은 주로 어디에서 오는 것 같나요?',
    options: [
      Option(text: '계속된 과부하', nextNodeKey: 'book_burnout_5_1'),
      Option(text: '의미의 상실', nextNodeKey: 'book_burnout_5_2'),
      Option(text: '통제할 수 없는 상황', nextNodeKey: 'book_burnout_5_3'),
      Option(text: '인정받지 못하는 느낌', nextNodeKey: 'book_burnout_5_4'),
      Option(text: '모든 것이 복합적으로', nextNodeKey: 'book_burnout_5_5'),
    ],
  ),
  'book_burnout_4_3': QuestionNode(
    question: '이 번아웃이 당신에게 어떤 영향을 주고 있나요?',
    options: [
      Option(text: '아무것도 하고 싶지 않아요', nextNodeKey: 'book_burnout_5_1'),
      Option(text: '모든 게 무의미하게 느껴져요', nextNodeKey: 'book_burnout_5_2'),
      Option(text: '사람들로부터 멀어지게 돼요', nextNodeKey: 'book_burnout_5_3'),
      Option(text: '냉소적이 되어가요', nextNodeKey: 'book_burnout_5_4'),
      Option(text: '나 자신을 잃어버린 것 같아요', nextNodeKey: 'book_burnout_5_5'),
    ],
  ),
  'book_burnout_4_4': QuestionNode(
    question: '번아웃의 색깔을 고른다면 어떤 것일까요?',
    options: [
      Option(text: '재가 된 검은색', nextNodeKey: 'book_burnout_5_1'),
      Option(text: '생기 없는 회색', nextNodeKey: 'book_burnout_5_2'),
      Option(text: '바랜 갈색', nextNodeKey: 'book_burnout_5_3'),
      Option(text: '탁한 베이지', nextNodeKey: 'book_burnout_5_4'),
      Option(text: '색조차 없는', nextNodeKey: 'book_burnout_5_5'),
    ],
  ),
  'book_burnout_4_5': QuestionNode(
    question: '번아웃이 당신의 어디에 자리잡고 있나요?',
    options: [
      Option(text: '온몸 구석구석', nextNodeKey: 'book_burnout_5_1'),
      Option(text: '가슴 깊은 곳', nextNodeKey: 'book_burnout_5_2'),
      Option(text: '머리와 생각', nextNodeKey: 'book_burnout_5_3'),
      Option(text: '관계와 태도', nextNodeKey: 'book_burnout_5_4'),
      Option(text: '나의 전부가 되어버렸어요', nextNodeKey: 'book_burnout_5_5'),
    ],
  ),

  // ==================== depth 5: 욕구·부담 정도 ====================
  'book_burnout_5_1': QuestionNode(
    question: '지금 당신은 무엇을 원하고 있나요?',
    options: [
      Option(text: '이 상태를 이해하고 싶어요', nextNodeKey: 'book_burnout_6_1'),
      Option(text: '다시 의미를 찾고 싶어요', nextNodeKey: 'book_burnout_6_2'),
      Option(text: '회복할 수 있다는 걸 알고 싶어요', nextNodeKey: 'book_burnout_6_3'),
      Option(text: '그냥 쉬고 싶어요', nextNodeKey: 'book_burnout_6_4'),
      Option(text: '아무것도 원하지 않아요', nextNodeKey: 'book_burnout_6_5'),
    ],
  ),
  'book_burnout_5_2': QuestionNode(
    question: '지금 어떤 것이 필요한가요?',
    options: [
      Option(text: '번아웃을 깊이 이해하는 시간', nextNodeKey: 'book_burnout_6_1'),
      Option(text: '다시 의미를 발견하는 과정', nextNodeKey: 'book_burnout_6_2'),
      Option(text: '회복의 가능성을 보는 것', nextNodeKey: 'book_burnout_6_3'),
      Option(text: '부담 없는 쉼', nextNodeKey: 'book_burnout_6_4'),
      Option(text: '아무것도 필요 없어요', nextNodeKey: 'book_burnout_6_5'),
    ],
  ),
  'book_burnout_5_3': QuestionNode(
    question: '책을 읽을 여력이 있나요?',
    options: [
      Option(text: '천천히라면 읽을 수 있어요', nextNodeKey: 'book_burnout_6_1'),
      Option(text: '의미 있는 내용이라면 읽을 수 있어요', nextNodeKey: 'book_burnout_6_2'),
      Option(text: '희망적인 내용이라면 읽고 싶어요', nextNodeKey: 'book_burnout_6_3'),
      Option(text: '짧고 가벼운 것만 가능해요', nextNodeKey: 'book_burnout_6_4'),
      Option(text: '거의 없어요', nextNodeKey: 'book_burnout_6_5'),
    ],
  ),
  'book_burnout_5_4': QuestionNode(
    question: '어떤 책이 지금의 당신에게 닿을 수 있을까요?',
    options: [
      Option(text: '번아웃을 이해하는 책', nextNodeKey: 'book_burnout_6_1'),
      Option(text: '삶의 의미를 다시 찾는 책', nextNodeKey: 'book_burnout_6_2'),
      Option(text: '회복과 재충전을 다룬 책', nextNodeKey: 'book_burnout_6_3'),
      Option(text: '부담 없이 쉴 수 있는 책', nextNodeKey: 'book_burnout_6_4'),
      Option(text: '아무 책도 필요 없어요', nextNodeKey: 'book_burnout_6_5'),
    ],
  ),
  'book_burnout_5_5': QuestionNode(
    question: '무언가를 읽거나 생각할 에너지가 남아있나요?',
    options: [
      Option(text: '조금은 있어요', nextNodeKey: 'book_burnout_6_1'),
      Option(text: '의미를 찾는다면 낼 수 있어요', nextNodeKey: 'book_burnout_6_2'),
      Option(text: '희망이 보인다면 시도할 수 있어요', nextNodeKey: 'book_burnout_6_3'),
      Option(text: '거의 없어요', nextNodeKey: 'book_burnout_6_4'),
      Option(text: '완전히 소진됐어요', nextNodeKey: 'book_burnout_6_5'),
    ],
  ),

  // ==================== depth 6: 요약·공감 확인 ====================
  'book_burnout_6_1': QuestionNode(
    question:
        '지금 당신은, 번아웃 상태에 있지만 이것이 무엇인지 이해하고 싶어하는 상태이군요. 나에게 무슨 일이 일어난 건지 알고 싶은 마음이 느껴집니다.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_burnout_7_1'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_burnout_6_2'),
      Option(text: '비슷하지만 의미를 찾고 싶어요', nextNodeKey: 'book_burnout_6_2'),
      Option(text: '더 가벼운 게 필요해요', nextNodeKey: 'book_burnout_6_4'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_burnout_6_5'),
    ],
  ),
  'book_burnout_6_2': QuestionNode(
    question:
        '지금 당신은, 번아웃으로 의미를 잃었지만 다시 찾고 싶어하는 상태이군요. 내가 왜 이 일을 하는지, 무엇이 중요한지 다시 발견하고 싶은 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_burnout_7_2'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_burnout_6_3'),
      Option(text: '비슷하지만 우선 이해하고 싶어요', nextNodeKey: 'book_burnout_6_1'),
      Option(text: '너무 무거운 것 같아요', nextNodeKey: 'book_burnout_6_4'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_burnout_6_5'),
    ],
  ),
  'book_burnout_6_3': QuestionNode(
    question:
        '지금 당신은, 번아웃에서 벗어날 수 있다는 희망을 찾고 있는 상태이군요. 다시 회복할 수 있다는 걸 믿고 싶어하는 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_burnout_7_3'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_burnout_6_4'),
      Option(text: '비슷하지만 의미도 찾고 싶어요', nextNodeKey: 'book_burnout_6_2'),
      Option(text: '우선 이해하고 싶어요', nextNodeKey: 'book_burnout_6_1'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_burnout_6_5'),
    ],
  ),
  'book_burnout_6_4': QuestionNode(
    question:
        '지금 당신은, 번아웃으로 너무 지쳐서 부담 없이 쉴 곳이 필요한 상태이군요. 아무 요구도 받지 않고 그냥 머물고 싶은 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_burnout_7_4'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_burnout_6_5'),
      Option(text: '비슷하지만 희망도 보고 싶어요', nextNodeKey: 'book_burnout_6_3'),
      Option(text: '약간은 의미를 찾고 싶어요', nextNodeKey: 'book_burnout_6_2'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_burnout_6_5'),
    ],
  ),
  'book_burnout_6_5': QuestionNode(
    question:
        '지금 당신은, 완전히 소진되어 무엇이 필요한지조차 알기 어려운 상태이군요. 아무것도 하지 않아도 괜찮은 시간이 필요합니다.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_burnout_7_5'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_burnout_6_1'),
      Option(text: '비슷하지만 쉬고는 싶어요', nextNodeKey: 'book_burnout_6_4'),
      Option(text: '조금은 희망을 보고 싶어요', nextNodeKey: 'book_burnout_6_3'),
      Option(text: '처음부터 다시 시작할래요', nextNodeKey: 'book_burnout_2_1'),
    ],
  ),

  // ==================== depth 7: 결과 (bookTags 포함) ====================
  'book_burnout_7_1': QuestionNode(
    question:
        '당신은 지금, 번아웃을 이해하고 싶어하는 상태입니다. 나에게 무슨 일이 일어났는지, 이것이 무엇인지 알고 싶어합니다.',
    options: [
      Option(
        text: '번아웃 증후군 심리학서',
        nextNodeKey: 'end',
        bookTags: ['번아웃증후군', '임상심리학', '심리학', '진단', '이해'],
      ),
      Option(
        text: '과로사회 비판서',
        nextNodeKey: 'end',
        bookTags: ['과로사회', '사회비판', '번아웃', '자본주의비판', '현대사회'],
      ),
      Option(
        text: '현대인의 피로를 분석한 책',
        nextNodeKey: 'end',
        bookTags: ['현대사회', '피로', '번아웃', '사회학적', '분석'],
      ),
      Option(
        text: '감정노동 연구서',
        nextNodeKey: 'end',
        bookTags: ['감정노동', '사회학', '번아웃', '노동연구', '분석'],
      ),
      Option(
        text: '에너지 소진의 본질을 다룬 책',
        nextNodeKey: 'end',
        bookTags: ['에너지', '전문서', '번아웃', '치료', '회복법'],
      ),
    ],
  ),
  'book_burnout_7_2': QuestionNode(
    question:
        '당신은 지금, 번아웃으로 잃어버린 의미를 다시 찾고 싶어하는 상태입니다. 왜 이 일을 하는지, 무엇이 중요한지 재발견하고 싶어합니다.',
    options: [
      Option(
        text: '실존치료 안내서',
        nextNodeKey: 'end',
        bookTags: ['실존치료', '의미치료', '번아웃', '로고테라피', '심리치료'],
      ),
      Option(
        text: '커리어 재설계 가이드',
        nextNodeKey: 'end',
        bookTags: ['커리어', '재설계', '번아웃', '자기계발', '전환'],
      ),
      Option(
        text: '정체성 탐구 철학서',
        nextNodeKey: 'end',
        bookTags: ['정체성', '자아철학', '번아웃', '철학', '자기탐색'],
      ),
      Option(
        text: '가치관 정립 워크북',
        nextNodeKey: 'end',
        bookTags: ['가치관', '워크북', '번아웃', '실습서', '자기성찰'],
      ),
      Option(
        text: '인생 리셋 에세이',
        nextNodeKey: 'end',
        bookTags: ['인생리셋', '재시작', '번아웃', '에세이', '회고록'],
      ),
    ],
  ),
  'book_burnout_7_3': QuestionNode(
    question:
        '당신은 지금, 번아웃에서 회복할 수 있다는 희망을 찾고 있는 상태입니다. 다시 일어설 수 있다는 것을 믿고 싶어합니다.',
    options: [
      Option(
        text: '회복탄력성 심리학',
        nextNodeKey: 'end',
        bookTags: ['회복탄력성', '긍정심리학', '번아웃', 'resilience', '심리학'],
      ),
      Option(
        text: '재충전 실천 가이드',
        nextNodeKey: 'end',
        bookTags: ['재충전', '실천법', '번아웃', '회복', '자기관리'],
      ),
      Option(
        text: '다시 시작하는 법을 다룬 책',
        nextNodeKey: 'end',
        bookTags: ['역경극복', '회복스토리', '번아웃', '희망', '용기'],
      ),
      Option(
        text: '에너지 관리법',
        nextNodeKey: 'end',
        bookTags: ['에너지관리', '자기관리', '번아웃', '실용서', '생산성'],
      ),
      Option(
        text: '재도약 동기부여서',
        nextNodeKey: 'end',
        bookTags: ['재도약', '동기부여', '번아웃', '자기계발', '격려'],
      ),
    ],
  ),
  'book_burnout_7_4': QuestionNode(
    question:
        '당신은 지금, 번아웃으로 지쳐 부담 없이 쉴 곳이 필요한 상태입니다. 아무 요구도 받지 않고 그냥 머물고 싶어합니다.',
    options: [
      Option(
        text: '부담 없이 읽히는 쉼의 글',
        nextNodeKey: 'end',
        bookTags: ['쉼', '부담없는', '번아웃', '편안한', '위로'],
      ),
      Option(
        text: '천천히 쉬어가는 에세이',
        nextNodeKey: 'end',
        bookTags: ['휴식', '에세이', '번아웃', '느린', '평온'],
      ),
      Option(
        text: '아무것도 하지 않아도 되는 책',
        nextNodeKey: 'end',
        bookTags: ['무위', '쉼', '번아웃', '허용', '자유'],
      ),
      Option(
        text: '그냥 곁에 있어주는 이야기',
        nextNodeKey: 'end',
        bookTags: ['곁', '존재', '번아웃', '다정한', '포근한'],
      ),
      Option(
        text: '쉼표 같은 짧은 글',
        nextNodeKey: 'end',
        bookTags: ['쉼표', '짧은', '번아웃', '가벼운', '부담없는'],
      ),
    ],
  ),
  'book_burnout_7_5': QuestionNode(
    question: '당신은 지금, 완전히 소진된 상태입니다. 아무것도 하지 않아도 괜찮고, 책도 나중에 읽어도 됩니다.',
    options: [
      Option(
        text: '언제든 펼쳐도 되는 책',
        nextNodeKey: 'end',
        bookTags: ['언제든', '부담없는', '번아웃', '여유', '기다림'],
      ),
      Option(
        text: '그림과 사진이 많은 책',
        nextNodeKey: 'end',
        bookTags: ['시각적', '그림', '번아웃', '글없는', '감각적'],
      ),
      Option(
        text: '한 페이지씩만 봐도 되는 책',
        nextNodeKey: 'end',
        bookTags: ['짧은', '한페이지', '번아웃', '가벼운', '부담없는'],
      ),
      Option(
        text: '그냥 옆에 두기만 해도 좋은 책',
        nextNodeKey: 'end',
        bookTags: ['곁에두기', '존재감', '번아웃', '편안한', '안심'],
      ),
      Option(
        text: '준비됐을 때 읽을 수 있는 책',
        nextNodeKey: 'end',
        bookTags: ['미래', '준비', '번아웃', '여유', '기다림'],
      ),
    ],
  ),
};
