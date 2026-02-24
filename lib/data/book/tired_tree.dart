// 피로 감정 - 책 추천 질문 트리
import '../../question_tree.dart';

final Map<String, QuestionNode> bookTiredTree = {
  // ==================== depth 2: 상황/맥락 ====================
  'book_tired_2_1': QuestionNode(
    question: '이 피로함이 가장 무겁게 느껴지는 순간은 언제인가요?',
    options: [
      Option(text: '아침에 눈을 뜨는 순간부터', nextNodeKey: 'book_tired_3_1'),
      Option(text: '하루 일과를 시작하려 할 때', nextNodeKey: 'book_tired_3_2'),
      Option(text: '사람들을 만나야 할 때', nextNodeKey: 'book_tired_3_3'),
      Option(text: '저녁이 되어 혼자 남았을 때', nextNodeKey: 'book_tired_3_4'),
      Option(text: '특별한 순간 없이 계속', nextNodeKey: 'book_tired_3_5'),
    ],
  ),

  // ==================== depth 3: 내적 독백 ====================
  'book_tired_3_1': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"아직도 하루를 시작하네"', nextNodeKey: 'book_tired_4_1'),
      Option(text: '"쉬어도 피곤해"', nextNodeKey: 'book_tired_4_2'),
      Option(text: '"언제쯤 회복될까"', nextNodeKey: 'book_tired_4_3'),
      Option(text: '"일어나기가 너무 힘들어"', nextNodeKey: 'book_tired_4_4'),
      Option(text: '"이미 지쳐있어"', nextNodeKey: 'book_tired_4_5'),
    ],
  ),
  'book_tired_3_2': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"뭐부터 시작하지"', nextNodeKey: 'book_tired_4_1'),
      Option(text: '"할 수 있을까"', nextNodeKey: 'book_tired_4_2'),
      Option(text: '"에너지가 없어"', nextNodeKey: 'book_tired_4_3'),
      Option(text: '"그냥 쉬고 싶어"', nextNodeKey: 'book_tired_4_4'),
      Option(text: '"아무것도 하고 싶지 않아"', nextNodeKey: 'book_tired_4_5'),
    ],
  ),
  'book_tired_3_3': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"사람 만나기도 힘들어"', nextNodeKey: 'book_tired_4_1'),
      Option(text: '"말하는 것도 피곤해"', nextNodeKey: 'book_tired_4_2'),
      Option(text: '"웃을 힘도 없어"', nextNodeKey: 'book_tired_4_3'),
      Option(text: '"그냥 혼자 있고 싶어"', nextNodeKey: 'book_tired_4_4'),
      Option(text: '"아무도 만나고 싶지 않아"', nextNodeKey: 'book_tired_4_5'),
    ],
  ),
  'book_tired_3_4': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"드디어 혼자네"', nextNodeKey: 'book_tired_4_1'),
      Option(text: '"오늘도 버텼네"', nextNodeKey: 'book_tired_4_2'),
      Option(text: '"너무 지쳐"', nextNodeKey: 'book_tired_4_3'),
      Option(text: '"쉬고 싶은데 어떻게 쉬는 거지"', nextNodeKey: 'book_tired_4_4'),
      Option(text: '"그냥 멈추고 싶어"', nextNodeKey: 'book_tired_4_5'),
    ],
  ),
  'book_tired_3_5': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '"피곤이 쌓여만 가"', nextNodeKey: 'book_tired_4_1'),
      Option(text: '"회복이 안 돼"', nextNodeKey: 'book_tired_4_2'),
      Option(text: '"언제부터 이랬지"', nextNodeKey: 'book_tired_4_3'),
      Option(text: '"몸도 마음도 무거워"', nextNodeKey: 'book_tired_4_4'),
      Option(text: '"한계인 것 같아"', nextNodeKey: 'book_tired_4_5'),
    ],
  ),

  // ==================== depth 4: 감정 결 세분화 ====================
  'book_tired_4_1': QuestionNode(
    question: '이 피로는 어디서 시작된 것 같나요?',
    options: [
      Option(text: '몸이 먼저 지쳤어요', nextNodeKey: 'book_tired_5_1'),
      Option(text: '마음이 먼저 지쳤어요', nextNodeKey: 'book_tired_5_2'),
      Option(text: '몸과 마음이 함께 지쳤어요', nextNodeKey: 'book_tired_5_3'),
      Option(text: '정신적으로 소진된 것 같아요', nextNodeKey: 'book_tired_5_4'),
      Option(text: '어디서 시작됐는지 모르겠어요', nextNodeKey: 'book_tired_5_5'),
    ],
  ),
  'book_tired_4_2': QuestionNode(
    question: '이 피로의 질감은 어떤가요?',
    options: [
      Option(text: '무겁게 짓눌리는', nextNodeKey: 'book_tired_5_1'),
      Option(text: '온몸에 스며든', nextNodeKey: 'book_tired_5_2'),
      Option(text: '굳어버린', nextNodeKey: 'book_tired_5_3'),
      Option(text: '녹아내리는', nextNodeKey: 'book_tired_5_4'),
      Option(text: '형태를 잃어버린', nextNodeKey: 'book_tired_5_5'),
    ],
  ),
  'book_tired_4_3': QuestionNode(
    question: '피로가 당신의 어디에 머물고 있나요?',
    options: [
      Option(text: '어깨와 목에', nextNodeKey: 'book_tired_5_1'),
      Option(text: '가슴과 배에', nextNodeKey: 'book_tired_5_2'),
      Option(text: '온몸 전체에', nextNodeKey: 'book_tired_5_3'),
      Option(text: '머리와 정신에', nextNodeKey: 'book_tired_5_4'),
      Option(text: '구분할 수 없을 만큼 곳곳에', nextNodeKey: 'book_tired_5_5'),
    ],
  ),
  'book_tired_4_4': QuestionNode(
    question: '이 피로는 어떤 색깔인가요?',
    options: [
      Option(text: '탁한 회색', nextNodeKey: 'book_tired_5_1'),
      Option(text: '무거운 갈색', nextNodeKey: 'book_tired_5_2'),
      Option(text: '흐릿한 베이지', nextNodeKey: 'book_tired_5_3'),
      Option(text: '가라앉은 파란색', nextNodeKey: 'book_tired_5_4'),
      Option(text: '색조차 없는', nextNodeKey: 'book_tired_5_5'),
    ],
  ),
  'book_tired_4_5': QuestionNode(
    question: '피로가 당신을 어떻게 대하고 있나요?',
    options: [
      Option(text: '짓누르고 있어요', nextNodeKey: 'book_tired_5_1'),
      Option(text: '감싸고 있어요', nextNodeKey: 'book_tired_5_2'),
      Option(text: '잡아당기고 있어요', nextNodeKey: 'book_tired_5_3'),
      Option(text: '녹여버리고 있어요', nextNodeKey: 'book_tired_5_4'),
      Option(text: '나 자체가 되어버렸어요', nextNodeKey: 'book_tired_5_5'),
    ],
  ),

  // ==================== depth 5: 욕구·부담 정도 ====================
  'book_tired_5_1': QuestionNode(
    question: '지금 당신은 무엇을 원하고 있나요?',
    options: [
      Option(text: '이 피로의 원인을 이해하고 싶어요', nextNodeKey: 'book_tired_6_1'),
      Option(text: '마음의 휴식이 필요해요', nextNodeKey: 'book_tired_6_2'),
      Option(text: '조용히 쉬고 싶어요', nextNodeKey: 'book_tired_6_3'),
      Option(text: '아무것도 하지 않고 싶어요', nextNodeKey: 'book_tired_6_4'),
      Option(text: '생각조차 하기 싫어요', nextNodeKey: 'book_tired_6_5'),
    ],
  ),
  'book_tired_5_2': QuestionNode(
    question: '지금 어떤 것이 필요한가요?',
    options: [
      Option(text: '나를 이해하는 시간', nextNodeKey: 'book_tired_6_1'),
      Option(text: '마음을 쉬게 하는 위로', nextNodeKey: 'book_tired_6_2'),
      Option(text: '부담 없는 쉼', nextNodeKey: 'book_tired_6_3'),
      Option(text: '아무것도 요구하지 않는 공간', nextNodeKey: 'book_tired_6_4'),
      Option(text: '아무것도 필요 없어요', nextNodeKey: 'book_tired_6_5'),
    ],
  ),
  'book_tired_5_3': QuestionNode(
    question: '책을 읽을 수 있는 에너지가 있나요?',
    options: [
      Option(text: '천천히라면 읽을 수 있어요', nextNodeKey: 'book_tired_6_1'),
      Option(text: '가벼운 책이라면 괜찮아요', nextNodeKey: 'book_tired_6_2'),
      Option(text: '짧은 글 정도만 가능해요', nextNodeKey: 'book_tired_6_3'),
      Option(text: '거의 없어요', nextNodeKey: 'book_tired_6_4'),
      Option(text: '전혀 없어요', nextNodeKey: 'book_tired_6_5'),
    ],
  ),
  'book_tired_5_4': QuestionNode(
    question: '어떤 책이 지금의 당신에게 맞을까요?',
    options: [
      Option(text: '피로를 이해하는 책', nextNodeKey: 'book_tired_6_1'),
      Option(text: '마음을 다독이는 책', nextNodeKey: 'book_tired_6_2'),
      Option(text: '부담 없이 읽히는 책', nextNodeKey: 'book_tired_6_3'),
      Option(text: '그냥 곁에 두는 책', nextNodeKey: 'book_tired_6_4'),
      Option(text: '아무 책도 필요 없어요', nextNodeKey: 'book_tired_6_5'),
    ],
  ),
  'book_tired_5_5': QuestionNode(
    question: '지금 무언가를 생각하거나 느낄 여력이 있나요?',
    options: [
      Option(text: '조금은 있어요', nextNodeKey: 'book_tired_6_1'),
      Option(text: '가볍게만 가능해요', nextNodeKey: 'book_tired_6_2'),
      Option(text: '거의 없지만 조용히 있고 싶어요', nextNodeKey: 'book_tired_6_3'),
      Option(text: '전혀 없어요', nextNodeKey: 'book_tired_6_4'),
      Option(text: '생각하기도 힘들어요', nextNodeKey: 'book_tired_6_5'),
    ],
  ),

  // ==================== depth 6: 요약·공감 확인 ====================
  'book_tired_6_1': QuestionNode(
    question:
        '지금 당신은, 몸과 마음이 지쳐있지만 이 피로의 의미를 이해하고 싶어하는 상태이군요. 단순히 쉬는 것을 넘어 자신을 돌아보려는 마음이 있습니다.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_tired_7_1'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_tired_6_2'),
      Option(text: '비슷하지만 더 가볍게 접근하고 싶어요', nextNodeKey: 'book_tired_6_3'),
      Option(text: '너무 무거운 것 같아요', nextNodeKey: 'book_tired_6_4'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_tired_6_5'),
    ],
  ),
  'book_tired_6_2': QuestionNode(
    question:
        '지금 당신은, 피로한 마음에 위로와 다독임이 필요한 상태이군요. 쉬면서도 마음이 편안해질 수 있는 무언가를 찾고 있는 것 같아요.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_tired_7_2'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_tired_6_3'),
      Option(text: '비슷하지만 더 이해받고 싶어요', nextNodeKey: 'book_tired_6_1'),
      Option(text: '더 가벼웠으면 해요', nextNodeKey: 'book_tired_6_4'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_tired_6_5'),
    ],
  ),
  'book_tired_6_3': QuestionNode(
    question:
        '지금 당신은, 피로에 지쳐 있고 부담 없이 쉴 수 있는 공간이 필요한 상태이군요. 아무것도 하지 않아도 괜찮은 시간이 필요합니다.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_tired_7_3'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_tired_6_4'),
      Option(text: '비슷하지만 약간의 위로는 원해요', nextNodeKey: 'book_tired_6_2'),
      Option(text: '좀 더 이해받고 싶어요', nextNodeKey: 'book_tired_6_1'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_tired_6_5'),
    ],
  ),
  'book_tired_6_4': QuestionNode(
    question:
        '지금 당신은, 너무 지쳐서 아무것도 할 수 없는 상태이군요. 그 어떤 것도 요구받지 않고 그저 있는 것만으로도 충분합니다.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_tired_7_4'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_tired_6_5'),
      Option(text: '비슷하지만 조용히 쉬고 싶어요', nextNodeKey: 'book_tired_6_3'),
      Option(text: '약간은 위로받고 싶어요', nextNodeKey: 'book_tired_6_2'),
      Option(text: '잘 모르겠어요', nextNodeKey: 'book_tired_6_5'),
    ],
  ),
  'book_tired_6_5': QuestionNode(
    question:
        '지금 당신은, 피로 너머의 상태에 있어서 무엇이 필요한지조차 알기 어려운 상태이군요. 어떤 시도도 하지 않아도 괜찮습니다.',
    options: [
      Option(text: '네, 맞아요', nextNodeKey: 'book_tired_7_5'),
      Option(text: '조금 다른 것 같아요', nextNodeKey: 'book_tired_6_1'),
      Option(text: '비슷하지만 쉬고는 싶어요', nextNodeKey: 'book_tired_6_4'),
      Option(text: '조금은 편안해지고 싶어요', nextNodeKey: 'book_tired_6_3'),
      Option(text: '처음부터 다시 시작할래요', nextNodeKey: 'book_tired_2_1'),
    ],
  ),

  // ==================== depth 7: 결과 (bookTags 포함) ====================
  'book_tired_7_1': QuestionNode(
    question:
        '당신은 지금, 피로한 상태이지만 그 안에서 나 자신을 이해하고 싶어하는 상태입니다. 쉼과 성찰을 함께 원하고 있습니다.',
    options: [
      Option(
        text: '지친 마음을 이해하는 에세이',
        nextNodeKey: 'end',
        bookTags: ['피로', '이해', '에세이', '성찰', '공감'],
      ),
      Option(
        text: '휴식의 과학',
        nextNodeKey: 'end',
        bookTags: ['휴식과학', '수면', '피로', '뇌과학', '회복'],
      ),
      Option(
        text: '번아웃을 다룬 심리서',
        nextNodeKey: 'end',
        bookTags: ['번아웃', '심리', '피로', '이해', '해결'],
      ),
      Option(
        text: '일과 삶의 균형 에세이',
        nextNodeKey: 'end',
        bookTags: ['워라밸', '삶의균형', '피로', '성찰', '라이프스타일'],
      ),
      Option(
        text: '자기돌봄 안내서',
        nextNodeKey: 'end',
        bookTags: ['자기돌봄', '셀프케어', '피로', '실용서', '치유'],
      ),
    ],
  ),
  'book_tired_7_2': QuestionNode(
    question:
        '당신은 지금, 피로한 마음에 따뜻한 위로와 다독임이 필요한 상태입니다. 쉬면서 마음이 편안해질 수 있는 부드러운 이야기가 필요합니다.',
    options: [
      Option(
        text: '지친 이에게 건네는 위로',
        nextNodeKey: 'end',
        bookTags: ['힐링에세이', '위로', '피로', '다정함', '감성'],
      ),
      Option(
        text: '위로문학',
        nextNodeKey: 'end',
        bookTags: ['위로문학', '치유소설', '피로', '공감', '따뜻한'],
      ),
      Option(
        text: '피로를 안아주는 이야기',
        nextNodeKey: 'end',
        bookTags: ['공감', '피로', '감성', '다정한', '포근한'],
      ),
      Option(
        text: '서정적 단편소설',
        nextNodeKey: 'end',
        bookTags: ['단편소설', '서정', '피로', '잔잔한', '문학'],
      ),
      Option(
        text: '쉼 에세이',
        nextNodeKey: 'end',
        bookTags: ['쉼', '휴식에세이', '피로', '평화', '부드러운'],
      ),
    ],
  ),
  'book_tired_7_3': QuestionNode(
    question:
        '당신은 지금, 피로에 지쳐 부담 없이 쉴 수 있는 공간이 필요한 상태입니다. 아무것도 요구하지 않는 조용한 존재가 필요합니다.',
    options: [
      Option(
        text: '슬로우 리딩 에세이',
        nextNodeKey: 'end',
        bookTags: ['슬로우리딩', '짧은글', '피로', '부담없는', '여유'],
      ),
      Option(
        text: '미니멀 라이프 에세이',
        nextNodeKey: 'end',
        bookTags: ['미니멀', '단순함', '피로', '라이프스타일', '평온'],
      ),
      Option(
        text: '명상 그림책',
        nextNodeKey: 'end',
        bookTags: ['명상', '그림책', '피로', '시각적', '평화'],
      ),
      Option(
        text: '그림과 짧은 이야기',
        nextNodeKey: 'end',
        bookTags: ['그림', '짧은', '피로', '시각적', '부담없는'],
      ),
      Option(
        text: '풍경 스케치북',
        nextNodeKey: 'end',
        bookTags: ['풍경', '스케치', '피로', '그림', '조용한'],
      ),
    ],
  ),
  'book_tired_7_4': QuestionNode(
    question:
        '당신은 지금, 너무 지쳐서 아무것도 할 수 없는 상태입니다. 책도 나중에 읽어도 괜찮습니다. 그저 존재하는 것만으로 충분합니다.',
    options: [
      Option(
        text: '펼치지 않아도 되는 책',
        nextNodeKey: 'end',
        bookTags: ['존재감', '곁에두기', '피로', '부담없는', '편안한'],
      ),
      Option(
        text: '그림만 보아도 되는 책',
        nextNodeKey: 'end',
        bookTags: ['그림책', '시각적', '피로', '글없는', '감각적'],
      ),
      Option(
        text: '한 문장만 읽어도 되는 책',
        nextNodeKey: 'end',
        bookTags: ['짧은문장', '명언', '피로', '가벼운', '부담없는'],
      ),
      Option(
        text: '순서 없이 펼쳐도 되는 책',
        nextNodeKey: 'end',
        bookTags: ['자유로운', '순서없는', '피로', '편안한', '가벼운'],
      ),
      Option(
        text: '그냥 옆에 두기만 해도 좋은 책',
        nextNodeKey: 'end',
        bookTags: ['곁', '존재', '피로', '부담없는', '안심'],
      ),
    ],
  ),
  'book_tired_7_5': QuestionNode(
    question:
        '당신은 지금, 피로를 넘어선 소진 상태에 있습니다. 무엇도 요구받지 않아도 되고, 아무것도 하지 않아도 괜찮습니다.',
    options: [
      Option(
        text: '언제든 펼칠 수 있는 책',
        nextNodeKey: 'end',
        bookTags: ['언제든', '부담없는', '피로', '기다림', '여유'],
      ),
      Option(
        text: '사진이나 그림만 있는 책',
        nextNodeKey: 'end',
        bookTags: ['사진', '그림', '피로', '글없는', '시각적'],
      ),
      Option(
        text: '아무 페이지나 펼쳐도 되는 책',
        nextNodeKey: 'end',
        bookTags: ['자유', '순서없는', '피로', '편안한', '가벼운'],
      ),
      Option(
        text: '보기만 해도 되는 책',
        nextNodeKey: 'end',
        bookTags: ['보기만', '시각적', '피로', '부담없는', '감각적'],
      ),
      Option(
        text: '나중을 위해 옆에 두는 책',
        nextNodeKey: 'end',
        bookTags: ['미래', '곁', '피로', '여유', '기다림'],
      ),
    ],
  ),
};
