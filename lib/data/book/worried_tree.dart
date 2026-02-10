// 고민 감정 - 책 추천 질문 트리
import '../../question_tree.dart';

final Map<String, QuestionNode> bookWorriedTree = {
  // ==================== depth 2: 상황/맥락 ====================
  'book_worried_2_1': QuestionNode(
    question: '이 고민이 가장 무겁게 느껴지는 순간은 언제인가요?',
    options: [
      Option(text: '선택의 기로에 서 있을 때', nextNodeKey: 'book_worried_3_1'),
      Option(text: '혼자 생각에 잠길 때', nextNodeKey: 'book_worried_3_2'),
      Option(text: '결정을 내려야 할 때', nextNodeKey: 'book_worried_3_3'),
      Option(text: '밤에 잠들기 전', nextNodeKey: 'book_worried_3_4'),
      Option(text: '하루 종일', nextNodeKey: 'book_worried_3_5'),
    ],
  ),

  // ==================== depth 3: 내적 독백 ====================
  'book_worried_3_1': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"어느 쪽을 선택해야 할까"', nextNodeKey: 'book_worried_4_1'),
      Option(text: '"뭐가 맞는 건지 모르겠어"', nextNodeKey: 'book_worried_4_2'),
      Option(text: '"후회하지 않을까"', nextNodeKey: 'book_worried_4_3'),
      Option(text: '"모든 선택에 대가가 있어"', nextNodeKey: 'book_worried_4_4'),
      Option(text: '"답을 찾을 수 있을까"', nextNodeKey: 'book_worried_4_5'),
    ],
  ),
  'book_worried_3_2': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"계속 이 생각만 해"', nextNodeKey: 'book_worried_4_1'),
      Option(text: '"답이 안 나와"', nextNodeKey: 'book_worried_4_2'),
      Option(text: '"머릿속이 복잡해"', nextNodeKey: 'book_worried_4_3'),
      Option(text: '"누구에게 물어봐야 할까"', nextNodeKey: 'book_worried_4_4'),
      Option(text: '"이 고민에서 벗어나고 싶어"', nextNodeKey: 'book_worried_4_5'),
    ],
  ),
  'book_worried_3_3': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"지금 결정하기 어려워"', nextNodeKey: 'book_worried_4_1'),
      Option(text: '"확신이 없어"', nextNodeKey: 'book_worried_4_2'),
      Option(text: '"더 생각해봐야 할 것 같아"', nextNodeKey: 'book_worried_4_3'),
      Option(text: '"어떤 결과가 올지 모르겠어"', nextNodeKey: 'book_worried_4_4'),
      Option(text: '"시간이 더 필요해"', nextNodeKey: 'book_worried_4_5'),
    ],
  ),
  'book_worried_3_4': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"이것만 계속 생각나"', nextNodeKey: 'book_worried_4_1'),
      Option(text: '"잠이 안 와"', nextNodeKey: 'book_worried_4_2'),
      Option(text: '"내일이면 뭔가 달라질까"', nextNodeKey: 'book_worried_4_3'),
      Option(text: '"마음이 무거워"', nextNodeKey: 'book_worried_4_4'),
      Option(text: '"언제쯤 결론이 날까"', nextNodeKey: 'book_worried_4_5'),
    ],
  ),
  'book_worried_3_5': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"머릿속을 떠나지 않아"', nextNodeKey: 'book_worried_4_1'),
      Option(text: '"다른 걸 해도 신경 쓰여"', nextNodeKey: 'book_worried_4_2'),
      Option(text: '"언제부터 이렇게 고민했지"', nextNodeKey: 'book_worried_4_3'),
      Option(text: '"지쳐가고 있어"', nextNodeKey: 'book_worried_4_4'),
      Option(text: '"고민을 내려놓고 싶어"', nextNodeKey: 'book_worried_4_5'),
    ],
  ),

  // ==================== depth 4: 감정 결 세분화 ====================
  'book_worried_4_1': QuestionNode(
    question: '이 고민의 무게는 어떤가요?',
    options: [
      Option(text: '돌처럼 무거운', nextNodeKey: 'book_worried_5_1'),
      Option(text: '점점 무거워지는', nextNodeKey: 'book_worried_5_2'),
      Option(text: '적당히 부담되는', nextNodeKey: 'book_worried_5_3'),
      Option(text: '가볍지만 계속 신경 쓰이는', nextNodeKey: 'book_worried_5_4'),
      Option(text: '무게를 가늠하기 어려운', nextNodeKey: 'book_worried_5_5'),
    ],
  ),
  'book_worried_4_2': QuestionNode(
    question: '고민이 당신의 어디에 있나요?',
    options: [
      Option(text: '머릿속을 꽉 채우며', nextNodeKey: 'book_worried_5_1'),
      Option(text: '가슴에 담겨', nextNodeKey: 'book_worried_5_2'),
      Option(text: '어깨를 짓누르며', nextNodeKey: 'book_worried_5_3'),
      Option(text: '배 속을 채우며', nextNodeKey: 'book_worried_5_4'),
      Option(text: '온몸에 퍼져', nextNodeKey: 'book_worried_5_5'),
    ],
  ),
  'book_worried_4_3': QuestionNode(
    question: '고민의 모양은 어떤가요?',
    options: [
      Option(text: '실타래처럼 엉킨', nextNodeKey: 'book_worried_5_1'),
      Option(text: '갈림길처럼 나뉜', nextNodeKey: 'book_worried_5_2'),
      Option(text: '미로처럼 복잡한', nextNodeKey: 'book_worried_5_3'),
      Option(text: '구름처럼 흐릿한', nextNodeKey: 'book_worried_5_4'),
      Option(text: '물음표처럼 끝나지 않는', nextNodeKey: 'book_worried_5_5'),
    ],
  ),
  'book_worried_4_4': QuestionNode(
    question: '고민의 색깔은 어떤가요?',
    options: [
      Option(text: '어두운 회색', nextNodeKey: 'book_worried_5_1'),
      Option(text: '탁한 갈색', nextNodeKey: 'book_worried_5_2'),
      Option(text: '흐린 하늘색', nextNodeKey: 'book_worried_5_3'),
      Option(text: '희미한 베이지', nextNodeKey: 'book_worried_5_4'),
      Option(text: '색을 정하기 어려운', nextNodeKey: 'book_worried_5_5'),
    ],
  ),
  'book_worried_4_5': QuestionNode(
    question: '고민이 당신에게 어떤 영향을 주고 있나요?',
    options: [
      Option(text: '집중을 방해해요', nextNodeKey: 'book_worried_5_1'),
      Option(text: '마음을 무겁게 해요', nextNodeKey: 'book_worried_5_2'),
      Option(text: '결정을 못 하게 해요', nextNodeKey: 'book_worried_5_3'),
      Option(text: '계속 생각하게 만들어요', nextNodeKey: 'book_worried_5_4'),
      Option(text: '지치게 만들어요', nextNodeKey: 'book_worried_5_5'),
    ],
  ),

  // ==================== depth 5: 욕구·부담 정도 ====================
  'book_worried_5_1': QuestionNode(
    question: '지금 당신은 무엇을 원하고 있나요?',
    options: [
      Option(text: '명확한 답을 찾고 싶어요', nextNodeKey: 'book_worried_6_1'),
      Option(text: '고민을 정리하고 싶어요', nextNodeKey: 'book_worried_6_2'),
      Option(text: '다른 관점을 얻고 싶어요', nextNodeKey: 'book_worried_6_3'),
      Option(text: '마음의 평온을 찾고 싶어요', nextNodeKey: 'book_worried_6_4'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_worried_6_5'),
    ],
  ),
  'book_worried_5_2': QuestionNode(
    question: '지금 어떤 것이 필요한가요?',
    options: [
      Option(text: '결정을 내릴 힘', nextNodeKey: 'book_worried_6_1'),
      Option(text: '생각을 정돈하는 시간', nextNodeKey: 'book_worried_6_2'),
      Option(text: '새로운 시각', nextNodeKey: 'book_worried_6_3'),
      Option(text: '마음의 여유', nextNodeKey: 'book_worried_6_4'),
      Option(text: '아무것도 필요 없어요', nextNodeKey: 'book_worried_6_5'),
    ],
  ),
  'book_worried_5_3': QuestionNode(
    question: '어떤 책이 지금의 당신에게 도움이 될까요?',
    options: [
      Option(text: '결정에 대한 지혜를 담은 책', nextNodeKey: 'book_worried_6_1'),
      Option(text: '생각을 정리하는 법을 다룬 책', nextNodeKey: 'book_worried_6_2'),
      Option(text: '다양한 관점을 제시하는 책', nextNodeKey: 'book_worried_6_3'),
      Option(text: '마음을 편안하게 하는 책', nextNodeKey: 'book_worried_6_4'),
      Option(text: '아무 책도 필요 없어요', nextNodeKey: 'book_worried_6_5'),
    ],
  ),
  'book_worried_5_4': QuestionNode(
    question: '책을 읽을 여유가 있나요?',
    options: [
      Option(text: '천천히 읽으며 생각할 수 있어요', nextNodeKey: 'book_worried_6_1'),
      Option(text: '정리가 되는 내용이라면 읽고 싶어요', nextNodeKey: 'book_worried_6_2'),
      Option(text: '새로운 영감을 준다면 읽을 수 있어요', nextNodeKey: 'book_worried_6_3'),
      Option(text: '가볍게 읽을 수 있는 정도면 괜찮아요', nextNodeKey: 'book_worried_6_4'),
      Option(text: '거의 없어요', nextNodeKey: 'book_worried_6_5'),
    ],
  ),
  'book_worried_5_5': QuestionNode(
    question: '이 고민과 함께 무엇을 하고 싶나요?',
    options: [
      Option(text: '결론을 내리고 싶어요', nextNodeKey: 'book_worried_6_1'),
      Option(text: '차근차근 풀어가고 싶어요', nextNodeKey: 'book_worried_6_2'),
      Option(text: '다르게 바라보고 싶어요', nextNodeKey: 'book_worried_6_3'),
      Option(text: '잠시 내려놓고 싶어요', nextNodeKey: 'book_worried_6_4'),
      Option(text: '아무것도 하고 싶지 않아요', nextNodeKey: 'book_worried_6_5'),
    ],
  ),

  // ==================== depth 6: 요약·공감 확인 ====================
  'book_worried_6_1': QuestionNode(
    question:
        '지금 당신은, 고민 속에서 명확한 답을 찾고 싶어하는 상태이군요. 결정을 내리고 앞으로 나아가고 싶은 마음이 느껴집니다.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_worried_7_1'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_worried_6_2'),
      Option(text: '비슷하지만 정리하고도 싶어요', nextNodeKey: 'book_worried_6_2'),
      Option(text: '더 여유롭게 생각하고 싶어요', nextNodeKey: 'book_worried_6_4'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_worried_6_5'),
    ],
  ),
  'book_worried_6_2': QuestionNode(
    question:
        '지금 당신은, 고민을 정리하고 싶어하는 상태이군요. 복잡한 생각들을 차근차근 풀어가며 명료함을 찾고 싶은 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_worried_7_2'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_worried_6_3'),
      Option(text: '비슷하지만 답을 찾고도 싶어요', nextNodeKey: 'book_worried_6_1'),
      Option(text: '더 편안해지고 싶어요', nextNodeKey: 'book_worried_6_4'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_worried_6_5'),
    ],
  ),
  'book_worried_6_3': QuestionNode(
    question:
        '지금 당신은, 고민을 다른 관점에서 보고 싶어하는 상태이군요. 새로운 시각과 영감을 통해 돌파구를 찾고 싶은 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_worried_7_3'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_worried_6_4'),
      Option(text: '비슷하지만 정리하고도 싶어요', nextNodeKey: 'book_worried_6_2'),
      Option(text: '답을 찾고도 싶어요', nextNodeKey: 'book_worried_6_1'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_worried_6_5'),
    ],
  ),
  'book_worried_6_4': QuestionNode(
    question: '지금 당신은, 고민으로 지쳐있고 마음의 평온이 필요한 상태이군요. 잠시 고민을 내려놓고 쉬고 싶은 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_worried_7_4'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_worried_6_5'),
      Option(text: '비슷하지만 다른 시각도 얻고 싶어요', nextNodeKey: 'book_worried_6_3'),
      Option(text: '정리하고도 싶어요', nextNodeKey: 'book_worried_6_2'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_worried_6_5'),
    ],
  ),
  'book_worried_6_5': QuestionNode(
    question:
        '지금 당신은, 고민이 너무 복잡해서 무엇이 필요한지조차 알기 어려운 상태이군요. 조금 더 시간을 두고 천천히 생각해도 괜찮습니다.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_worried_7_5'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_worried_6_1'),
      Option(text: '비슷하지만 쉬고는 싶어요', nextNodeKey: 'book_worried_6_4'),
      Option(text: '다른 관점을 얻고 싶어요', nextNodeKey: 'book_worried_6_3'),
      Option(text: '처음부터 다시 시작할래요', nextNodeKey: 'book_worried_2_1'),
    ],
  ),

  // ==================== depth 7: 결과 (bookTags 포함) ====================
  'book_worried_7_1': QuestionNode(
    question: '당신은 지금, 고민 속에서 명확한 답을 찾고 싶어하는 상태입니다. 결정을 내리고 앞으로 나아갈 힘이 필요합니다.',
    options: [
      Option(
        text: '결정에 대한 지혜',
        nextNodeKey: 'end',
        bookTags: ['결정', '지혜', '고민', '선택', '명확함'],
      ),
      Option(
        text: '선택 심리학',
        nextNodeKey: 'end',
        bookTags: ['선택심리', '행동경제학', '고민', '과학', '통찰'],
      ),
      Option(
        text: '갈림길에 선 이들의 이야기',
        nextNodeKey: 'end',
        bookTags: ['갈림길', '선택', '고민', '이야기', '공감'],
      ),
      Option(
        text: '딜레마 해결 사례집',
        nextNodeKey: 'end',
        bookTags: ['딜레마', '사례연구', '고민', '해결', '케이스'],
      ),
      Option(
        text: '결단의 순간들',
        nextNodeKey: 'end',
        bookTags: ['결단', '리더십', '고민', '실화', '용기'],
      ),
    ],
  ),
  'book_worried_7_2': QuestionNode(
    question: '당신은 지금, 고민을 정리하고 싶어하는 상태입니다. 복잡한 생각들을 차근차근 풀어가며 명료함을 찾고 싶어합니다.',
    options: [
      Option(
        text: '생각 정리법',
        nextNodeKey: 'end',
        bookTags: ['사고정리', '방법', '고민', '명료', '논리'],
      ),
      Option(
        text: '마인드맵 활용법',
        nextNodeKey: 'end',
        bookTags: ['마인드맵', '정리기술', '고민', '시각화', '실용'],
      ),
      Option(
        text: '문제 분석 프레임워크',
        nextNodeKey: 'end',
        bookTags: ['문제분석', '프레임워크', '고민', '방법론', '전략'],
      ),
      Option(
        text: '저널링 워크북',
        nextNodeKey: 'end',
        bookTags: ['저널링', '워크북', '고민', '글쓰기', '정리'],
      ),
      Option(
        text: '사고의 흐름을 다듬는 책',
        nextNodeKey: 'end',
        bookTags: ['사고', '다듬기', '고민', '명료', '체계적'],
      ),
    ],
  ),
  'book_worried_7_3': QuestionNode(
    question:
        '당신은 지금, 고민을 다른 관점에서 보고 싶어하는 상태입니다. 새로운 시각과 영감을 통해 돌파구를 찾고 싶어합니다.',
    options: [
      Option(
        text: '창의적 문제해결',
        nextNodeKey: 'end',
        bookTags: ['창의성', '문제해결', '고민', '혁신', '아이디어'],
      ),
      Option(
        text: '다양한 삶의 방식을 담은 책',
        nextNodeKey: 'end',
        bookTags: ['다양성', '삶', '고민', '영감', '확장'],
      ),
      Option(
        text: '역발상 사고법',
        nextNodeKey: 'end',
        bookTags: ['역발상', '사고법', '고민', '창의적', '전환'],
      ),
      Option(
        text: '새로운 시각을 주는 소설',
        nextNodeKey: 'end',
        bookTags: ['시각', '소설', '고민', '영감', '문학적'],
      ),
      Option(
        text: '브레인스토밍 기법',
        nextNodeKey: 'end',
        bookTags: ['브레인스토밍', '아이디어', '고민', '창의', '기법'],
      ),
    ],
  ),
  'book_worried_7_4': QuestionNode(
    question: '당신은 지금, 고민으로 지쳐 마음의 평온이 필요한 상태입니다. 잠시 고민을 내려놓고 쉬고 싶어합니다.',
    options: [
      Option(
        text: '심리상담 가이드',
        nextNodeKey: 'end',
        bookTags: ['심리상담', '상담', '고민', '치유', '전문적'],
      ),
      Option(
        text: '마음의 여유를 찾는 에세이',
        nextNodeKey: 'end',
        bookTags: ['여유', '에세이', '고민', '평온', '위로'],
      ),
      Option(
        text: '스트레스 관리법',
        nextNodeKey: 'end',
        bookTags: ['스트레스관리', '멘탈케어', '고민', '실용', '건강'],
      ),
      Option(
        text: '멘탈 회복 프로그램',
        nextNodeKey: 'end',
        bookTags: ['멘탈회복', '프로그램', '고민', '체계적', '실천'],
      ),
      Option(
        text: '마음 챙김 명상법',
        nextNodeKey: 'end',
        bookTags: ['마음챙김', '명상법', '고민', '평온', '실천'],
      ),
    ],
  ),
  'book_worried_7_5': QuestionNode(
    question:
        '당신은 지금, 고민이 너무 복잡한 상태입니다. 조금 더 시간을 두고 천천히 생각해도 괜찮고, 책은 나중에 읽어도 됩니다.',
    options: [
      Option(
        text: '짧은 생각 조각들',
        nextNodeKey: 'end',
        bookTags: ['짧은', '단상', '고민', '부담없는', '가벼운'],
      ),
      Option(
        text: '보류의 지혜',
        nextNodeKey: 'end',
        bookTags: ['보류', '판단유예', '고민', '여유', '현명함'],
      ),
      Option(
        text: '언제든 펼쳐도 되는 책',
        nextNodeKey: 'end',
        bookTags: ['언제든', '자유로운', '고민', '여유', '편안한'],
      ),
      Option(
        text: '불확실성과 함께 살기',
        nextNodeKey: 'end',
        bookTags: ['불확실성', '수용', '고민', '적응', '유연성'],
      ),
      Option(
        text: '결정을 기다리는 법',
        nextNodeKey: 'end',
        bookTags: ['기다림', '인내', '고민', '성숙', '시간'],
      ),
    ],
  ),
};
