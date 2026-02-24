// 평범 감정 - 책 추천 질문 트리
import '../../question_tree.dart';

final Map<String, QuestionNode> bookNormalTree = {
  // ==================== depth 2: 상황/맥락 ====================
  'book_normal_2_1': QuestionNode(
    question: '오늘의 이 평범함은 어떤 느낌에 가까운가요?',
    options: [
      Option(text: '편안하고 고요한', nextNodeKey: 'book_normal_3_1'),
      Option(text: '특별할 것 없는 일상적인', nextNodeKey: 'book_normal_3_2'),
      Option(text: '잔잔하고 안정적인', nextNodeKey: 'book_normal_3_3'),
      Option(text: '밋밋하고 변화 없는', nextNodeKey: 'book_normal_3_4'),
      Option(text: '그냥 평범한', nextNodeKey: 'book_normal_3_5'),
    ],
  ),

  // ==================== depth 3: 내적 독백 ====================
  'book_normal_3_1': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"이 평온함이 좋아"', nextNodeKey: 'book_normal_4_1'),
      Option(text: '"아무 일도 없는 게 다행이야"', nextNodeKey: 'book_normal_4_2'),
      Option(text: '"이대로 괜찮아"', nextNodeKey: 'book_normal_4_3'),
      Option(text: '"마음이 편해"', nextNodeKey: 'book_normal_4_4'),
      Option(text: '"고요한 하루야"', nextNodeKey: 'book_normal_4_5'),
    ],
  ),
  'book_normal_3_2': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"그냥 평범한 하루네"', nextNodeKey: 'book_normal_4_1'),
      Option(text: '"특별한 건 없어"', nextNodeKey: 'book_normal_4_2'),
      Option(text: '"늘 하던 대로"', nextNodeKey: 'book_normal_4_3'),
      Option(text: '"뭐 그럭저럭"', nextNodeKey: 'book_normal_4_4'),
      Option(text: '"보통의 하루"', nextNodeKey: 'book_normal_4_5'),
    ],
  ),
  'book_normal_3_3': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"안정적이야"', nextNodeKey: 'book_normal_4_1'),
      Option(text: '"예측 가능한 하루"', nextNodeKey: 'book_normal_4_2'),
      Option(text: '"잔잔해"', nextNodeKey: 'book_normal_4_3'),
      Option(text: '"평온해"', nextNodeKey: 'book_normal_4_4'),
      Option(text: '"큰 감정이 없어"', nextNodeKey: 'book_normal_4_5'),
    ],
  ),
  'book_normal_3_4': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"변화가 없네"', nextNodeKey: 'book_normal_4_1'),
      Option(text: '"똑같은 일상"', nextNodeKey: 'book_normal_4_2'),
      Option(text: '"밋밋해"', nextNodeKey: 'book_normal_4_3'),
      Option(text: '"특별한 게 없어"', nextNodeKey: 'book_normal_4_4'),
      Option(text: '"그냥 흘러가는 시간"', nextNodeKey: 'book_normal_4_5'),
    ],
  ),
  'book_normal_3_5': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"그냥 그래"', nextNodeKey: 'book_normal_4_1'),
      Option(text: '"딱히 뭐라 할 말이 없어"', nextNodeKey: 'book_normal_4_2'),
      Option(text: '"그저 그런 하루"', nextNodeKey: 'book_normal_4_3'),
      Option(text: '"특별한 감정이 없어"', nextNodeKey: 'book_normal_4_4'),
      Option(text: '"평범해"', nextNodeKey: 'book_normal_4_5'),
    ],
  ),

  // ==================== depth 4: 감정 결 세분화 ====================
  'book_normal_4_1': QuestionNode(
    question: '이 평범함 속에서 어떤 느낌이 더 강한가요?',
    options: [
      Option(text: '만족스러운 평온함', nextNodeKey: 'book_normal_5_1'),
      Option(text: '담담한 일상성', nextNodeKey: 'book_normal_5_2'),
      Option(text: '고요한 안정감', nextNodeKey: 'book_normal_5_3'),
      Option(text: '밋밋한 무료함', nextNodeKey: 'book_normal_5_4'),
      Option(text: '중립적인 무감정', nextNodeKey: 'book_normal_5_5'),
    ],
  ),
  'book_normal_4_2': QuestionNode(
    question: '평범함의 색깔은 어떤가요?',
    options: [
      Option(text: '따뜻한 아이보리', nextNodeKey: 'book_normal_5_1'),
      Option(text: '차분한 베이지', nextNodeKey: 'book_normal_5_2'),
      Option(text: '편안한 연한 회색', nextNodeKey: 'book_normal_5_3'),
      Option(text: '밋밋한 회색', nextNodeKey: 'book_normal_5_4'),
      Option(text: '무채색', nextNodeKey: 'book_normal_5_5'),
    ],
  ),
  'book_normal_4_3': QuestionNode(
    question: '평범함이 당신에게 어떻게 느껴지나요?',
    options: [
      Option(text: '포근하게 감싸는', nextNodeKey: 'book_normal_5_1'),
      Option(text: '익숙하게 다가오는', nextNodeKey: 'book_normal_5_2'),
      Option(text: '고요하게 머무는', nextNodeKey: 'book_normal_5_3'),
      Option(text: '밋밋하게 흐르는', nextNodeKey: 'book_normal_5_4'),
      Option(text: '아무 느낌 없이 지나가는', nextNodeKey: 'book_normal_5_5'),
    ],
  ),
  'book_normal_4_4': QuestionNode(
    question: '평범함의 질감은 어떤가요?',
    options: [
      Option(text: '부드럽고 포근한', nextNodeKey: 'book_normal_5_1'),
      Option(text: '익숙하고 편안한', nextNodeKey: 'book_normal_5_2'),
      Option(text: '매끄럽고 고른', nextNodeKey: 'book_normal_5_3'),
      Option(text: '평평하고 단조로운', nextNodeKey: 'book_normal_5_4'),
      Option(text: '특징 없는', nextNodeKey: 'book_normal_5_5'),
    ],
  ),
  'book_normal_4_5': QuestionNode(
    question: '이 평범함이 당신에게 어떤 영향을 주고 있나요?',
    options: [
      Option(text: '마음이 편안해져요', nextNodeKey: 'book_normal_5_1'),
      Option(text: '익숙한 리듬에 몸을 맡겨요', nextNodeKey: 'book_normal_5_2'),
      Option(text: '고요하게 만들어요', nextNodeKey: 'book_normal_5_3'),
      Option(text: '조금 무료하게 만들어요', nextNodeKey: 'book_normal_5_4'),
      Option(text: '특별한 영향이 없어요', nextNodeKey: 'book_normal_5_5'),
    ],
  ),

  // ==================== depth 5: 욕구·부담 정도 ====================
  'book_normal_5_1': QuestionNode(
    question: '지금 당신은 무엇을 원하고 있나요?',
    options: [
      Option(text: '이 평온함을 더 깊이 느끼고 싶어요', nextNodeKey: 'book_normal_6_1'),
      Option(text: '일상의 소중함을 발견하고 싶어요', nextNodeKey: 'book_normal_6_2'),
      Option(text: '평범함 속 아름다움을 보고 싶어요', nextNodeKey: 'book_normal_6_3'),
      Option(text: '가볍게 시간을 보내고 싶어요', nextNodeKey: 'book_normal_6_4'),
      Option(text: '특별히 원하는 게 없어요', nextNodeKey: 'book_normal_6_5'),
    ],
  ),
  'book_normal_5_2': QuestionNode(
    question: '지금 어떤 것이 필요한가요?',
    options: [
      Option(text: '평범한 삶의 의미', nextNodeKey: 'book_normal_6_1'),
      Option(text: '일상의 가치 발견', nextNodeKey: 'book_normal_6_2'),
      Option(text: '소소한 행복 찾기', nextNodeKey: 'book_normal_6_3'),
      Option(text: '가벼운 즐거움', nextNodeKey: 'book_normal_6_4'),
      Option(text: '아무것도 필요 없어요', nextNodeKey: 'book_normal_6_5'),
    ],
  ),
  'book_normal_5_3': QuestionNode(
    question: '어떤 책이 지금의 평범한 기분과 어울릴까요?',
    options: [
      Option(text: '평범의 가치를 탐구하는 책', nextNodeKey: 'book_normal_6_1'),
      Option(text: '일상을 새롭게 보는 책', nextNodeKey: 'book_normal_6_2'),
      Option(text: '소소한 행복을 담은 책', nextNodeKey: 'book_normal_6_3'),
      Option(text: '편하게 읽히는 책', nextNodeKey: 'book_normal_6_4'),
      Option(text: '아무 책이나 괜찮아요', nextNodeKey: 'book_normal_6_5'),
    ],
  ),
  'book_normal_5_4': QuestionNode(
    question: '책을 읽을 여유가 있나요?',
    options: [
      Option(text: '천천히 생각하며 읽고 싶어요', nextNodeKey: 'book_normal_6_1'),
      Option(text: '일상을 돌아보며 읽고 싶어요', nextNodeKey: 'book_normal_6_2'),
      Option(text: '가볍게 읽고 싶어요', nextNodeKey: 'book_normal_6_3'),
      Option(text: '편하게 읽고 싶어요', nextNodeKey: 'book_normal_6_4'),
      Option(text: '굳이 안 읽어도 괜찮아요', nextNodeKey: 'book_normal_6_5'),
    ],
  ),
  'book_normal_5_5': QuestionNode(
    question: '이 평범한 시간에 무엇을 하고 싶나요?',
    options: [
      Option(text: '평범함에 대해 생각해보고 싶어요', nextNodeKey: 'book_normal_6_1'),
      Option(text: '일상을 새롭게 보고 싶어요', nextNodeKey: 'book_normal_6_2'),
      Option(text: '작은 것들을 즐기고 싶어요', nextNodeKey: 'book_normal_6_3'),
      Option(text: '그냥 편하게 있고 싶어요', nextNodeKey: 'book_normal_6_4'),
      Option(text: '딱히 뭘 하고 싶지 않아요', nextNodeKey: 'book_normal_6_5'),
    ],
  ),

  // ==================== depth 6: 요약·공감 확인 ====================
  'book_normal_6_1': QuestionNode(
    question:
        '지금 당신은, 평범한 상태를 느끼면서도 그 안의 의미를 탐구하고 싶어하는 상태이군요. 평범함이란 무엇인지, 왜 소중한지 생각해보고 싶은 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_normal_7_1'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_normal_6_2'),
      Option(text: '비슷하지만 일상도 돌아보고 싶어요', nextNodeKey: 'book_normal_6_2'),
      Option(text: '더 가볍게 즐기고 싶어요', nextNodeKey: 'book_normal_6_4'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_normal_6_5'),
    ],
  ),
  'book_normal_6_2': QuestionNode(
    question:
        '지금 당신은, 평범한 일상을 새로운 시각으로 보고 싶어하는 상태이군요. 매일의 순간들 속에서 가치와 아름다움을 발견하고 싶은 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_normal_7_2'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_normal_6_3'),
      Option(text: '비슷하지만 의미도 찾고 싶어요', nextNodeKey: 'book_normal_6_1'),
      Option(text: '더 가볍게 즐기고 싶어요', nextNodeKey: 'book_normal_6_4'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_normal_6_5'),
    ],
  ),
  'book_normal_6_3': QuestionNode(
    question:
        '지금 당신은, 평범한 하루 속에서 작은 행복들을 즐기고 싶어하는 상태이군요. 소소한 순간들을 음미하며 보내고 싶은 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_normal_7_3'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_normal_6_4'),
      Option(text: '비슷하지만 일상도 돌아보고 싶어요', nextNodeKey: 'book_normal_6_2'),
      Option(text: '의미도 찾고 싶어요', nextNodeKey: 'book_normal_6_1'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_normal_6_5'),
    ],
  ),
  'book_normal_6_4': QuestionNode(
    question:
        '지금 당신은, 평범하게 편안히 시간을 보내고 싶어하는 상태이군요. 부담 없이 자연스럽게 흘러가는 대로 두고 싶은 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_normal_7_4'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_normal_6_5'),
      Option(text: '비슷하지만 작은 행복도 찾고 싶어요', nextNodeKey: 'book_normal_6_3'),
      Option(text: '일상을 돌아보고도 싶어요', nextNodeKey: 'book_normal_6_2'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_normal_6_5'),
    ],
  ),
  'book_normal_6_5': QuestionNode(
    question:
        '지금 당신은, 평범한 상태 그대로를 느끼고 있는 상태이군요. 특별히 무언가를 원하지 않고 있는 그대로 괜찮은 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_normal_7_5'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_normal_6_1'),
      Option(text: '비슷하지만 편하게 즐기고 싶어요', nextNodeKey: 'book_normal_6_4'),
      Option(text: '작은 행복을 찾고 싶어요', nextNodeKey: 'book_normal_6_3'),
      Option(text: '처음부터 다시 시작할래요', nextNodeKey: 'book_normal_2_1'),
    ],
  ),

  // ==================== depth 7: 결과 (bookTags 포함) ====================
  'book_normal_7_1': QuestionNode(
    question:
        '당신은 지금, 평범함의 의미를 탐구하고 싶어하는 상태입니다. 일상과 평범함이 가진 가치에 대해 생각해보고 싶어습니다.',
    options: [
      Option(
        text: '일상 철학서',
        nextNodeKey: 'end',
        bookTags: ['일상철학', '생활철학', '평범', '사유', '의미'],
      ),
      Option(
        text: '슬로우 라이프 안내서',
        nextNodeKey: 'end',
        bookTags: ['슬로우라이프', '느린삶', '평범', '라이프스타일', '여유'],
      ),
      Option(
        text: '소시민 문학',
        nextNodeKey: 'end',
        bookTags: ['소시민문학', '보통사람', '평범', '문학', '공감'],
      ),
      Option(
        text: '평범의 아름다움을 담은 책',
        nextNodeKey: 'end',
        bookTags: ['아름다움', '평범', '일상', '발견', '서정적'],
      ),
      Option(
        text: '소박한 행복에 대한 성찰',
        nextNodeKey: 'end',
        bookTags: ['소박함', '행복', '평범', '성찰', '따뜻한'],
      ),
    ],
  ),
  'book_normal_7_2': QuestionNode(
    question:
        '당신은 지금, 평범한 일상을 새로운 시각으로 보고 싶어하는 상태입니다. 매일의 순간들 속에서 특별함을 발견하고 싶어합니다.',
    options: [
      Option(
        text: '일상을 새롭게 보는 에세이',
        nextNodeKey: 'end',
        bookTags: ['일상', '새로운시각', '평범', '에세이', '발견'],
      ),
      Option(
        text: '평범 속 특별함을 담은 책',
        nextNodeKey: 'end',
        bookTags: ['특별함', '발견', '평범', '일상', '감성적'],
      ),
      Option(
        text: '소소한 순간들의 이야기',
        nextNodeKey: 'end',
        bookTags: ['순간', '소소함', '평범', '이야기', '다정한'],
      ),
      Option(
        text: '계절 따라 사는 법',
        nextNodeKey: 'end',
        bookTags: ['계절', '자연', '평범', '라이프스타일', '순환'],
      ),
      Option(
        text: '평범한 것들의 의미',
        nextNodeKey: 'end',
        bookTags: ['의미', '평범', '발견', '일상', '깊이있는'],
      ),
    ],
  ),
  'book_normal_7_3': QuestionNode(
    question:
        '당신은 지금, 평범한 하루 속 작은 행복들을 즐기고 싶어하는 상태입니다. 소소한 순간들을 음미하며 보내고 싶어합니다.',
    options: [
      Option(
        text: '소소한 행복을 담은 에세이',
        nextNodeKey: 'end',
        bookTags: ['소소함', '행복', '평범', '에세이', '따뜻한'],
      ),
      Option(
        text: '집밥 에세이',
        nextNodeKey: 'end',
        bookTags: ['집밥', '요리', '평범', '일상', '소박'],
      ),
      Option(
        text: '반려식물 키우기',
        nextNodeKey: 'end',
        bookTags: ['반려식물', '가드닝', '평범', '일상', '키우기'],
      ),
      Option(
        text: '평범한 날들의 아름다움',
        nextNodeKey: 'end',
        bookTags: ['아름다움', '일상', '평범', '서정적', '따스한'],
      ),
      Option(
        text: '소소한 취미 일지',
        nextNodeKey: 'end',
        bookTags: ['취미', '일지', '평범', '일상', '기록'],
      ),
    ],
  ),
  'book_normal_7_4': QuestionNode(
    question:
        '당신은 지금, 평범하게 편안히 시간을 보내고 싶어하는 상태입니다. 부담 없이 자연스럽게 읽을 수 있는 것이 필요합니다.',
    options: [
      Option(
        text: '일상 만화',
        nextNodeKey: 'end',
        bookTags: ['일상만화', '웹툰', '평범', '공감', '편안'],
      ),
      Option(
        text: '잔잔한 일상 이야기',
        nextNodeKey: 'end',
        bookTags: ['잔잔한', '일상', '평범', '이야기', '포근한'],
      ),
      Option(
        text: '동네책방 에세이',
        nextNodeKey: 'end',
        bookTags: ['동네책방', '에세이', '평범', '로컬', '따뜻함'],
      ),
      Option(
        text: '생활 수필집',
        nextNodeKey: 'end',
        bookTags: ['수필', '생활', '평범', '담담함', '편안'],
      ),
      Option(
        text: '일상 단편소설',
        nextNodeKey: 'end',
        bookTags: ['단편', '일상소설', '평범', '공감', '부담없는'],
      ),
    ],
  ),
  'book_normal_7_5': QuestionNode(
    question: '당신은 지금, 평범한 상태 그대로를 느끼고 있습니다. 특별히 무언가를 원하지 않고, 있는 그대로 괜찮습니다.',
    options: [
      Option(
        text: '아무 페이지나 펼쳐도 되는 책',
        nextNodeKey: 'end',
        bookTags: ['자유로운', '순서없는', '평범', '편안한', '부담없는'],
      ),
      Option(
        text: '계절 요리책',
        nextNodeKey: 'end',
        bookTags: ['계절요리', '레시피', '평범', '집밥', '소박'],
      ),
      Option(
        text: '평일의 시집',
        nextNodeKey: 'end',
        bookTags: ['시집', '일상시', '평범', '소박', '담담'],
      ),
      Option(
        text: '동네 산책 가이드',
        nextNodeKey: 'end',
        bookTags: ['산책', '동네', '평범', '걷기', '여유'],
      ),
      Option(
        text: '있는 그대로의 이야기',
        nextNodeKey: 'end',
        bookTags: ['있는그대로', '평범', '자연스러운', '담담한', '편안한'],
      ),
    ],
  ),
};
