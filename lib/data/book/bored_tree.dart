// 심심 감정 - 책 추천 질문 트리
import '../../question_tree.dart';

final Map<String, QuestionNode> bookBoredTree = {
  // ==================== depth 2: 상황/맥락 ====================
  'book_bored_2_1': QuestionNode(
    question: '이 심심함이 가장 크게 느껴지는 순간은 언제인가요?',
    options: [
      Option(text: '할 일이 없을 때', nextNodeKey: 'book_bored_3_1'),
      Option(text: '같은 일상이 반복될 때', nextNodeKey: 'book_bored_3_2'),
      Option(text: '혼자 있을 때', nextNodeKey: 'book_bored_3_3'),
      Option(text: '뭔가 새로운 걸 찾고 있을 때', nextNodeKey: 'book_bored_3_4'),
      Option(text: '특별한 순간 없이 계속', nextNodeKey: 'book_bored_3_5'),
    ],
  ),

  // ==================== depth 3: 내적 독백 ====================
  'book_bored_3_1': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"뭐 할 게 없네"', nextNodeKey: 'book_bored_4_1'),
      Option(text: '"시간이 안 가"', nextNodeKey: 'book_bored_4_2'),
      Option(text: '"뭔가 재미있는 거 없을까"', nextNodeKey: 'book_bored_4_3'),
      Option(text: '"그냥 가만히 있기 싫어"', nextNodeKey: 'book_bored_4_4'),
      Option(text: '"무료해"', nextNodeKey: 'book_bored_4_5'),
    ],
  ),
  'book_bored_3_2': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"또 똑같은 하루야"', nextNodeKey: 'book_bored_4_1'),
      Option(text: '"뭔가 새로운 게 필요해"', nextNodeKey: 'book_bored_4_2'),
      Option(text: '"이 반복이 지겨워"', nextNodeKey: 'book_bored_4_3'),
      Option(text: '"변화가 없어"', nextNodeKey: 'book_bored_4_4'),
      Option(text: '"자극이 필요해"', nextNodeKey: 'book_bored_4_5'),
    ],
  ),
  'book_bored_3_3': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"혼자 있으니 더 심심해"', nextNodeKey: 'book_bored_4_1'),
      Option(text: '"누군가와 함께 있고 싶어"', nextNodeKey: 'book_bored_4_2'),
      Option(text: '"뭔가 하고 싶은데 뭘 할지 모르겠어"', nextNodeKey: 'book_bored_4_3'),
      Option(text: '"그냥 멍때리게 돼"', nextNodeKey: 'book_bored_4_4'),
      Option(text: '"이 공백이 불편해"', nextNodeKey: 'book_bored_4_5'),
    ],
  ),
  'book_bored_3_4': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"새로운 걸 찾고 있어"', nextNodeKey: 'book_bored_4_1'),
      Option(text: '"흥미로운 게 없네"', nextNodeKey: 'book_bored_4_2'),
      Option(text: '"뭔가 배우고 싶어"', nextNodeKey: 'book_bored_4_3'),
      Option(text: '"호기심이 생겼어"', nextNodeKey: 'book_bored_4_4'),
      Option(text: '"모험이 필요해"', nextNodeKey: 'book_bored_4_5'),
    ],
  ),
  'book_bored_3_5': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"아무것도 재미없어"', nextNodeKey: 'book_bored_4_1'),
      Option(text: '"뭘 해도 심심해"', nextNodeKey: 'book_bored_4_2'),
      Option(text: '"무감각해진 것 같아"', nextNodeKey: 'book_bored_4_3'),
      Option(text: '"에너지가 없어"', nextNodeKey: 'book_bored_4_4'),
      Option(text: '"이 상태가 답답해"', nextNodeKey: 'book_bored_4_5'),
    ],
  ),

  // ==================== depth 4: 감정 결 세분화 ====================
  'book_bored_4_1': QuestionNode(
    question: '이 심심함의 느낌은 어떤가요?',
    options: [
      Option(text: '텅 빈', nextNodeKey: 'book_bored_5_1'),
      Option(text: '무료한', nextNodeKey: 'book_bored_5_2'),
      Option(text: '갈증 나는', nextNodeKey: 'book_bored_5_3'),
      Option(text: '간질간질한', nextNodeKey: 'book_bored_5_4'),
      Option(text: '둔탁한', nextNodeKey: 'book_bored_5_5'),
    ],
  ),
  'book_bored_4_2': QuestionNode(
    question: '심심함의 색깔은 어떤가요?',
    options: [
      Option(text: '무채색의 회색', nextNodeKey: 'book_bored_5_1'),
      Option(text: '흐릿한 베이지', nextNodeKey: 'book_bored_5_2'),
      Option(text: '생기 없는 갈색', nextNodeKey: 'book_bored_5_3'),
      Option(text: '밋밋한 흰색', nextNodeKey: 'book_bored_5_4'),
      Option(text: '색조차 없는', nextNodeKey: 'book_bored_5_5'),
    ],
  ),
  'book_bored_4_3': QuestionNode(
    question: '심심함이 당신의 어디에 있나요?',
    options: [
      Option(text: '온몸을 나른하게 만들며', nextNodeKey: 'book_bored_5_1'),
      Option(text: '머릿속을 텅 비게 하며', nextNodeKey: 'book_bored_5_2'),
      Option(text: '손끝을 근질거리게 하며', nextNodeKey: 'book_bored_5_3'),
      Option(text: '가슴을 답답하게 하며', nextNodeKey: 'book_bored_5_4'),
      Option(text: '전체를 무감각하게 하며', nextNodeKey: 'book_bored_5_5'),
    ],
  ),
  'book_bored_4_4': QuestionNode(
    question: '심심함의 모양은 어떤가요?',
    options: [
      Option(text: '빈 방처럼', nextNodeKey: 'book_bored_5_1'),
      Option(text: '평평한 들판처럼', nextNodeKey: 'book_bored_5_2'),
      Option(text: '막힌 통로처럼', nextNodeKey: 'book_bored_5_3'),
      Option(text: '멈춘 시계처럼', nextNodeKey: 'book_bored_5_4'),
      Option(text: '형태 없는 구름처럼', nextNodeKey: 'book_bored_5_5'),
    ],
  ),
  'book_bored_4_5': QuestionNode(
    question: '심심함이 당신에게 어떤 영향을 주고 있나요?',
    options: [
      Option(text: '아무것도 하기 싫게 만들어요', nextNodeKey: 'book_bored_5_1'),
      Option(text: '뭔가 찾게 만들어요', nextNodeKey: 'book_bored_5_2'),
      Option(text: '안절부절하게 만들어요', nextNodeKey: 'book_bored_5_3'),
      Option(text: '멍하게 만들어요', nextNodeKey: 'book_bored_5_4'),
      Option(text: '무감각하게 만들어요', nextNodeKey: 'book_bored_5_5'),
    ],
  ),

  // ==================== depth 5: 욕구·부담 정도 ====================
  'book_bored_5_1': QuestionNode(
    question: '지금 당신은 무엇을 원하고 있나요?',
    options: [
      Option(text: '새로운 세계를 만나고 싶어요', nextNodeKey: 'book_bored_6_1'),
      Option(text: '재미있는 걸 찾고 싶어요', nextNodeKey: 'book_bored_6_2'),
      Option(text: '자극을 받고 싶어요', nextNodeKey: 'book_bored_6_3'),
      Option(text: '가볍게 시간을 보내고 싶어요', nextNodeKey: 'book_bored_6_4'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_bored_6_5'),
    ],
  ),
  'book_bored_5_2': QuestionNode(
    question: '지금 어떤 것이 필요한가요?',
    options: [
      Option(text: '새로운 경험', nextNodeKey: 'book_bored_6_1'),
      Option(text: '흥미로운 이야기', nextNodeKey: 'book_bored_6_2'),
      Option(text: '신선한 자극', nextNodeKey: 'book_bored_6_3'),
      Option(text: '가벼운 즐거움', nextNodeKey: 'book_bored_6_4'),
      Option(text: '아무것도 필요 없어요', nextNodeKey: 'book_bored_6_5'),
    ],
  ),
  'book_bored_5_3': QuestionNode(
    question: '어떤 책이 지금의 심심함을 달래줄 수 있을까요?',
    options: [
      Option(text: '완전히 새로운 세계로 데려가줄 책', nextNodeKey: 'book_bored_6_1'),
      Option(text: '재미있고 흥미진진한 책', nextNodeKey: 'book_bored_6_2'),
      Option(text: '호기심을 자극하는 책', nextNodeKey: 'book_bored_6_3'),
      Option(text: '가볍게 즐길 수 있는 책', nextNodeKey: 'book_bored_6_4'),
      Option(text: '아무 책도 필요 없어요', nextNodeKey: 'book_bored_6_5'),
    ],
  ),
  'book_bored_5_4': QuestionNode(
    question: '책을 읽을 에너지가 있나요?',
    options: [
      Option(text: '몰입할 수 있는 책이라면 충분해요', nextNodeKey: 'book_bored_6_1'),
      Option(text: '재미있다면 읽을 수 있어요', nextNodeKey: 'book_bored_6_2'),
      Option(text: '흥미롭다면 가능해요', nextNodeKey: 'book_bored_6_3'),
      Option(text: '가벼운 것이라면 괜찮아요', nextNodeKey: 'book_bored_6_4'),
      Option(text: '거의 없어요', nextNodeKey: 'book_bored_6_5'),
    ],
  ),
  'book_bored_5_5': QuestionNode(
    question: '이 심심함과 함께 무엇을 하고 싶나요?',
    options: [
      Option(text: '새로운 세계로 탈출하고 싶어요', nextNodeKey: 'book_bored_6_1'),
      Option(text: '재미있게 시간 보내고 싶어요', nextNodeKey: 'book_bored_6_2'),
      Option(text: '뭔가 배우고 싶어요', nextNodeKey: 'book_bored_6_3'),
      Option(text: '그냥 가볍게 있고 싶어요', nextNodeKey: 'book_bored_6_4'),
      Option(text: '아무것도 하고 싶지 않아요', nextNodeKey: 'book_bored_6_5'),
    ],
  ),

  // ==================== depth 6: 요약·공감 확인 ====================
  'book_bored_6_1': QuestionNode(
    question:
        '지금 당신은, 심심해서 완전히 새로운 세계를 만나고 싶어하는 상태이군요. 일상에서 벗어나 낯선 경험을 하고 싶은 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_bored_7_1'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_bored_6_2'),
      Option(text: '비슷하지만 재미도 원해요', nextNodeKey: 'book_bored_6_2'),
      Option(text: '더 가볍게 즐기고 싶어요', nextNodeKey: 'book_bored_6_4'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_bored_6_5'),
    ],
  ),
  'book_bored_6_2': QuestionNode(
    question:
        '지금 당신은, 심심해서 재미있고 흥미로운 걸 찾고 있는 상태이군요. 즐겁게 시간을 보낼 수 있는 무언가가 필요한 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_bored_7_2'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_bored_6_3'),
      Option(text: '비슷하지만 새로운 세계도 만나고 싶어요', nextNodeKey: 'book_bored_6_1'),
      Option(text: '더 가볍게 즐기고 싶어요', nextNodeKey: 'book_bored_6_4'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_bored_6_5'),
    ],
  ),
  'book_bored_6_3': QuestionNode(
    question:
        '지금 당신은, 심심해서 지적 호기심을 자극받고 싶어하는 상태이군요. 배우고 탐구하면서 심심함을 달래고 싶은 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_bored_7_3'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_bored_6_4'),
      Option(text: '비슷하지만 재미도 원해요', nextNodeKey: 'book_bored_6_2'),
      Option(text: '새로운 세계도 만나고 싶어요', nextNodeKey: 'book_bored_6_1'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_bored_6_5'),
    ],
  ),
  'book_bored_6_4': QuestionNode(
    question:
        '지금 당신은, 심심하지만 가볍게 시간을 보내고 싶어하는 상태이군요. 부담 없이 즐길 수 있는 무언가가 필요한 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_bored_7_4'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_bored_6_5'),
      Option(text: '비슷하지만 호기심도 자극받고 싶어요', nextNodeKey: 'book_bored_6_3'),
      Option(text: '재미있는 것도 원해요', nextNodeKey: 'book_bored_6_2'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_bored_6_5'),
    ],
  ),
  'book_bored_6_5': QuestionNode(
    question: '지금 당신은, 심심하지만 무엇을 원하는지 모르는 상태이군요. 심심함 자체를 있는 그대로 느끼고 있는 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_bored_7_5'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_bored_6_1'),
      Option(text: '비슷하지만 가볍게 즐기고는 싶어요', nextNodeKey: 'book_bored_6_4'),
      Option(text: '재미있는 걸 찾고는 싶어요', nextNodeKey: 'book_bored_6_2'),
      Option(text: '처음부터 다시 시작할래요', nextNodeKey: 'book_bored_2_1'),
    ],
  ),

  // ==================== depth 7: 결과 (bookTags 포함) ====================
  'book_bored_7_1': QuestionNode(
    question:
        '당신은 지금, 심심해서 완전히 새로운 세계를 만나고 싶어하는 상태입니다. 일상에서 벗어나 낯선 경험과 모험을 원하고 있습니다.',
    options: [
      Option(
        text: '대형 판타지 소설',
        nextNodeKey: 'end',
        bookTags: ['모험', '새로운세계', '심심', '판타지', '탈출'],
      ),
      Option(
        text: '우주를 배경으로 한 SF',
        nextNodeKey: 'end',
        bookTags: ['SF', '스페이스오페라', '심심', '흥미진진', '미지'],
      ),
      Option(
        text: '시간여행 모험 소설',
        nextNodeKey: 'end',
        bookTags: ['타임슬립', '모험소설', '심심', 'SF', '타임리프'],
      ),
      Option(
        text: '이세계 판타지',
        nextNodeKey: 'end',
        bookTags: ['이세계', '라이트노벨', '심심', '판타지', '전생물'],
      ),
      Option(
        text: '포스트아포칼립스 소설',
        nextNodeKey: 'end',
        bookTags: ['디스토피아', '포스트아포칼립스', '심심', 'SF', '생존'],
      ),
    ],
  ),
  'book_bored_7_2': QuestionNode(
    question:
        '당신은 지금, 심심해서 재미있고 흥미로운 것을 찾고 있는 상태입니다. 즐겁게 시간을 보낼 수 있는 이야기가 필요합니다.',
    options: [
      Option(
        text: '본격 추리 소설',
        nextNodeKey: 'end',
        bookTags: ['추리소설', '재미', '심심', '미스터리', '셜록홈즈'],
      ),
      Option(
        text: '스릴러 범죄 소설',
        nextNodeKey: 'end',
        bookTags: ['스릴러', '범죄소설', '심심', '서스펜스', '긴장감'],
      ),
      Option(
        text: '유쾌한 코미디 소설',
        nextNodeKey: 'end',
        bookTags: ['코미디소설', '유머', '심심', '영국유머', '경쾌한'],
      ),
      Option(
        text: '반전이 있는 소설',
        nextNodeKey: 'end',
        bookTags: ['반전', '소설', '심심', '흥미로운', '긴장감'],
      ),
      Option(
        text: '재미있는 인물들의 이야기',
        nextNodeKey: 'end',
        bookTags: ['스파이', '액션소설', '심심', '007', '첩보물'],
      ),
    ],
  ),
  'book_bored_7_3': QuestionNode(
    question: '당신은 지금, 심심해서 지적 호기심을 자극받고 싶어하는 상태입니다. 배우고 탐구하면서 심심함을 달래고 싶어합니다.',
    options: [
      Option(
        text: '교양 과학서',
        nextNodeKey: 'end',
        bookTags: ['과학', '호기심', '심심', '탐구', '흥미로운'],
      ),
      Option(
        text: '역사 추리 소설',
        nextNodeKey: 'end',
        bookTags: ['역사추리', '움베르토에코', '심심', '장미의이름', '중세'],
      ),
      Option(
        text: '뇌과학 대중서',
        nextNodeKey: 'end',
        bookTags: ['뇌과학', '올리버색스', '심심', '신경과학', '교양'],
      ),
      Option(
        text: '우주론 교양서',
        nextNodeKey: 'end',
        bookTags: ['우주론', '천체물리학', '심심', '칼세이건', '코스모스'],
      ),
      Option(
        text: '인간과 세계를 탐구하는 책',
        nextNodeKey: 'end',
        bookTags: ['인간', '세계', '심심', '탐구', '깊이있는'],
      ),
    ],
  ),
  'book_bored_7_4': QuestionNode(
    question: '당신은 지금, 심심하지만 가볍게 시간을 보내고 싶어하는 상태입니다. 부담 없이 즐길 수 있는 것이 필요합니다.',
    options: [
      Option(
        text: '가볍게 읽히는 소설',
        nextNodeKey: 'end',
        bookTags: ['가벼운', '소설', '심심', '부담없는', '경쾌한'],
      ),
      Option(
        text: '짧고 재미있는 이야기 모음',
        nextNodeKey: 'end',
        bookTags: ['짧은', '재미', '심심', '다양한', '가벼운'],
      ),
      Option(
        text: '편하게 읽는 에세이',
        nextNodeKey: 'end',
        bookTags: ['편한', '에세이', '심심', '가벼운', '일상적'],
      ),
      Option(
        text: '그림과 글이 있는 책',
        nextNodeKey: 'end',
        bookTags: ['그림', '시각적', '심심', '부담없는', '감각적'],
      ),
      Option(
        text: '유쾌한 만화나 웹툰',
        nextNodeKey: 'end',
        bookTags: ['만화', '유쾌한', '심심', '가벼운', '재미있는'],
      ),
    ],
  ),
  'book_bored_7_5': QuestionNode(
    question: '당신은 지금, 심심하지만 무엇을 원하는지 모르는 상태입니다. 그냥 이 심심함과 함께 있어도 괜찮습니다.',
    options: [
      Option(
        text: '아무 페이지나 펼쳐도 되는 책',
        nextNodeKey: 'end',
        bookTags: ['자유로운', '순서없는', '심심', '편안한', '부담없는'],
      ),
      Option(
        text: '그림이나 사진이 많은 책',
        nextNodeKey: 'end',
        bookTags: ['시각적', '그림', '심심', '감각적', '부담없는'],
      ),
      Option(
        text: '짧은 글 모음집',
        nextNodeKey: 'end',
        bookTags: ['짧은', '모음', '심심', '다양한', '가벼운'],
      ),
      Option(
        text: '언제든 집어들 수 있는 책',
        nextNodeKey: 'end',
        bookTags: ['언제든', '편한', '심심', '부담없는', '자유로운'],
      ),
      Option(
        text: '심심할 때 보기 좋은 잡지 같은 책',
        nextNodeKey: 'end',
        bookTags: ['잡지', '가벼운', '심심', '시각적', '다양한'],
      ),
    ],
  ),
};
