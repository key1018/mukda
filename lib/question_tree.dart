// 질문 트리 데이터 모델
class QuestionNode {
  final String question;
  final List<Option> options;

  QuestionNode({
    required this.question,
    required this.options,
  });
}

class Option {
  final String text;
  final String nextNodeKey;
  final List<String>? bookTags;
  final List<String>? foodTags;

  Option({
    required this.text,
    required this.nextNodeKey,
    this.bookTags,
    this.foodTags,
  });
}

// 질문 트리 데이터
final Map<String, QuestionNode> questionTree = {
  // ==================== ROOT (depth 1) ====================
  'root': QuestionNode(
    question: '오늘의 감정은 어떠신가요?',
    options: [
      Option(text: '우울', nextNodeKey: 'sad_2_1'),
      Option(text: '공허', nextNodeKey: 'empty_2_1'),
      Option(text: '피로', nextNodeKey: 'tired_2_1'),
      Option(text: '번아웃', nextNodeKey: 'burnout_2_1'),
      Option(text: '설렘', nextNodeKey: 'excited_2_1'),
      Option(text: '즐거움', nextNodeKey: 'happy_2_1'),
      Option(text: '불안', nextNodeKey: 'anxious_2_1'),
      Option(text: '고민', nextNodeKey: 'worried_2_1'),
      Option(text: '심심', nextNodeKey: 'bored_2_1'),
      Option(text: '평범', nextNodeKey: 'normal_2_1'),
    ],
  ),

  // ==================== 우울 (sad) ====================
  'sad_2_1': QuestionNode(
    question: '이 감정이 커지는 때는 언제인가요?',
    options: [
      Option(text: '혼자 있을 때', nextNodeKey: 'sad_3_1'),
      Option(text: '밤이 되면', nextNodeKey: 'sad_3_2'),
      Option(text: '다른 사람과 있을 때', nextNodeKey: 'sad_3_3'),
      Option(text: '아무 때나', nextNodeKey: 'sad_3_4'),
      Option(text: '특정 장소에 있을 때', nextNodeKey: 'sad_3_5'),
    ],
  ),
  'sad_3_1': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '나만 이렇게 힘든 건가', nextNodeKey: 'sad_4_1'),
      Option(text: '아무도 내 마음을 모를 거야', nextNodeKey: 'sad_4_2'),
      Option(text: '이 감정이 언제 끝날까', nextNodeKey: 'sad_4_3'),
      Option(text: '내가 뭘 잘못한 걸까', nextNodeKey: 'sad_4_4'),
      Option(text: '그냥 이대로 두고 싶어', nextNodeKey: 'sad_4_5'),
    ],
  ),
  'sad_3_2': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '또 하루가 지나갔네', nextNodeKey: 'sad_4_1'),
      Option(text: '내일도 똑같을 거야', nextNodeKey: 'sad_4_2'),
      Option(text: '시간이 멈췄으면 좋겠어', nextNodeKey: 'sad_4_3'),
      Option(text: '밤이 너무 길어', nextNodeKey: 'sad_4_4'),
      Option(text: '잠들기 싫어', nextNodeKey: 'sad_4_5'),
    ],
  ),
  'sad_3_3': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '나는 왜 이렇게 외로울까', nextNodeKey: 'sad_4_1'),
      Option(text: '다른 사람들은 행복해 보여', nextNodeKey: 'sad_4_2'),
      Option(text: '나도 모르게 가면을 쓰고 있어', nextNodeKey: 'sad_4_3'),
      Option(text: '아무도 내 진짜 모습을 모를 거야', nextNodeKey: 'sad_4_4'),
      Option(text: '혼자 있는 게 더 편해', nextNodeKey: 'sad_4_5'),
    ],
  ),
  'sad_3_4': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '이 감정이 계속될 것 같아', nextNodeKey: 'sad_4_1'),
      Option(text: '뭔가 잘못된 것 같아', nextNodeKey: 'sad_4_2'),
      Option(text: '나도 모르게 눈물이 나', nextNodeKey: 'sad_4_3'),
      Option(text: '이게 정상인가 싶어', nextNodeKey: 'sad_4_4'),
      Option(text: '그냥 지나가길 바라', nextNodeKey: 'sad_4_5'),
    ],
  ),
  'sad_3_5': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '이곳이 싫어졌어', nextNodeKey: 'sad_4_1'),
      Option(text: '여기서 벗어나고 싶어', nextNodeKey: 'sad_4_2'),
      Option(text: '이 장소가 나를 힘들게 해', nextNodeKey: 'sad_4_3'),
      Option(text: '다른 곳에 있었으면 좋겠어', nextNodeKey: 'sad_4_4'),
      Option(text: '여기서 기억이 떠올라', nextNodeKey: 'sad_4_5'),
    ],
  ),
  'sad_4_1': QuestionNode(
    question: '지금 이 감정의 무게는 어떤가요?',
    options: [
      Option(text: '매우 무겁고 숨이 막혀', nextNodeKey: 'sad_5_1'),
      Option(text: '무겁지만 견딜 만해', nextNodeKey: 'sad_5_2'),
      Option(text: '가볍게 느껴져', nextNodeKey: 'sad_5_3'),
      Option(text: '때로는 무겁고 때로는 가벼워', nextNodeKey: 'sad_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'sad_5_5'),
    ],
  ),
  'sad_4_2': QuestionNode(
    question: '지금 이 감정의 무게는 어떤가요?',
    options: [
      Option(text: '매우 무겁고 숨이 막혀', nextNodeKey: 'sad_5_1'),
      Option(text: '무겁지만 견딜 만해', nextNodeKey: 'sad_5_2'),
      Option(text: '가볍게 느껴져', nextNodeKey: 'sad_5_3'),
      Option(text: '때로는 무겁고 때로는 가벼워', nextNodeKey: 'sad_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'sad_5_5'),
    ],
  ),
  'sad_4_3': QuestionNode(
    question: '지금 이 감정의 무게는 어떤가요?',
    options: [
      Option(text: '매우 무겁고 숨이 막혀', nextNodeKey: 'sad_5_1'),
      Option(text: '무겁지만 견딜 만해', nextNodeKey: 'sad_5_2'),
      Option(text: '가볍게 느껴져', nextNodeKey: 'sad_5_3'),
      Option(text: '때로는 무겁고 때로는 가벼워', nextNodeKey: 'sad_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'sad_5_5'),
    ],
  ),
  'sad_4_4': QuestionNode(
    question: '지금 이 감정의 무게는 어떤가요?',
    options: [
      Option(text: '매우 무겁고 숨이 막혀', nextNodeKey: 'sad_5_1'),
      Option(text: '무겁지만 견딜 만해', nextNodeKey: 'sad_5_2'),
      Option(text: '가볍게 느껴져', nextNodeKey: 'sad_5_3'),
      Option(text: '때로는 무겁고 때로는 가벼워', nextNodeKey: 'sad_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'sad_5_5'),
    ],
  ),
  'sad_4_5': QuestionNode(
    question: '지금 이 감정의 무게는 어떤가요?',
    options: [
      Option(text: '매우 무겁고 숨이 막혀', nextNodeKey: 'sad_5_1'),
      Option(text: '무겁지만 견딜 만해', nextNodeKey: 'sad_5_2'),
      Option(text: '가볍게 느껴져', nextNodeKey: 'sad_5_3'),
      Option(text: '때로는 무겁고 때로는 가벼워', nextNodeKey: 'sad_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'sad_5_5'),
    ],
  ),
  'sad_5_1': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '누군가가 내 마음을 알아줬으면', nextNodeKey: 'sad_6_1'),
      Option(text: '이 감정에서 벗어나고 싶어', nextNodeKey: 'sad_6_2'),
      Option(text: '그냥 혼자 있고 싶어', nextNodeKey: 'sad_6_3'),
      Option(text: '아무것도 하기 싫어', nextNodeKey: 'sad_6_4'),
      Option(text: '뭔가에 집중하고 싶어', nextNodeKey: 'sad_6_5'),
    ],
  ),
  'sad_5_2': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '누군가가 내 마음을 알아줬으면', nextNodeKey: 'sad_6_1'),
      Option(text: '이 감정에서 벗어나고 싶어', nextNodeKey: 'sad_6_2'),
      Option(text: '그냥 혼자 있고 싶어', nextNodeKey: 'sad_6_3'),
      Option(text: '아무것도 하기 싫어', nextNodeKey: 'sad_6_4'),
      Option(text: '뭔가에 집중하고 싶어', nextNodeKey: 'sad_6_5'),
    ],
  ),
  'sad_5_3': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '누군가가 내 마음을 알아줬으면', nextNodeKey: 'sad_6_1'),
      Option(text: '이 감정에서 벗어나고 싶어', nextNodeKey: 'sad_6_2'),
      Option(text: '그냥 혼자 있고 싶어', nextNodeKey: 'sad_6_3'),
      Option(text: '아무것도 하기 싫어', nextNodeKey: 'sad_6_4'),
      Option(text: '뭔가에 집중하고 싶어', nextNodeKey: 'sad_6_5'),
    ],
  ),
  'sad_5_4': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '누군가가 내 마음을 알아줬으면', nextNodeKey: 'sad_6_1'),
      Option(text: '이 감정에서 벗어나고 싶어', nextNodeKey: 'sad_6_2'),
      Option(text: '그냥 혼자 있고 싶어', nextNodeKey: 'sad_6_3'),
      Option(text: '아무것도 하기 싫어', nextNodeKey: 'sad_6_4'),
      Option(text: '뭔가에 집중하고 싶어', nextNodeKey: 'sad_6_5'),
    ],
  ),
  'sad_5_5': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '누군가가 내 마음을 알아줬으면', nextNodeKey: 'sad_6_1'),
      Option(text: '이 감정에서 벗어나고 싶어', nextNodeKey: 'sad_6_2'),
      Option(text: '그냥 혼자 있고 싶어', nextNodeKey: 'sad_6_3'),
      Option(text: '아무것도 하기 싫어', nextNodeKey: 'sad_6_4'),
      Option(text: '뭔가에 집중하고 싶어', nextNodeKey: 'sad_6_5'),
    ],
  ),
  'sad_6_1': QuestionNode(
    question: '지금 우울하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'sad_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'sad_7_2'),
      Option(text: '정확해', nextNodeKey: 'sad_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'sad_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'sad_7_5'),
    ],
  ),
  'sad_6_2': QuestionNode(
    question: '지금 우울하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'sad_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'sad_7_2'),
      Option(text: '정확해', nextNodeKey: 'sad_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'sad_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'sad_7_5'),
    ],
  ),
  'sad_6_3': QuestionNode(
    question: '지금 우울하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'sad_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'sad_7_2'),
      Option(text: '정확해', nextNodeKey: 'sad_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'sad_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'sad_7_5'),
    ],
  ),
  'sad_6_4': QuestionNode(
    question: '지금 우울하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'sad_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'sad_7_2'),
      Option(text: '정확해', nextNodeKey: 'sad_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'sad_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'sad_7_5'),
    ],
  ),
  'sad_6_5': QuestionNode(
    question: '지금 우울하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'sad_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'sad_7_2'),
      Option(text: '정확해', nextNodeKey: 'sad_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'sad_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'sad_7_5'),
    ],
  ),
  'sad_7_1': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '혼자만의 시간이 필요해',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['간식', '달콤함', '편안함'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '특별함', '야식'],
      ),
      Option(
        text: '뭔가에 집중하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '철학적', '성장'],
        foodTags: ['든든함', '간식', '집중'],
      ),
      Option(
        text: '그냥 편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '따뜻함', '위로'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
    ],
  ),
  'sad_7_2': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '혼자만의 시간이 필요해',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['간식', '달콤함', '편안함'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '특별함', '야식'],
      ),
      Option(
        text: '뭔가에 집중하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '철학적', '성장'],
        foodTags: ['든든함', '간식', '집중'],
      ),
      Option(
        text: '그냥 편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '따뜻함', '위로'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
    ],
  ),
  'sad_7_3': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '혼자만의 시간이 필요해',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['간식', '달콤함', '편안함'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '특별함', '야식'],
      ),
      Option(
        text: '뭔가에 집중하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '철학적', '성장'],
        foodTags: ['든든함', '간식', '집중'],
      ),
      Option(
        text: '그냥 편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '따뜻함', '위로'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
    ],
  ),
  'sad_7_4': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '혼자만의 시간이 필요해',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['간식', '달콤함', '편안함'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '특별함', '야식'],
      ),
      Option(
        text: '뭔가에 집중하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '철학적', '성장'],
        foodTags: ['든든함', '간식', '집중'],
      ),
      Option(
        text: '그냥 편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '따뜻함', '위로'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
    ],
  ),
  'sad_7_5': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '혼자만의 시간이 필요해',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['간식', '달콤함', '편안함'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '특별함', '야식'],
      ),
      Option(
        text: '뭔가에 집중하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '철학적', '성장'],
        foodTags: ['든든함', '간식', '집중'],
      ),
      Option(
        text: '그냥 편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '따뜻함', '위로'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
    ],
  ),

  // ==================== 공허 (empty) ====================
  'empty_2_1': QuestionNode(
    question: '이 감정이 커지는 때는 언제인가요?',
    options: [
      Option(text: '혼자 있을 때', nextNodeKey: 'empty_3_1'),
      Option(text: '무언가를 끝낸 후', nextNodeKey: 'empty_3_2'),
      Option(text: '아무것도 하지 않을 때', nextNodeKey: 'empty_3_3'),
      Option(text: '다른 사람들과 있을 때도', nextNodeKey: 'empty_3_4'),
      Option(text: '특별한 순간에도', nextNodeKey: 'empty_3_5'),
    ],
  ),
  'empty_3_1': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '뭔가 비어있는 것 같아', nextNodeKey: 'empty_4_1'),
      Option(text: '이게 다인가 싶어', nextNodeKey: 'empty_4_2'),
      Option(text: '아무 의미도 없는 것 같아', nextNodeKey: 'empty_4_3'),
      Option(text: '뭘 해야 할지 모르겠어', nextNodeKey: 'empty_4_4'),
      Option(text: '그냥 텅 빈 기분이야', nextNodeKey: 'empty_4_5'),
    ],
  ),
  'empty_3_2': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '이제 뭘 하지', nextNodeKey: 'empty_4_1'),
      Option(text: '목표가 없어졌어', nextNodeKey: 'empty_4_2'),
      Option(text: '뭔가 허전해', nextNodeKey: 'empty_4_3'),
      Option(text: '다음이 없어', nextNodeKey: 'empty_4_4'),
      Option(text: '이제 끝인가 싶어', nextNodeKey: 'empty_4_5'),
    ],
  ),
  'empty_3_3': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '뭘 해야 할지 모르겠어', nextNodeKey: 'empty_4_1'),
      Option(text: '아무것도 하고 싶지 않아', nextNodeKey: 'empty_4_2'),
      Option(text: '시간만 흘러가', nextNodeKey: 'empty_4_3'),
      Option(text: '뭔가 채워야 할 것 같아', nextNodeKey: 'empty_4_4'),
      Option(text: '그냥 비어있어', nextNodeKey: 'empty_4_5'),
    ],
  ),
  'empty_3_4': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '나도 모르게 멀어져 있어', nextNodeKey: 'empty_4_1'),
      Option(text: '연결이 안 되는 것 같아', nextNodeKey: 'empty_4_2'),
      Option(text: '다른 사람들 사이에 있어도 외로워', nextNodeKey: 'empty_4_3'),
      Option(text: '뭔가 빠진 것 같아', nextNodeKey: 'empty_4_4'),
      Option(text: '이게 다인가 싶어', nextNodeKey: 'empty_4_5'),
    ],
  ),
  'empty_3_5': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '이것도 별로야', nextNodeKey: 'empty_4_1'),
      Option(text: '뭔가 부족해', nextNodeKey: 'empty_4_2'),
      Option(text: '기대했던 것과 달라', nextNodeKey: 'empty_4_3'),
      Option(text: '이것도 채우지 못해', nextNodeKey: 'empty_4_4'),
      Option(text: '뭔가 더 있어야 할 것 같아', nextNodeKey: 'empty_4_5'),
    ],
  ),
  'empty_4_1': QuestionNode(
    question: '이 공허함이 얼마나 깊은가요?',
    options: [
      Option(text: '매우 깊고 끝이 없어 보여', nextNodeKey: 'empty_5_1'),
      Option(text: '깊지만 뭔가 채울 수 있을 것 같아', nextNodeKey: 'empty_5_2'),
      Option(text: '얕아서 괜찮아', nextNodeKey: 'empty_5_3'),
      Option(text: '때로는 깊고 때로는 얕아', nextNodeKey: 'empty_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'empty_5_5'),
    ],
  ),
  'empty_4_2': QuestionNode(
    question: '이 공허함이 얼마나 깊은가요?',
    options: [
      Option(text: '매우 깊고 끝이 없어 보여', nextNodeKey: 'empty_5_1'),
      Option(text: '깊지만 뭔가 채울 수 있을 것 같아', nextNodeKey: 'empty_5_2'),
      Option(text: '얕아서 괜찮아', nextNodeKey: 'empty_5_3'),
      Option(text: '때로는 깊고 때로는 얕아', nextNodeKey: 'empty_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'empty_5_5'),
    ],
  ),
  'empty_4_3': QuestionNode(
    question: '이 공허함이 얼마나 깊은가요?',
    options: [
      Option(text: '매우 깊고 끝이 없어 보여', nextNodeKey: 'empty_5_1'),
      Option(text: '깊지만 뭔가 채울 수 있을 것 같아', nextNodeKey: 'empty_5_2'),
      Option(text: '얕아서 괜찮아', nextNodeKey: 'empty_5_3'),
      Option(text: '때로는 깊고 때로는 얕아', nextNodeKey: 'empty_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'empty_5_5'),
    ],
  ),
  'empty_4_4': QuestionNode(
    question: '이 공허함이 얼마나 깊은가요?',
    options: [
      Option(text: '매우 깊고 끝이 없어 보여', nextNodeKey: 'empty_5_1'),
      Option(text: '깊지만 뭔가 채울 수 있을 것 같아', nextNodeKey: 'empty_5_2'),
      Option(text: '얕아서 괜찮아', nextNodeKey: 'empty_5_3'),
      Option(text: '때로는 깊고 때로는 얕아', nextNodeKey: 'empty_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'empty_5_5'),
    ],
  ),
  'empty_4_5': QuestionNode(
    question: '이 공허함이 얼마나 깊은가요?',
    options: [
      Option(text: '매우 깊고 끝이 없어 보여', nextNodeKey: 'empty_5_1'),
      Option(text: '깊지만 뭔가 채울 수 있을 것 같아', nextNodeKey: 'empty_5_2'),
      Option(text: '얕아서 괜찮아', nextNodeKey: 'empty_5_3'),
      Option(text: '때로는 깊고 때로는 얕아', nextNodeKey: 'empty_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'empty_5_5'),
    ],
  ),
  'empty_5_1': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '뭔가로 채우고 싶어', nextNodeKey: 'empty_6_1'),
      Option(text: '이 공허함을 이해받고 싶어', nextNodeKey: 'empty_6_2'),
      Option(text: '그냥 이대로 두고 싶어', nextNodeKey: 'empty_6_3'),
      Option(text: '뭔가 의미를 찾고 싶어', nextNodeKey: 'empty_6_4'),
      Option(text: '다른 감정이 느껴지길 바라', nextNodeKey: 'empty_6_5'),
    ],
  ),
  'empty_5_2': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '뭔가로 채우고 싶어', nextNodeKey: 'empty_6_1'),
      Option(text: '이 공허함을 이해받고 싶어', nextNodeKey: 'empty_6_2'),
      Option(text: '그냥 이대로 두고 싶어', nextNodeKey: 'empty_6_3'),
      Option(text: '뭔가 의미를 찾고 싶어', nextNodeKey: 'empty_6_4'),
      Option(text: '다른 감정이 느껴지길 바라', nextNodeKey: 'empty_6_5'),
    ],
  ),
  'empty_5_3': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '뭔가로 채우고 싶어', nextNodeKey: 'empty_6_1'),
      Option(text: '이 공허함을 이해받고 싶어', nextNodeKey: 'empty_6_2'),
      Option(text: '그냥 이대로 두고 싶어', nextNodeKey: 'empty_6_3'),
      Option(text: '뭔가 의미를 찾고 싶어', nextNodeKey: 'empty_6_4'),
      Option(text: '다른 감정이 느껴지길 바라', nextNodeKey: 'empty_6_5'),
    ],
  ),
  'empty_5_4': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '뭔가로 채우고 싶어', nextNodeKey: 'empty_6_1'),
      Option(text: '이 공허함을 이해받고 싶어', nextNodeKey: 'empty_6_2'),
      Option(text: '그냥 이대로 두고 싶어', nextNodeKey: 'empty_6_3'),
      Option(text: '뭔가 의미를 찾고 싶어', nextNodeKey: 'empty_6_4'),
      Option(text: '다른 감정이 느껴지길 바라', nextNodeKey: 'empty_6_5'),
    ],
  ),
  'empty_5_5': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '뭔가로 채우고 싶어', nextNodeKey: 'empty_6_1'),
      Option(text: '이 공허함을 이해받고 싶어', nextNodeKey: 'empty_6_2'),
      Option(text: '그냥 이대로 두고 싶어', nextNodeKey: 'empty_6_3'),
      Option(text: '뭔가 의미를 찾고 싶어', nextNodeKey: 'empty_6_4'),
      Option(text: '다른 감정이 느껴지길 바라', nextNodeKey: 'empty_6_5'),
    ],
  ),
  'empty_6_1': QuestionNode(
    question: '지금 공허하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'empty_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'empty_7_2'),
      Option(text: '정확해', nextNodeKey: 'empty_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'empty_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'empty_7_5'),
    ],
  ),
  'empty_6_2': QuestionNode(
    question: '지금 공허하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'empty_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'empty_7_2'),
      Option(text: '정확해', nextNodeKey: 'empty_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'empty_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'empty_7_5'),
    ],
  ),
  'empty_6_3': QuestionNode(
    question: '지금 공허하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'empty_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'empty_7_2'),
      Option(text: '정확해', nextNodeKey: 'empty_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'empty_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'empty_7_5'),
    ],
  ),
  'empty_6_4': QuestionNode(
    question: '지금 공허하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'empty_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'empty_7_2'),
      Option(text: '정확해', nextNodeKey: 'empty_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'empty_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'empty_7_5'),
    ],
  ),
  'empty_6_5': QuestionNode(
    question: '지금 공허하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'empty_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'empty_7_2'),
      Option(text: '정확해', nextNodeKey: 'empty_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'empty_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'empty_7_5'),
    ],
  ),
  'empty_7_1': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '뭔가로 채우고 싶어',
        nextNodeKey: 'end',
        bookTags: ['의미', '철학적', '성장'],
        foodTags: ['든든함', '특별함', '만족'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '야식', '즐거움'],
      ),
      Option(
        text: '뭔가 배우고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '성장', '철학적'],
        foodTags: ['건강', '집밥', '만족'],
      ),
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '그냥 편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '간식', '달콤함'],
      ),
    ],
  ),
  'empty_7_2': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '뭔가로 채우고 싶어',
        nextNodeKey: 'end',
        bookTags: ['의미', '철학적', '성장'],
        foodTags: ['든든함', '특별함', '만족'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '야식', '즐거움'],
      ),
      Option(
        text: '뭔가 배우고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '성장', '철학적'],
        foodTags: ['건강', '집밥', '만족'],
      ),
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '그냥 편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '간식', '달콤함'],
      ),
    ],
  ),
  'empty_7_3': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '뭔가로 채우고 싶어',
        nextNodeKey: 'end',
        bookTags: ['의미', '철학적', '성장'],
        foodTags: ['든든함', '특별함', '만족'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '야식', '즐거움'],
      ),
      Option(
        text: '뭔가 배우고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '성장', '철학적'],
        foodTags: ['건강', '집밥', '만족'],
      ),
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '그냥 편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '간식', '달콤함'],
      ),
    ],
  ),
  'empty_7_4': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '뭔가로 채우고 싶어',
        nextNodeKey: 'end',
        bookTags: ['의미', '철학적', '성장'],
        foodTags: ['든든함', '특별함', '만족'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '야식', '즐거움'],
      ),
      Option(
        text: '뭔가 배우고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '성장', '철학적'],
        foodTags: ['건강', '집밥', '만족'],
      ),
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '그냥 편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '간식', '달콤함'],
      ),
    ],
  ),
  'empty_7_5': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '뭔가로 채우고 싶어',
        nextNodeKey: 'end',
        bookTags: ['의미', '철학적', '성장'],
        foodTags: ['든든함', '특별함', '만족'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '야식', '즐거움'],
      ),
      Option(
        text: '뭔가 배우고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '성장', '철학적'],
        foodTags: ['건강', '집밥', '만족'],
      ),
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '그냥 편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '간식', '달콤함'],
      ),
    ],
  ),

  // ==================== 피로 (tired) ====================
  'tired_2_1': QuestionNode(
    question: '이 피로함이 커지는 때는 언제인가요?',
    options: [
      Option(text: '아침에 일어났을 때', nextNodeKey: 'tired_3_1'),
      Option(text: '하루가 지나면서', nextNodeKey: 'tired_3_2'),
      Option(text: '특정 일을 할 때', nextNodeKey: 'tired_3_3'),
      Option(text: '다른 사람들과 있을 때', nextNodeKey: 'tired_3_4'),
      Option(text: '항상', nextNodeKey: 'tired_3_5'),
    ],
  ),
  'tired_3_1': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '벌써부터 지쳐', nextNodeKey: 'tired_4_1'),
      Option(text: '오늘도 힘들겠어', nextNodeKey: 'tired_4_2'),
      Option(text: '잠을 더 자고 싶어', nextNodeKey: 'tired_4_3'),
      Option(text: '일어나기 싫어', nextNodeKey: 'tired_4_4'),
      Option(text: '이미 지쳤어', nextNodeKey: 'tired_4_5'),
    ],
  ),
  'tired_3_2': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '점점 더 힘들어져', nextNodeKey: 'tired_4_1'),
      Option(text: '이제 못 하겠어', nextNodeKey: 'tired_4_2'),
      Option(text: '쉬고 싶어', nextNodeKey: 'tired_4_3'),
      Option(text: '끝이 없어 보여', nextNodeKey: 'tired_4_4'),
      Option(text: '계속 쌓여만 가', nextNodeKey: 'tired_4_5'),
    ],
  ),
  'tired_3_3': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '이 일이 너무 힘들어', nextNodeKey: 'tired_4_1'),
      Option(text: '이것도 해야 하나', nextNodeKey: 'tired_4_2'),
      Option(text: '이미 한계야', nextNodeKey: 'tired_4_3'),
      Option(text: '이것도 지치게 해', nextNodeKey: 'tired_4_4'),
      Option(text: '이 일만 끝나면 쉴 수 있을까', nextNodeKey: 'tired_4_5'),
    ],
  ),
  'tired_3_4': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '사람들과 있으니 더 지쳐', nextNodeKey: 'tired_4_1'),
      Option(text: '가면을 쓰고 있어서 힘들어', nextNodeKey: 'tired_4_2'),
      Option(text: '혼자 있고 싶어', nextNodeKey: 'tired_4_3'),
      Option(text: '에너지가 다 빠져나가', nextNodeKey: 'tired_4_4'),
      Option(text: '이렇게 지치면 안 되는데', nextNodeKey: 'tired_4_5'),
    ],
  ),
  'tired_3_5': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '언제나 지쳐있어', nextNodeKey: 'tired_4_1'),
      Option(text: '이 피로가 끝이 없어', nextNodeKey: 'tired_4_2'),
      Option(text: '쉬어도 회복이 안 돼', nextNodeKey: 'tired_4_3'),
      Option(text: '이게 정상인가 싶어', nextNodeKey: 'tired_4_4'),
      Option(text: '언제쯤 나아질까', nextNodeKey: 'tired_4_5'),
    ],
  ),
  'tired_4_1': QuestionNode(
    question: '이 피로함의 깊이는 어떤가요?',
    options: [
      Option(text: '매우 깊고 회복이 안 돼', nextNodeKey: 'tired_5_1'),
      Option(text: '깊지만 쉬면 나아질 것 같아', nextNodeKey: 'tired_5_2'),
      Option(text: '얕아서 괜찮아', nextNodeKey: 'tired_5_3'),
      Option(text: '때로는 깊고 때로는 얕아', nextNodeKey: 'tired_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'tired_5_5'),
    ],
  ),
  'tired_4_2': QuestionNode(
    question: '이 피로함의 깊이는 어떤가요?',
    options: [
      Option(text: '매우 깊고 회복이 안 돼', nextNodeKey: 'tired_5_1'),
      Option(text: '깊지만 쉬면 나아질 것 같아', nextNodeKey: 'tired_5_2'),
      Option(text: '얕아서 괜찮아', nextNodeKey: 'tired_5_3'),
      Option(text: '때로는 깊고 때로는 얕아', nextNodeKey: 'tired_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'tired_5_5'),
    ],
  ),
  'tired_4_3': QuestionNode(
    question: '이 피로함의 깊이는 어떤가요?',
    options: [
      Option(text: '매우 깊고 회복이 안 돼', nextNodeKey: 'tired_5_1'),
      Option(text: '깊지만 쉬면 나아질 것 같아', nextNodeKey: 'tired_5_2'),
      Option(text: '얕아서 괜찮아', nextNodeKey: 'tired_5_3'),
      Option(text: '때로는 깊고 때로는 얕아', nextNodeKey: 'tired_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'tired_5_5'),
    ],
  ),
  'tired_4_4': QuestionNode(
    question: '이 피로함의 깊이는 어떤가요?',
    options: [
      Option(text: '매우 깊고 회복이 안 돼', nextNodeKey: 'tired_5_1'),
      Option(text: '깊지만 쉬면 나아질 것 같아', nextNodeKey: 'tired_5_2'),
      Option(text: '얕아서 괜찮아', nextNodeKey: 'tired_5_3'),
      Option(text: '때로는 깊고 때로는 얕아', nextNodeKey: 'tired_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'tired_5_5'),
    ],
  ),
  'tired_4_5': QuestionNode(
    question: '이 피로함의 깊이는 어떤가요?',
    options: [
      Option(text: '매우 깊고 회복이 안 돼', nextNodeKey: 'tired_5_1'),
      Option(text: '깊지만 쉬면 나아질 것 같아', nextNodeKey: 'tired_5_2'),
      Option(text: '얕아서 괜찮아', nextNodeKey: 'tired_5_3'),
      Option(text: '때로는 깊고 때로는 얕아', nextNodeKey: 'tired_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'tired_5_5'),
    ],
  ),
  'tired_5_1': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '그냥 쉬고 싶어', nextNodeKey: 'tired_6_1'),
      Option(text: '에너지를 회복하고 싶어', nextNodeKey: 'tired_6_2'),
      Option(text: '아무것도 하지 않고 싶어', nextNodeKey: 'tired_6_3'),
      Option(text: '편하게 누워있고 싶어', nextNodeKey: 'tired_6_4'),
      Option(text: '뭔가로 힘을 얻고 싶어', nextNodeKey: 'tired_6_5'),
    ],
  ),
  'tired_5_2': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '그냥 쉬고 싶어', nextNodeKey: 'tired_6_1'),
      Option(text: '에너지를 회복하고 싶어', nextNodeKey: 'tired_6_2'),
      Option(text: '아무것도 하지 않고 싶어', nextNodeKey: 'tired_6_3'),
      Option(text: '편하게 누워있고 싶어', nextNodeKey: 'tired_6_4'),
      Option(text: '뭔가로 힘을 얻고 싶어', nextNodeKey: 'tired_6_5'),
    ],
  ),
  'tired_5_3': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '그냥 쉬고 싶어', nextNodeKey: 'tired_6_1'),
      Option(text: '에너지를 회복하고 싶어', nextNodeKey: 'tired_6_2'),
      Option(text: '아무것도 하지 않고 싶어', nextNodeKey: 'tired_6_3'),
      Option(text: '편하게 누워있고 싶어', nextNodeKey: 'tired_6_4'),
      Option(text: '뭔가로 힘을 얻고 싶어', nextNodeKey: 'tired_6_5'),
    ],
  ),
  'tired_5_4': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '그냥 쉬고 싶어', nextNodeKey: 'tired_6_1'),
      Option(text: '에너지를 회복하고 싶어', nextNodeKey: 'tired_6_2'),
      Option(text: '아무것도 하지 않고 싶어', nextNodeKey: 'tired_6_3'),
      Option(text: '편하게 누워있고 싶어', nextNodeKey: 'tired_6_4'),
      Option(text: '뭔가로 힘을 얻고 싶어', nextNodeKey: 'tired_6_5'),
    ],
  ),
  'tired_5_5': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '그냥 쉬고 싶어', nextNodeKey: 'tired_6_1'),
      Option(text: '에너지를 회복하고 싶어', nextNodeKey: 'tired_6_2'),
      Option(text: '아무것도 하지 않고 싶어', nextNodeKey: 'tired_6_3'),
      Option(text: '편하게 누워있고 싶어', nextNodeKey: 'tired_6_4'),
      Option(text: '뭔가로 힘을 얻고 싶어', nextNodeKey: 'tired_6_5'),
    ],
  ),
  'tired_6_1': QuestionNode(
    question: '지금 피로하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'tired_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'tired_7_2'),
      Option(text: '정확해', nextNodeKey: 'tired_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'tired_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'tired_7_5'),
    ],
  ),
  'tired_6_2': QuestionNode(
    question: '지금 피로하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'tired_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'tired_7_2'),
      Option(text: '정확해', nextNodeKey: 'tired_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'tired_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'tired_7_5'),
    ],
  ),
  'tired_6_3': QuestionNode(
    question: '지금 피로하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'tired_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'tired_7_2'),
      Option(text: '정확해', nextNodeKey: 'tired_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'tired_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'tired_7_5'),
    ],
  ),
  'tired_6_4': QuestionNode(
    question: '지금 피로하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'tired_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'tired_7_2'),
      Option(text: '정확해', nextNodeKey: 'tired_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'tired_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'tired_7_5'),
    ],
  ),
  'tired_6_5': QuestionNode(
    question: '지금 피로하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'tired_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'tired_7_2'),
      Option(text: '정확해', nextNodeKey: 'tired_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'tired_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'tired_7_5'),
    ],
  ),
  'tired_7_1': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
      Option(
        text: '에너지를 회복하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['희망', '성장', '위로'],
        foodTags: ['든든함', '건강', '만족'],
      ),
      Option(
        text: '가벼운 이야기가 필요해',
        nextNodeKey: 'end',
        bookTags: ['재미', '판타지', '힐링'],
        foodTags: ['간식', '달콤함', '편안함'],
      ),
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '아무것도 하지 않고 싶어',
        nextNodeKey: 'end',
        bookTags: ['조용함', '힐링', '위로'],
        foodTags: ['간편함', '야식', '편안함'],
      ),
    ],
  ),
  'tired_7_2': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
      Option(
        text: '에너지를 회복하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['희망', '성장', '위로'],
        foodTags: ['든든함', '건강', '만족'],
      ),
      Option(
        text: '가벼운 이야기가 필요해',
        nextNodeKey: 'end',
        bookTags: ['재미', '판타지', '힐링'],
        foodTags: ['간식', '달콤함', '편안함'],
      ),
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '아무것도 하지 않고 싶어',
        nextNodeKey: 'end',
        bookTags: ['조용함', '힐링', '위로'],
        foodTags: ['간편함', '야식', '편안함'],
      ),
    ],
  ),
  'tired_7_3': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
      Option(
        text: '에너지를 회복하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['희망', '성장', '위로'],
        foodTags: ['든든함', '건강', '만족'],
      ),
      Option(
        text: '가벼운 이야기가 필요해',
        nextNodeKey: 'end',
        bookTags: ['재미', '판타지', '힐링'],
        foodTags: ['간식', '달콤함', '편안함'],
      ),
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '아무것도 하지 않고 싶어',
        nextNodeKey: 'end',
        bookTags: ['조용함', '힐링', '위로'],
        foodTags: ['간편함', '야식', '편안함'],
      ),
    ],
  ),
  'tired_7_4': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
      Option(
        text: '에너지를 회복하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['희망', '성장', '위로'],
        foodTags: ['든든함', '건강', '만족'],
      ),
      Option(
        text: '가벼운 이야기가 필요해',
        nextNodeKey: 'end',
        bookTags: ['재미', '판타지', '힐링'],
        foodTags: ['간식', '달콤함', '편안함'],
      ),
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '아무것도 하지 않고 싶어',
        nextNodeKey: 'end',
        bookTags: ['조용함', '힐링', '위로'],
        foodTags: ['간편함', '야식', '편안함'],
      ),
    ],
  ),
  'tired_7_5': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
      Option(
        text: '에너지를 회복하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['희망', '성장', '위로'],
        foodTags: ['든든함', '건강', '만족'],
      ),
      Option(
        text: '가벼운 이야기가 필요해',
        nextNodeKey: 'end',
        bookTags: ['재미', '판타지', '힐링'],
        foodTags: ['간식', '달콤함', '편안함'],
      ),
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '아무것도 하지 않고 싶어',
        nextNodeKey: 'end',
        bookTags: ['조용함', '힐링', '위로'],
        foodTags: ['간편함', '야식', '편안함'],
      ),
    ],
  ),

  // ==================== 번아웃 (burnout) ====================
  'burnout_2_1': QuestionNode(
    question: '이 번아웃이 커지는 때는 언제인가요?',
    options: [
      Option(text: '일을 시작할 때', nextNodeKey: 'burnout_3_1'),
      Option(text: '일을 하는 동안', nextNodeKey: 'burnout_3_2'),
      Option(text: '일을 끝낸 후', nextNodeKey: 'burnout_3_3'),
      Option(text: '다음 일을 생각할 때', nextNodeKey: 'burnout_3_4'),
      Option(text: '항상', nextNodeKey: 'burnout_3_5'),
    ],
  ),
  'burnout_3_1': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '또 시작이야', nextNodeKey: 'burnout_4_1'),
      Option(text: '이미 지쳤는데', nextNodeKey: 'burnout_4_2'),
      Option(text: '하고 싶지 않아', nextNodeKey: 'burnout_4_3'),
      Option(text: '의미가 없어 보여', nextNodeKey: 'burnout_4_4'),
      Option(text: '이제 못 하겠어', nextNodeKey: 'burnout_4_5'),
    ],
  ),
  'burnout_3_2': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '이게 끝이 없어', nextNodeKey: 'burnout_4_1'),
      Option(text: '계속 반복만 해', nextNodeKey: 'burnout_4_2'),
      Option(text: '집중이 안 돼', nextNodeKey: 'burnout_4_3'),
      Option(text: '이미 한계야', nextNodeKey: 'burnout_4_4'),
      Option(text: '그만하고 싶어', nextNodeKey: 'burnout_4_5'),
    ],
  ),
  'burnout_3_3': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '드디어 끝났어', nextNodeKey: 'burnout_4_1'),
      Option(text: '이제 쉴 수 있어', nextNodeKey: 'burnout_4_2'),
      Option(text: '하지만 내일도 있어', nextNodeKey: 'burnout_4_3'),
      Option(text: '이것도 의미 없었어', nextNodeKey: 'burnout_4_4'),
      Option(text: '회복이 안 돼', nextNodeKey: 'burnout_4_5'),
    ],
  ),
  'burnout_3_4': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '또 시작이야', nextNodeKey: 'burnout_4_1'),
      Option(text: '끝이 없어', nextNodeKey: 'burnout_4_2'),
      Option(text: '이제 정말 못 하겠어', nextNodeKey: 'burnout_4_3'),
      Option(text: '벗어나고 싶어', nextNodeKey: 'burnout_4_4'),
      Option(text: '이게 다인가 싶어', nextNodeKey: 'burnout_4_5'),
    ],
  ),
  'burnout_3_5': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '이미 다 타버렸어', nextNodeKey: 'burnout_4_1'),
      Option(text: '회복이 안 돼', nextNodeKey: 'burnout_4_2'),
      Option(text: '이게 정상인가 싶어', nextNodeKey: 'burnout_4_3'),
      Option(text: '벗어나고 싶어', nextNodeKey: 'burnout_4_4'),
      Option(text: '뭔가 바꿔야 할 것 같아', nextNodeKey: 'burnout_4_5'),
    ],
  ),
  'burnout_4_1': QuestionNode(
    question: '이 번아웃의 정도는 어떤가요?',
    options: [
      Option(text: '매우 심각하고 벗어날 수 없어', nextNodeKey: 'burnout_5_1'),
      Option(text: '심각하지만 견딜 만해', nextNodeKey: 'burnout_5_2'),
      Option(text: '가볍게 느껴져', nextNodeKey: 'burnout_5_3'),
      Option(text: '때로는 심각하고 때로는 가벼워', nextNodeKey: 'burnout_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'burnout_5_5'),
    ],
  ),
  'burnout_4_2': QuestionNode(
    question: '이 번아웃의 정도는 어떤가요?',
    options: [
      Option(text: '매우 심각하고 벗어날 수 없어', nextNodeKey: 'burnout_5_1'),
      Option(text: '심각하지만 견딜 만해', nextNodeKey: 'burnout_5_2'),
      Option(text: '가볍게 느껴져', nextNodeKey: 'burnout_5_3'),
      Option(text: '때로는 심각하고 때로는 가벼워', nextNodeKey: 'burnout_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'burnout_5_5'),
    ],
  ),
  'burnout_4_3': QuestionNode(
    question: '이 번아웃의 정도는 어떤가요?',
    options: [
      Option(text: '매우 심각하고 벗어날 수 없어', nextNodeKey: 'burnout_5_1'),
      Option(text: '심각하지만 견딜 만해', nextNodeKey: 'burnout_5_2'),
      Option(text: '가볍게 느껴져', nextNodeKey: 'burnout_5_3'),
      Option(text: '때로는 심각하고 때로는 가벼워', nextNodeKey: 'burnout_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'burnout_5_5'),
    ],
  ),
  'burnout_4_4': QuestionNode(
    question: '이 번아웃의 정도는 어떤가요?',
    options: [
      Option(text: '매우 심각하고 벗어날 수 없어', nextNodeKey: 'burnout_5_1'),
      Option(text: '심각하지만 견딜 만해', nextNodeKey: 'burnout_5_2'),
      Option(text: '가볍게 느껴져', nextNodeKey: 'burnout_5_3'),
      Option(text: '때로는 심각하고 때로는 가벼워', nextNodeKey: 'burnout_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'burnout_5_5'),
    ],
  ),
  'burnout_4_5': QuestionNode(
    question: '이 번아웃의 정도는 어떤가요?',
    options: [
      Option(text: '매우 심각하고 벗어날 수 없어', nextNodeKey: 'burnout_5_1'),
      Option(text: '심각하지만 견딜 만해', nextNodeKey: 'burnout_5_2'),
      Option(text: '가볍게 느껴져', nextNodeKey: 'burnout_5_3'),
      Option(text: '때로는 심각하고 때로는 가벼워', nextNodeKey: 'burnout_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'burnout_5_5'),
    ],
  ),
  'burnout_5_1': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '완전히 벗어나고 싶어', nextNodeKey: 'burnout_6_1'),
      Option(text: '진짜 쉬고 싶어', nextNodeKey: 'burnout_6_2'),
      Option(text: '뭔가 다른 걸 하고 싶어', nextNodeKey: 'burnout_6_3'),
      Option(text: '의미를 다시 찾고 싶어', nextNodeKey: 'burnout_6_4'),
      Option(text: '그냥 멈추고 싶어', nextNodeKey: 'burnout_6_5'),
    ],
  ),
  'burnout_5_2': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '완전히 벗어나고 싶어', nextNodeKey: 'burnout_6_1'),
      Option(text: '진짜 쉬고 싶어', nextNodeKey: 'burnout_6_2'),
      Option(text: '뭔가 다른 걸 하고 싶어', nextNodeKey: 'burnout_6_3'),
      Option(text: '의미를 다시 찾고 싶어', nextNodeKey: 'burnout_6_4'),
      Option(text: '그냥 멈추고 싶어', nextNodeKey: 'burnout_6_5'),
    ],
  ),
  'burnout_5_3': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '완전히 벗어나고 싶어', nextNodeKey: 'burnout_6_1'),
      Option(text: '진짜 쉬고 싶어', nextNodeKey: 'burnout_6_2'),
      Option(text: '뭔가 다른 걸 하고 싶어', nextNodeKey: 'burnout_6_3'),
      Option(text: '의미를 다시 찾고 싶어', nextNodeKey: 'burnout_6_4'),
      Option(text: '그냥 멈추고 싶어', nextNodeKey: 'burnout_6_5'),
    ],
  ),
  'burnout_5_4': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '완전히 벗어나고 싶어', nextNodeKey: 'burnout_6_1'),
      Option(text: '진짜 쉬고 싶어', nextNodeKey: 'burnout_6_2'),
      Option(text: '뭔가 다른 걸 하고 싶어', nextNodeKey: 'burnout_6_3'),
      Option(text: '의미를 다시 찾고 싶어', nextNodeKey: 'burnout_6_4'),
      Option(text: '그냥 멈추고 싶어', nextNodeKey: 'burnout_6_5'),
    ],
  ),
  'burnout_5_5': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '완전히 벗어나고 싶어', nextNodeKey: 'burnout_6_1'),
      Option(text: '진짜 쉬고 싶어', nextNodeKey: 'burnout_6_2'),
      Option(text: '뭔가 다른 걸 하고 싶어', nextNodeKey: 'burnout_6_3'),
      Option(text: '의미를 다시 찾고 싶어', nextNodeKey: 'burnout_6_4'),
      Option(text: '그냥 멈추고 싶어', nextNodeKey: 'burnout_6_5'),
    ],
  ),
  'burnout_6_1': QuestionNode(
    question: '지금 번아웃을 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'burnout_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'burnout_7_2'),
      Option(text: '정확해', nextNodeKey: 'burnout_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'burnout_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'burnout_7_5'),
    ],
  ),
  'burnout_6_2': QuestionNode(
    question: '지금 번아웃을 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'burnout_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'burnout_7_2'),
      Option(text: '정확해', nextNodeKey: 'burnout_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'burnout_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'burnout_7_5'),
    ],
  ),
  'burnout_6_3': QuestionNode(
    question: '지금 번아웃을 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'burnout_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'burnout_7_2'),
      Option(text: '정확해', nextNodeKey: 'burnout_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'burnout_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'burnout_7_5'),
    ],
  ),
  'burnout_6_4': QuestionNode(
    question: '지금 번아웃을 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'burnout_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'burnout_7_2'),
      Option(text: '정확해', nextNodeKey: 'burnout_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'burnout_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'burnout_7_5'),
    ],
  ),
  'burnout_6_5': QuestionNode(
    question: '지금 번아웃을 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'burnout_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'burnout_7_2'),
      Option(text: '정확해', nextNodeKey: 'burnout_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'burnout_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'burnout_7_5'),
    ],
  ),
  'burnout_7_1': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '완전히 벗어나고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['특별함', '야식', '즐거움'],
      ),
      Option(
        text: '진짜 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
      Option(
        text: '의미를 다시 찾고 싶어',
        nextNodeKey: 'end',
        bookTags: ['의미', '철학적', '성장'],
        foodTags: ['건강', '집밥', '만족'],
      ),
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '뭔가 다른 걸 하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['재미', '판타지', '모험'],
        foodTags: ['간편함', '특별함', '야식'],
      ),
    ],
  ),
  'burnout_7_2': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '완전히 벗어나고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['특별함', '야식', '즐거움'],
      ),
      Option(
        text: '진짜 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
      Option(
        text: '의미를 다시 찾고 싶어',
        nextNodeKey: 'end',
        bookTags: ['의미', '철학적', '성장'],
        foodTags: ['건강', '집밥', '만족'],
      ),
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '뭔가 다른 걸 하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['재미', '판타지', '모험'],
        foodTags: ['간편함', '특별함', '야식'],
      ),
    ],
  ),
  'burnout_7_3': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '완전히 벗어나고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['특별함', '야식', '즐거움'],
      ),
      Option(
        text: '진짜 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
      Option(
        text: '의미를 다시 찾고 싶어',
        nextNodeKey: 'end',
        bookTags: ['의미', '철학적', '성장'],
        foodTags: ['건강', '집밥', '만족'],
      ),
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '뭔가 다른 걸 하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['재미', '판타지', '모험'],
        foodTags: ['간편함', '특별함', '야식'],
      ),
    ],
  ),
  'burnout_7_4': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '완전히 벗어나고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['특별함', '야식', '즐거움'],
      ),
      Option(
        text: '진짜 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
      Option(
        text: '의미를 다시 찾고 싶어',
        nextNodeKey: 'end',
        bookTags: ['의미', '철학적', '성장'],
        foodTags: ['건강', '집밥', '만족'],
      ),
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '뭔가 다른 걸 하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['재미', '판타지', '모험'],
        foodTags: ['간편함', '특별함', '야식'],
      ),
    ],
  ),
  'burnout_7_5': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '완전히 벗어나고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['특별함', '야식', '즐거움'],
      ),
      Option(
        text: '진짜 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
      Option(
        text: '의미를 다시 찾고 싶어',
        nextNodeKey: 'end',
        bookTags: ['의미', '철학적', '성장'],
        foodTags: ['건강', '집밥', '만족'],
      ),
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '뭔가 다른 걸 하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['재미', '판타지', '모험'],
        foodTags: ['간편함', '특별함', '야식'],
      ),
    ],
  ),

  // ==================== 설렘 (excited) ====================
  'excited_2_1': QuestionNode(
    question: '이 설렘이 커지는 때는 언제인가요?',
    options: [
      Option(text: '뭔가를 기다릴 때', nextNodeKey: 'excited_3_1'),
      Option(text: '새로운 일이 시작될 때', nextNodeKey: 'excited_3_2'),
      Option(text: '특별한 순간이 다가올 때', nextNodeKey: 'excited_3_3'),
      Option(text: '예상치 못한 일이 생길 때', nextNodeKey: 'excited_3_4'),
      Option(text: '항상', nextNodeKey: 'excited_3_5'),
    ],
  ),
  'excited_3_1': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '빨리 되었으면 좋겠어', nextNodeKey: 'excited_4_1'),
      Option(text: '기대돼', nextNodeKey: 'excited_4_2'),
      Option(text: '설레지만 조금 불안해', nextNodeKey: 'excited_4_3'),
      Option(text: '이게 정말 일어날까', nextNodeKey: 'excited_4_4'),
      Option(text: '너무 기대돼', nextNodeKey: 'excited_4_5'),
    ],
  ),
  'excited_3_2': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '새로운 시작이야', nextNodeKey: 'excited_4_1'),
      Option(text: '이번엔 다를 거야', nextNodeKey: 'excited_4_2'),
      Option(text: '뭔가 좋은 일이 있을 것 같아', nextNodeKey: 'excited_4_3'),
      Option(text: '기대돼', nextNodeKey: 'excited_4_4'),
      Option(text: '설레지만 조금 두려워', nextNodeKey: 'excited_4_5'),
    ],
  ),
  'excited_3_3': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '드디어 이 순간이야', nextNodeKey: 'excited_4_1'),
      Option(text: '너무 기대돼', nextNodeKey: 'excited_4_2'),
      Option(text: '이 순간을 오래 기다렸어', nextNodeKey: 'excited_4_3'),
      Option(text: '설레지만 조금 긴장돼', nextNodeKey: 'excited_4_4'),
      Option(text: '이게 정말 일어날까', nextNodeKey: 'excited_4_5'),
    ],
  ),
  'excited_3_4': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '예상치 못했어', nextNodeKey: 'excited_4_1'),
      Option(text: '뭔가 좋은 일이 일어날 것 같아', nextNodeKey: 'excited_4_2'),
      Option(text: '기대돼', nextNodeKey: 'excited_4_3'),
      Option(text: '설레지만 조금 불안해', nextNodeKey: 'excited_4_4'),
      Option(text: '이게 정말일까', nextNodeKey: 'excited_4_5'),
    ],
  ),
  'excited_3_5': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '항상 설레', nextNodeKey: 'excited_4_1'),
      Option(text: '뭔가 기대돼', nextNodeKey: 'excited_4_2'),
      Option(text: '이게 정상인가 싶어', nextNodeKey: 'excited_4_3'),
      Option(text: '설레지만 조금 피곤해', nextNodeKey: 'excited_4_4'),
      Option(text: '이 감정이 좋아', nextNodeKey: 'excited_4_5'),
    ],
  ),
  'excited_4_1': QuestionNode(
    question: '이 설렘의 강도는 어떤가요?',
    options: [
      Option(text: '매우 강하고 가슴이 뛰어', nextNodeKey: 'excited_5_1'),
      Option(text: '강하지만 편안해', nextNodeKey: 'excited_5_2'),
      Option(text: '가볍게 느껴져', nextNodeKey: 'excited_5_3'),
      Option(text: '때로는 강하고 때로는 약해', nextNodeKey: 'excited_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'excited_5_5'),
    ],
  ),
  'excited_4_2': QuestionNode(
    question: '이 설렘의 강도는 어떤가요?',
    options: [
      Option(text: '매우 강하고 가슴이 뛰어', nextNodeKey: 'excited_5_1'),
      Option(text: '강하지만 편안해', nextNodeKey: 'excited_5_2'),
      Option(text: '가볍게 느껴져', nextNodeKey: 'excited_5_3'),
      Option(text: '때로는 강하고 때로는 약해', nextNodeKey: 'excited_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'excited_5_5'),
    ],
  ),
  'excited_4_3': QuestionNode(
    question: '이 설렘의 강도는 어떤가요?',
    options: [
      Option(text: '매우 강하고 가슴이 뛰어', nextNodeKey: 'excited_5_1'),
      Option(text: '강하지만 편안해', nextNodeKey: 'excited_5_2'),
      Option(text: '가볍게 느껴져', nextNodeKey: 'excited_5_3'),
      Option(text: '때로는 강하고 때로는 약해', nextNodeKey: 'excited_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'excited_5_5'),
    ],
  ),
  'excited_4_4': QuestionNode(
    question: '이 설렘의 강도는 어떤가요?',
    options: [
      Option(text: '매우 강하고 가슴이 뛰어', nextNodeKey: 'excited_5_1'),
      Option(text: '강하지만 편안해', nextNodeKey: 'excited_5_2'),
      Option(text: '가볍게 느껴져', nextNodeKey: 'excited_5_3'),
      Option(text: '때로는 강하고 때로는 약해', nextNodeKey: 'excited_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'excited_5_5'),
    ],
  ),
  'excited_4_5': QuestionNode(
    question: '이 설렘의 강도는 어떤가요?',
    options: [
      Option(text: '매우 강하고 가슴이 뛰어', nextNodeKey: 'excited_5_1'),
      Option(text: '강하지만 편안해', nextNodeKey: 'excited_5_2'),
      Option(text: '가볍게 느껴져', nextNodeKey: 'excited_5_3'),
      Option(text: '때로는 강하고 때로는 약해', nextNodeKey: 'excited_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'excited_5_5'),
    ],
  ),
  'excited_5_1': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '이 설렘을 즐기고 싶어', nextNodeKey: 'excited_6_1'),
      Option(text: '빨리 그 순간이 왔으면 좋겠어', nextNodeKey: 'excited_6_2'),
      Option(text: '이 감정을 누군가와 나누고 싶어', nextNodeKey: 'excited_6_3'),
      Option(text: '조금 진정하고 싶어', nextNodeKey: 'excited_6_4'),
      Option(text: '이 설렘을 기억하고 싶어', nextNodeKey: 'excited_6_5'),
    ],
  ),
  'excited_5_2': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '이 설렘을 즐기고 싶어', nextNodeKey: 'excited_6_1'),
      Option(text: '빨리 그 순간이 왔으면 좋겠어', nextNodeKey: 'excited_6_2'),
      Option(text: '이 감정을 누군가와 나누고 싶어', nextNodeKey: 'excited_6_3'),
      Option(text: '조금 진정하고 싶어', nextNodeKey: 'excited_6_4'),
      Option(text: '이 설렘을 기억하고 싶어', nextNodeKey: 'excited_6_5'),
    ],
  ),
  'excited_5_3': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '이 설렘을 즐기고 싶어', nextNodeKey: 'excited_6_1'),
      Option(text: '빨리 그 순간이 왔으면 좋겠어', nextNodeKey: 'excited_6_2'),
      Option(text: '이 감정을 누군가와 나누고 싶어', nextNodeKey: 'excited_6_3'),
      Option(text: '조금 진정하고 싶어', nextNodeKey: 'excited_6_4'),
      Option(text: '이 설렘을 기억하고 싶어', nextNodeKey: 'excited_6_5'),
    ],
  ),
  'excited_5_4': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '이 설렘을 즐기고 싶어', nextNodeKey: 'excited_6_1'),
      Option(text: '빨리 그 순간이 왔으면 좋겠어', nextNodeKey: 'excited_6_2'),
      Option(text: '이 감정을 누군가와 나누고 싶어', nextNodeKey: 'excited_6_3'),
      Option(text: '조금 진정하고 싶어', nextNodeKey: 'excited_6_4'),
      Option(text: '이 설렘을 기억하고 싶어', nextNodeKey: 'excited_6_5'),
    ],
  ),
  'excited_5_5': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '이 설렘을 즐기고 싶어', nextNodeKey: 'excited_6_1'),
      Option(text: '빨리 그 순간이 왔으면 좋겠어', nextNodeKey: 'excited_6_2'),
      Option(text: '이 감정을 누군가와 나누고 싶어', nextNodeKey: 'excited_6_3'),
      Option(text: '조금 진정하고 싶어', nextNodeKey: 'excited_6_4'),
      Option(text: '이 설렘을 기억하고 싶어', nextNodeKey: 'excited_6_5'),
    ],
  ),
  'excited_6_1': QuestionNode(
    question: '지금 설레게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'excited_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'excited_7_2'),
      Option(text: '정확해', nextNodeKey: 'excited_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'excited_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'excited_7_5'),
    ],
  ),
  'excited_6_2': QuestionNode(
    question: '지금 설레게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'excited_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'excited_7_2'),
      Option(text: '정확해', nextNodeKey: 'excited_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'excited_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'excited_7_5'),
    ],
  ),
  'excited_6_3': QuestionNode(
    question: '지금 설레게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'excited_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'excited_7_2'),
      Option(text: '정확해', nextNodeKey: 'excited_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'excited_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'excited_7_5'),
    ],
  ),
  'excited_6_4': QuestionNode(
    question: '지금 설레게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'excited_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'excited_7_2'),
      Option(text: '정확해', nextNodeKey: 'excited_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'excited_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'excited_7_5'),
    ],
  ),
  'excited_6_5': QuestionNode(
    question: '지금 설레게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'excited_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'excited_7_2'),
      Option(text: '정확해', nextNodeKey: 'excited_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'excited_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'excited_7_5'),
    ],
  ),
  'excited_7_1': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '이 설렘을 즐기고 싶어',
        nextNodeKey: 'end',
        bookTags: ['재미', '판타지', '모험'],
        foodTags: ['특별함', '야식', '즐거움'],
      ),
      Option(
        text: '기대되는 이야기가 필요해',
        nextNodeKey: 'end',
        bookTags: ['모험', '재미', '희망'],
        foodTags: ['간식', '달콤함', '즐거움'],
      ),
      Option(
        text: '이 감정을 나누고 싶어',
        nextNodeKey: 'end',
        bookTags: ['공감', '따뜻함', '재미'],
        foodTags: ['든든함', '특별함', '만족'],
      ),
      Option(
        text: '조금 진정하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['조용함', '힐링', '위로'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
      Option(
        text: '이 순간을 기억하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['감동', '따뜻함', '희망'],
        foodTags: ['특별함', '만족', '즐거움'],
      ),
    ],
  ),
  'excited_7_2': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '이 설렘을 즐기고 싶어',
        nextNodeKey: 'end',
        bookTags: ['재미', '판타지', '모험'],
        foodTags: ['특별함', '야식', '즐거움'],
      ),
      Option(
        text: '기대되는 이야기가 필요해',
        nextNodeKey: 'end',
        bookTags: ['모험', '재미', '희망'],
        foodTags: ['간식', '달콤함', '즐거움'],
      ),
      Option(
        text: '이 감정을 나누고 싶어',
        nextNodeKey: 'end',
        bookTags: ['공감', '따뜻함', '재미'],
        foodTags: ['든든함', '특별함', '만족'],
      ),
      Option(
        text: '조금 진정하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['조용함', '힐링', '위로'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
      Option(
        text: '이 순간을 기억하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['감동', '따뜻함', '희망'],
        foodTags: ['특별함', '만족', '즐거움'],
      ),
    ],
  ),
  'excited_7_3': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '이 설렘을 즐기고 싶어',
        nextNodeKey: 'end',
        bookTags: ['재미', '판타지', '모험'],
        foodTags: ['특별함', '야식', '즐거움'],
      ),
      Option(
        text: '기대되는 이야기가 필요해',
        nextNodeKey: 'end',
        bookTags: ['모험', '재미', '희망'],
        foodTags: ['간식', '달콤함', '즐거움'],
      ),
      Option(
        text: '이 감정을 나누고 싶어',
        nextNodeKey: 'end',
        bookTags: ['공감', '따뜻함', '재미'],
        foodTags: ['든든함', '특별함', '만족'],
      ),
      Option(
        text: '조금 진정하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['조용함', '힐링', '위로'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
      Option(
        text: '이 순간을 기억하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['감동', '따뜻함', '희망'],
        foodTags: ['특별함', '만족', '즐거움'],
      ),
    ],
  ),
  'excited_7_4': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '이 설렘을 즐기고 싶어',
        nextNodeKey: 'end',
        bookTags: ['재미', '판타지', '모험'],
        foodTags: ['특별함', '야식', '즐거움'],
      ),
      Option(
        text: '기대되는 이야기가 필요해',
        nextNodeKey: 'end',
        bookTags: ['모험', '재미', '희망'],
        foodTags: ['간식', '달콤함', '즐거움'],
      ),
      Option(
        text: '이 감정을 나누고 싶어',
        nextNodeKey: 'end',
        bookTags: ['공감', '따뜻함', '재미'],
        foodTags: ['든든함', '특별함', '만족'],
      ),
      Option(
        text: '조금 진정하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['조용함', '힐링', '위로'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
      Option(
        text: '이 순간을 기억하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['감동', '따뜻함', '희망'],
        foodTags: ['특별함', '만족', '즐거움'],
      ),
    ],
  ),
  'excited_7_5': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '이 설렘을 즐기고 싶어',
        nextNodeKey: 'end',
        bookTags: ['재미', '판타지', '모험'],
        foodTags: ['특별함', '야식', '즐거움'],
      ),
      Option(
        text: '기대되는 이야기가 필요해',
        nextNodeKey: 'end',
        bookTags: ['모험', '재미', '희망'],
        foodTags: ['간식', '달콤함', '즐거움'],
      ),
      Option(
        text: '이 감정을 나누고 싶어',
        nextNodeKey: 'end',
        bookTags: ['공감', '따뜻함', '재미'],
        foodTags: ['든든함', '특별함', '만족'],
      ),
      Option(
        text: '조금 진정하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['조용함', '힐링', '위로'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
      Option(
        text: '이 순간을 기억하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['감동', '따뜻함', '희망'],
        foodTags: ['특별함', '만족', '즐거움'],
      ),
    ],
  ),

  // ==================== 즐거움 (happy) ====================
  'happy_2_1': QuestionNode(
    question: '이 즐거움이 커지는 때는 언제인가요?',
    options: [
      Option(text: '혼자 있을 때', nextNodeKey: 'happy_3_1'),
      Option(text: '다른 사람들과 있을 때', nextNodeKey: 'happy_3_2'),
      Option(text: '뭔가를 성취했을 때', nextNodeKey: 'happy_3_3'),
      Option(text: '예상치 못한 일이 생겼을 때', nextNodeKey: 'happy_3_4'),
      Option(text: '항상', nextNodeKey: 'happy_3_5'),
    ],
  ),
  'happy_3_1': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '지금이 좋아', nextNodeKey: 'happy_4_1'),
      Option(text: '이 감정이 계속되길 바라', nextNodeKey: 'happy_4_2'),
      Option(text: '혼자 있어도 행복해', nextNodeKey: 'happy_4_3'),
      Option(text: '이게 진짜 행복인가 싶어', nextNodeKey: 'happy_4_4'),
      Option(text: '이 순간을 즐기고 싶어', nextNodeKey: 'happy_4_5'),
    ],
  ),
  'happy_3_2': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '함께 있어서 좋아', nextNodeKey: 'happy_4_1'),
      Option(text: '이 감정을 나누고 싶어', nextNodeKey: 'happy_4_2'),
      Option(text: '다른 사람들도 행복했으면 좋겠어', nextNodeKey: 'happy_4_3'),
      Option(text: '이 순간이 계속되길 바라', nextNodeKey: 'happy_4_4'),
      Option(text: '지금이 완벽해', nextNodeKey: 'happy_4_5'),
    ],
  ),
  'happy_3_3': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '드디어 해냈어', nextNodeKey: 'happy_4_1'),
      Option(text: '이게 내가 원했던 거야', nextNodeKey: 'happy_4_2'),
      Option(text: '뿌듯해', nextNodeKey: 'happy_4_3'),
      Option(text: '이 감정이 계속되길 바라', nextNodeKey: 'happy_4_4'),
      Option(text: '이제 더 행복해질 수 있을 것 같아', nextNodeKey: 'happy_4_5'),
    ],
  ),
  'happy_3_4': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '예상치 못했어', nextNodeKey: 'happy_4_1'),
      Option(text: '이게 정말 일어날까', nextNodeKey: 'happy_4_2'),
      Option(text: '너무 좋아', nextNodeKey: 'happy_4_3'),
      Option(text: '이 감정을 기억하고 싶어', nextNodeKey: 'happy_4_4'),
      Option(text: '이 순간이 계속되길 바라', nextNodeKey: 'happy_4_5'),
    ],
  ),
  'happy_3_5': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '항상 행복해', nextNodeKey: 'happy_4_1'),
      Option(text: '이게 정상인가 싶어', nextNodeKey: 'happy_4_2'),
      Option(text: '이 감정이 좋아', nextNodeKey: 'happy_4_3'),
      Option(text: '이 행복을 나누고 싶어', nextNodeKey: 'happy_4_4'),
      Option(text: '이 순간을 즐기고 싶어', nextNodeKey: 'happy_4_5'),
    ],
  ),
  'happy_4_1': QuestionNode(
    question: '이 즐거움의 깊이는 어떤가요?',
    options: [
      Option(text: '매우 깊고 가득 차 있어', nextNodeKey: 'happy_5_1'),
      Option(text: '깊지만 가볍게 느껴져', nextNodeKey: 'happy_5_2'),
      Option(text: '가볍고 편안해', nextNodeKey: 'happy_5_3'),
      Option(text: '때로는 깊고 때로는 가벼워', nextNodeKey: 'happy_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'happy_5_5'),
    ],
  ),
  'happy_4_2': QuestionNode(
    question: '이 즐거움의 깊이는 어떤가요?',
    options: [
      Option(text: '매우 깊고 가득 차 있어', nextNodeKey: 'happy_5_1'),
      Option(text: '깊지만 가볍게 느껴져', nextNodeKey: 'happy_5_2'),
      Option(text: '가볍고 편안해', nextNodeKey: 'happy_5_3'),
      Option(text: '때로는 깊고 때로는 가벼워', nextNodeKey: 'happy_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'happy_5_5'),
    ],
  ),
  'happy_4_3': QuestionNode(
    question: '이 즐거움의 깊이는 어떤가요?',
    options: [
      Option(text: '매우 깊고 가득 차 있어', nextNodeKey: 'happy_5_1'),
      Option(text: '깊지만 가볍게 느껴져', nextNodeKey: 'happy_5_2'),
      Option(text: '가볍고 편안해', nextNodeKey: 'happy_5_3'),
      Option(text: '때로는 깊고 때로는 가벼워', nextNodeKey: 'happy_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'happy_5_5'),
    ],
  ),
  'happy_4_4': QuestionNode(
    question: '이 즐거움의 깊이는 어떤가요?',
    options: [
      Option(text: '매우 깊고 가득 차 있어', nextNodeKey: 'happy_5_1'),
      Option(text: '깊지만 가볍게 느껴져', nextNodeKey: 'happy_5_2'),
      Option(text: '가볍고 편안해', nextNodeKey: 'happy_5_3'),
      Option(text: '때로는 깊고 때로는 가벼워', nextNodeKey: 'happy_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'happy_5_5'),
    ],
  ),
  'happy_4_5': QuestionNode(
    question: '이 즐거움의 깊이는 어떤가요?',
    options: [
      Option(text: '매우 깊고 가득 차 있어', nextNodeKey: 'happy_5_1'),
      Option(text: '깊지만 가볍게 느껴져', nextNodeKey: 'happy_5_2'),
      Option(text: '가볍고 편안해', nextNodeKey: 'happy_5_3'),
      Option(text: '때로는 깊고 때로는 가벼워', nextNodeKey: 'happy_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'happy_5_5'),
    ],
  ),
  'happy_5_1': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '이 즐거움을 계속 즐기고 싶어', nextNodeKey: 'happy_6_1'),
      Option(text: '이 감정을 누군가와 나누고 싶어', nextNodeKey: 'happy_6_2'),
      Option(text: '이 순간을 기억하고 싶어', nextNodeKey: 'happy_6_3'),
      Option(text: '더 행복해지고 싶어', nextNodeKey: 'happy_6_4'),
      Option(text: '이 감정을 표현하고 싶어', nextNodeKey: 'happy_6_5'),
    ],
  ),
  'happy_5_2': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '이 즐거움을 계속 즐기고 싶어', nextNodeKey: 'happy_6_1'),
      Option(text: '이 감정을 누군가와 나누고 싶어', nextNodeKey: 'happy_6_2'),
      Option(text: '이 순간을 기억하고 싶어', nextNodeKey: 'happy_6_3'),
      Option(text: '더 행복해지고 싶어', nextNodeKey: 'happy_6_4'),
      Option(text: '이 감정을 표현하고 싶어', nextNodeKey: 'happy_6_5'),
    ],
  ),
  'happy_5_3': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '이 즐거움을 계속 즐기고 싶어', nextNodeKey: 'happy_6_1'),
      Option(text: '이 감정을 누군가와 나누고 싶어', nextNodeKey: 'happy_6_2'),
      Option(text: '이 순간을 기억하고 싶어', nextNodeKey: 'happy_6_3'),
      Option(text: '더 행복해지고 싶어', nextNodeKey: 'happy_6_4'),
      Option(text: '이 감정을 표현하고 싶어', nextNodeKey: 'happy_6_5'),
    ],
  ),
  'happy_5_4': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '이 즐거움을 계속 즐기고 싶어', nextNodeKey: 'happy_6_1'),
      Option(text: '이 감정을 누군가와 나누고 싶어', nextNodeKey: 'happy_6_2'),
      Option(text: '이 순간을 기억하고 싶어', nextNodeKey: 'happy_6_3'),
      Option(text: '더 행복해지고 싶어', nextNodeKey: 'happy_6_4'),
      Option(text: '이 감정을 표현하고 싶어', nextNodeKey: 'happy_6_5'),
    ],
  ),
  'happy_5_5': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '이 즐거움을 계속 즐기고 싶어', nextNodeKey: 'happy_6_1'),
      Option(text: '이 감정을 누군가와 나누고 싶어', nextNodeKey: 'happy_6_2'),
      Option(text: '이 순간을 기억하고 싶어', nextNodeKey: 'happy_6_3'),
      Option(text: '더 행복해지고 싶어', nextNodeKey: 'happy_6_4'),
      Option(text: '이 감정을 표현하고 싶어', nextNodeKey: 'happy_6_5'),
    ],
  ),
  'happy_6_1': QuestionNode(
    question: '지금 즐겁게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'happy_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'happy_7_2'),
      Option(text: '정확해', nextNodeKey: 'happy_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'happy_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'happy_7_5'),
    ],
  ),
  'happy_6_2': QuestionNode(
    question: '지금 즐겁게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'happy_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'happy_7_2'),
      Option(text: '정확해', nextNodeKey: 'happy_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'happy_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'happy_7_5'),
    ],
  ),
  'happy_6_3': QuestionNode(
    question: '지금 즐겁게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'happy_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'happy_7_2'),
      Option(text: '정확해', nextNodeKey: 'happy_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'happy_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'happy_7_5'),
    ],
  ),
  'happy_6_4': QuestionNode(
    question: '지금 즐겁게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'happy_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'happy_7_2'),
      Option(text: '정확해', nextNodeKey: 'happy_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'happy_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'happy_7_5'),
    ],
  ),
  'happy_6_5': QuestionNode(
    question: '지금 즐겁게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'happy_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'happy_7_2'),
      Option(text: '정확해', nextNodeKey: 'happy_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'happy_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'happy_7_5'),
    ],
  ),
  'happy_7_1': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '이 즐거움을 계속 즐기고 싶어',
        nextNodeKey: 'end',
        bookTags: ['재미', '판타지', '모험'],
        foodTags: ['특별함', '야식', '즐거움'],
      ),
      Option(
        text: '이 감정을 나누고 싶어',
        nextNodeKey: 'end',
        bookTags: ['공감', '따뜻함', '재미'],
        foodTags: ['든든함', '특별함', '만족'],
      ),
      Option(
        text: '이 순간을 기억하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['감동', '따뜻함', '희망'],
        foodTags: ['특별함', '만족', '즐거움'],
      ),
      Option(
        text: '더 행복해지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['희망', '성장', '위로'],
        foodTags: ['든든함', '건강', '만족'],
      ),
      Option(
        text: '이 감정을 표현하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['재미', '공감', '따뜻함'],
        foodTags: ['간식', '달콤함', '즐거움'],
      ),
    ],
  ),
  'happy_7_2': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '이 즐거움을 계속 즐기고 싶어',
        nextNodeKey: 'end',
        bookTags: ['재미', '판타지', '모험'],
        foodTags: ['특별함', '야식', '즐거움'],
      ),
      Option(
        text: '이 감정을 나누고 싶어',
        nextNodeKey: 'end',
        bookTags: ['공감', '따뜻함', '재미'],
        foodTags: ['든든함', '특별함', '만족'],
      ),
      Option(
        text: '이 순간을 기억하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['감동', '따뜻함', '희망'],
        foodTags: ['특별함', '만족', '즐거움'],
      ),
      Option(
        text: '더 행복해지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['희망', '성장', '위로'],
        foodTags: ['든든함', '건강', '만족'],
      ),
      Option(
        text: '이 감정을 표현하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['재미', '공감', '따뜻함'],
        foodTags: ['간식', '달콤함', '즐거움'],
      ),
    ],
  ),
  'happy_7_3': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '이 즐거움을 계속 즐기고 싶어',
        nextNodeKey: 'end',
        bookTags: ['재미', '판타지', '모험'],
        foodTags: ['특별함', '야식', '즐거움'],
      ),
      Option(
        text: '이 감정을 나누고 싶어',
        nextNodeKey: 'end',
        bookTags: ['공감', '따뜻함', '재미'],
        foodTags: ['든든함', '특별함', '만족'],
      ),
      Option(
        text: '이 순간을 기억하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['감동', '따뜻함', '희망'],
        foodTags: ['특별함', '만족', '즐거움'],
      ),
      Option(
        text: '더 행복해지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['희망', '성장', '위로'],
        foodTags: ['든든함', '건강', '만족'],
      ),
      Option(
        text: '이 감정을 표현하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['재미', '공감', '따뜻함'],
        foodTags: ['간식', '달콤함', '즐거움'],
      ),
    ],
  ),
  'happy_7_4': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '이 즐거움을 계속 즐기고 싶어',
        nextNodeKey: 'end',
        bookTags: ['재미', '판타지', '모험'],
        foodTags: ['특별함', '야식', '즐거움'],
      ),
      Option(
        text: '이 감정을 나누고 싶어',
        nextNodeKey: 'end',
        bookTags: ['공감', '따뜻함', '재미'],
        foodTags: ['든든함', '특별함', '만족'],
      ),
      Option(
        text: '이 순간을 기억하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['감동', '따뜻함', '희망'],
        foodTags: ['특별함', '만족', '즐거움'],
      ),
      Option(
        text: '더 행복해지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['희망', '성장', '위로'],
        foodTags: ['든든함', '건강', '만족'],
      ),
      Option(
        text: '이 감정을 표현하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['재미', '공감', '따뜻함'],
        foodTags: ['간식', '달콤함', '즐거움'],
      ),
    ],
  ),
  'happy_7_5': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '이 즐거움을 계속 즐기고 싶어',
        nextNodeKey: 'end',
        bookTags: ['재미', '판타지', '모험'],
        foodTags: ['특별함', '야식', '즐거움'],
      ),
      Option(
        text: '이 감정을 나누고 싶어',
        nextNodeKey: 'end',
        bookTags: ['공감', '따뜻함', '재미'],
        foodTags: ['든든함', '특별함', '만족'],
      ),
      Option(
        text: '이 순간을 기억하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['감동', '따뜻함', '희망'],
        foodTags: ['특별함', '만족', '즐거움'],
      ),
      Option(
        text: '더 행복해지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['희망', '성장', '위로'],
        foodTags: ['든든함', '건강', '만족'],
      ),
      Option(
        text: '이 감정을 표현하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['재미', '공감', '따뜻함'],
        foodTags: ['간식', '달콤함', '즐거움'],
      ),
    ],
  ),

  // ==================== 불안 (anxious) ====================
  'anxious_2_1': QuestionNode(
    question: '이 불안이 커지는 때는 언제인가요?',
    options: [
      Option(text: '뭔가를 기다릴 때', nextNodeKey: 'anxious_3_1'),
      Option(text: '결정을 내려야 할 때', nextNodeKey: 'anxious_3_2'),
      Option(text: '예상치 못한 일이 생길 때', nextNodeKey: 'anxious_3_3'),
      Option(text: '밤이 되면', nextNodeKey: 'anxious_3_4'),
      Option(text: '항상', nextNodeKey: 'anxious_3_5'),
    ],
  ),
  'anxious_3_1': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '뭔가 잘못될 것 같아', nextNodeKey: 'anxious_4_1'),
      Option(text: '이게 제대로 될까', nextNodeKey: 'anxious_4_2'),
      Option(text: '걱정돼', nextNodeKey: 'anxious_4_3'),
      Option(text: '불안해', nextNodeKey: 'anxious_4_4'),
      Option(text: '뭔가 준비가 안 된 것 같아', nextNodeKey: 'anxious_4_5'),
    ],
  ),
  'anxious_3_2': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '이 결정이 맞을까', nextNodeKey: 'anxious_4_1'),
      Option(text: '후회하지 않을까', nextNodeKey: 'anxious_4_2'),
      Option(text: '다른 선택이 나았을까', nextNodeKey: 'anxious_4_3'),
      Option(text: '이게 최선일까', nextNodeKey: 'anxious_4_4'),
      Option(text: '결정하기가 무서워', nextNodeKey: 'anxious_4_5'),
    ],
  ),
  'anxious_3_3': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '뭔가 예상치 못한 일이 생길까', nextNodeKey: 'anxious_4_1'),
      Option(text: '준비가 안 됐어', nextNodeKey: 'anxious_4_2'),
      Option(text: '대처할 수 있을까', nextNodeKey: 'anxious_4_3'),
      Option(text: '불안해', nextNodeKey: 'anxious_4_4'),
      Option(text: '뭔가 잘못될 것 같아', nextNodeKey: 'anxious_4_5'),
    ],
  ),
  'anxious_3_4': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '밤이 되면 더 불안해져', nextNodeKey: 'anxious_4_1'),
      Option(text: '생각이 많아져', nextNodeKey: 'anxious_4_2'),
      Option(text: '잠들기 어려워', nextNodeKey: 'anxious_4_3'),
      Option(text: '걱정이 커져', nextNodeKey: 'anxious_4_4'),
      Option(text: '이 불안이 계속될까', nextNodeKey: 'anxious_4_5'),
    ],
  ),
  'anxious_3_5': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '항상 불안해', nextNodeKey: 'anxious_4_1'),
      Option(text: '이게 정상인가 싶어', nextNodeKey: 'anxious_4_2'),
      Option(text: '언제쯤 나아질까', nextNodeKey: 'anxious_4_3'),
      Option(text: '이 불안이 끝이 없어', nextNodeKey: 'anxious_4_4'),
      Option(text: '조금이라도 편해지고 싶어', nextNodeKey: 'anxious_4_5'),
    ],
  ),
  'anxious_4_1': QuestionNode(
    question: '이 불안의 강도는 어떤가요?',
    options: [
      Option(text: '매우 강하고 숨이 막혀', nextNodeKey: 'anxious_5_1'),
      Option(text: '강하지만 견딜 만해', nextNodeKey: 'anxious_5_2'),
      Option(text: '가볍게 느껴져', nextNodeKey: 'anxious_5_3'),
      Option(text: '때로는 강하고 때로는 약해', nextNodeKey: 'anxious_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'anxious_5_5'),
    ],
  ),
  'anxious_4_2': QuestionNode(
    question: '이 불안의 강도는 어떤가요?',
    options: [
      Option(text: '매우 강하고 숨이 막혀', nextNodeKey: 'anxious_5_1'),
      Option(text: '강하지만 견딜 만해', nextNodeKey: 'anxious_5_2'),
      Option(text: '가볍게 느껴져', nextNodeKey: 'anxious_5_3'),
      Option(text: '때로는 강하고 때로는 약해', nextNodeKey: 'anxious_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'anxious_5_5'),
    ],
  ),
  'anxious_4_3': QuestionNode(
    question: '이 불안의 강도는 어떤가요?',
    options: [
      Option(text: '매우 강하고 숨이 막혀', nextNodeKey: 'anxious_5_1'),
      Option(text: '강하지만 견딜 만해', nextNodeKey: 'anxious_5_2'),
      Option(text: '가볍게 느껴져', nextNodeKey: 'anxious_5_3'),
      Option(text: '때로는 강하고 때로는 약해', nextNodeKey: 'anxious_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'anxious_5_5'),
    ],
  ),
  'anxious_4_4': QuestionNode(
    question: '이 불안의 강도는 어떤가요?',
    options: [
      Option(text: '매우 강하고 숨이 막혀', nextNodeKey: 'anxious_5_1'),
      Option(text: '강하지만 견딜 만해', nextNodeKey: 'anxious_5_2'),
      Option(text: '가볍게 느껴져', nextNodeKey: 'anxious_5_3'),
      Option(text: '때로는 강하고 때로는 약해', nextNodeKey: 'anxious_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'anxious_5_5'),
    ],
  ),
  'anxious_4_5': QuestionNode(
    question: '이 불안의 강도는 어떤가요?',
    options: [
      Option(text: '매우 강하고 숨이 막혀', nextNodeKey: 'anxious_5_1'),
      Option(text: '강하지만 견딜 만해', nextNodeKey: 'anxious_5_2'),
      Option(text: '가볍게 느껴져', nextNodeKey: 'anxious_5_3'),
      Option(text: '때로는 강하고 때로는 약해', nextNodeKey: 'anxious_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'anxious_5_5'),
    ],
  ),
  'anxious_5_1': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '이 불안에서 벗어나고 싶어', nextNodeKey: 'anxious_6_1'),
      Option(text: '조금이라도 편해지고 싶어', nextNodeKey: 'anxious_6_2'),
      Option(text: '뭔가에 집중하고 싶어', nextNodeKey: 'anxious_6_3'),
      Option(text: '다른 생각을 하고 싶어', nextNodeKey: 'anxious_6_4'),
      Option(text: '그냥 쉬고 싶어', nextNodeKey: 'anxious_6_5'),
    ],
  ),
  'anxious_5_2': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '이 불안에서 벗어나고 싶어', nextNodeKey: 'anxious_6_1'),
      Option(text: '조금이라도 편해지고 싶어', nextNodeKey: 'anxious_6_2'),
      Option(text: '뭔가에 집중하고 싶어', nextNodeKey: 'anxious_6_3'),
      Option(text: '다른 생각을 하고 싶어', nextNodeKey: 'anxious_6_4'),
      Option(text: '그냥 쉬고 싶어', nextNodeKey: 'anxious_6_5'),
    ],
  ),
  'anxious_5_3': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '이 불안에서 벗어나고 싶어', nextNodeKey: 'anxious_6_1'),
      Option(text: '조금이라도 편해지고 싶어', nextNodeKey: 'anxious_6_2'),
      Option(text: '뭔가에 집중하고 싶어', nextNodeKey: 'anxious_6_3'),
      Option(text: '다른 생각을 하고 싶어', nextNodeKey: 'anxious_6_4'),
      Option(text: '그냥 쉬고 싶어', nextNodeKey: 'anxious_6_5'),
    ],
  ),
  'anxious_5_4': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '이 불안에서 벗어나고 싶어', nextNodeKey: 'anxious_6_1'),
      Option(text: '조금이라도 편해지고 싶어', nextNodeKey: 'anxious_6_2'),
      Option(text: '뭔가에 집중하고 싶어', nextNodeKey: 'anxious_6_3'),
      Option(text: '다른 생각을 하고 싶어', nextNodeKey: 'anxious_6_4'),
      Option(text: '그냥 쉬고 싶어', nextNodeKey: 'anxious_6_5'),
    ],
  ),
  'anxious_5_5': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '이 불안에서 벗어나고 싶어', nextNodeKey: 'anxious_6_1'),
      Option(text: '조금이라도 편해지고 싶어', nextNodeKey: 'anxious_6_2'),
      Option(text: '뭔가에 집중하고 싶어', nextNodeKey: 'anxious_6_3'),
      Option(text: '다른 생각을 하고 싶어', nextNodeKey: 'anxious_6_4'),
      Option(text: '그냥 쉬고 싶어', nextNodeKey: 'anxious_6_5'),
    ],
  ),
  'anxious_6_1': QuestionNode(
    question: '지금 불안하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'anxious_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'anxious_7_2'),
      Option(text: '정확해', nextNodeKey: 'anxious_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'anxious_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'anxious_7_5'),
    ],
  ),
  'anxious_6_2': QuestionNode(
    question: '지금 불안하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'anxious_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'anxious_7_2'),
      Option(text: '정확해', nextNodeKey: 'anxious_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'anxious_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'anxious_7_5'),
    ],
  ),
  'anxious_6_3': QuestionNode(
    question: '지금 불안하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'anxious_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'anxious_7_2'),
      Option(text: '정확해', nextNodeKey: 'anxious_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'anxious_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'anxious_7_5'),
    ],
  ),
  'anxious_6_4': QuestionNode(
    question: '지금 불안하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'anxious_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'anxious_7_2'),
      Option(text: '정확해', nextNodeKey: 'anxious_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'anxious_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'anxious_7_5'),
    ],
  ),
  'anxious_6_5': QuestionNode(
    question: '지금 불안하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'anxious_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'anxious_7_2'),
      Option(text: '정확해', nextNodeKey: 'anxious_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'anxious_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'anxious_7_5'),
    ],
  ),
  'anxious_7_1': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '이 불안에서 벗어나고 싶어',
        nextNodeKey: 'end',
        bookTags: ['위로', '힐링', '조용함'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
      Option(
        text: '뭔가에 집중하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '철학적', '성장'],
        foodTags: ['든든함', '간식', '집중'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '야식', '특별함'],
      ),
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '조금 진정하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['조용함', '힐링', '위로'],
        foodTags: ['편안함', '간식', '달콤함'],
      ),
    ],
  ),
  'anxious_7_2': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '이 불안에서 벗어나고 싶어',
        nextNodeKey: 'end',
        bookTags: ['위로', '힐링', '조용함'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
      Option(
        text: '뭔가에 집중하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '철학적', '성장'],
        foodTags: ['든든함', '간식', '집중'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '야식', '특별함'],
      ),
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '조금 진정하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['조용함', '힐링', '위로'],
        foodTags: ['편안함', '간식', '달콤함'],
      ),
    ],
  ),
  'anxious_7_3': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '이 불안에서 벗어나고 싶어',
        nextNodeKey: 'end',
        bookTags: ['위로', '힐링', '조용함'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
      Option(
        text: '뭔가에 집중하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '철학적', '성장'],
        foodTags: ['든든함', '간식', '집중'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '야식', '특별함'],
      ),
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '조금 진정하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['조용함', '힐링', '위로'],
        foodTags: ['편안함', '간식', '달콤함'],
      ),
    ],
  ),
  'anxious_7_4': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '이 불안에서 벗어나고 싶어',
        nextNodeKey: 'end',
        bookTags: ['위로', '힐링', '조용함'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
      Option(
        text: '뭔가에 집중하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '철학적', '성장'],
        foodTags: ['든든함', '간식', '집중'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '야식', '특별함'],
      ),
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '조금 진정하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['조용함', '힐링', '위로'],
        foodTags: ['편안함', '간식', '달콤함'],
      ),
    ],
  ),
  'anxious_7_5': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '이 불안에서 벗어나고 싶어',
        nextNodeKey: 'end',
        bookTags: ['위로', '힐링', '조용함'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
      Option(
        text: '뭔가에 집중하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '철학적', '성장'],
        foodTags: ['든든함', '간식', '집중'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '야식', '특별함'],
      ),
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '조금 진정하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['조용함', '힐링', '위로'],
        foodTags: ['편안함', '간식', '달콤함'],
      ),
    ],
  ),

  // ==================== 고민 (worried) ====================
  'worried_2_1': QuestionNode(
    question: '이 고민이 커지는 때는 언제인가요?',
    options: [
      Option(text: '결정을 내려야 할 때', nextNodeKey: 'worried_3_1'),
      Option(text: '다른 사람과 있을 때', nextNodeKey: 'worried_3_2'),
      Option(text: '혼자 있을 때', nextNodeKey: 'worried_3_3'),
      Option(text: '밤이 되면', nextNodeKey: 'worried_3_4'),
      Option(text: '항상', nextNodeKey: 'worried_3_5'),
    ],
  ),
  'worried_3_1': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '이 결정이 맞을까', nextNodeKey: 'worried_4_1'),
      Option(text: '후회하지 않을까', nextNodeKey: 'worried_4_2'),
      Option(text: '다른 선택이 나았을까', nextNodeKey: 'worried_4_3'),
      Option(text: '이게 최선일까', nextNodeKey: 'worried_4_4'),
      Option(text: '결정하기가 무서워', nextNodeKey: 'worried_4_5'),
    ],
  ),
  'worried_3_2': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '다른 사람들이 뭐라고 할까', nextNodeKey: 'worried_4_1'),
      Option(text: '이해받을 수 있을까', nextNodeKey: 'worried_4_2'),
      Option(text: '나만 고민하는 건가', nextNodeKey: 'worried_4_3'),
      Option(text: '다른 사람들도 이렇게 고민할까', nextNodeKey: 'worried_4_4'),
      Option(text: '말하기가 무서워', nextNodeKey: 'worried_4_5'),
    ],
  ),
  'worried_3_3': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '혼자 고민이 커져', nextNodeKey: 'worried_4_1'),
      Option(text: '이 고민이 끝이 없어', nextNodeKey: 'worried_4_2'),
      Option(text: '누구에게 말해야 할까', nextNodeKey: 'worried_4_3'),
      Option(text: '이 고민을 해결할 수 있을까', nextNodeKey: 'worried_4_4'),
      Option(text: '이게 정상인가 싶어', nextNodeKey: 'worried_4_5'),
    ],
  ),
  'worried_3_4': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '밤이 되면 더 고민돼', nextNodeKey: 'worried_4_1'),
      Option(text: '생각이 많아져', nextNodeKey: 'worried_4_2'),
      Option(text: '잠들기 어려워', nextNodeKey: 'worried_4_3'),
      Option(text: '이 고민이 계속될까', nextNodeKey: 'worried_4_4'),
      Option(text: '내일도 똑같을 거야', nextNodeKey: 'worried_4_5'),
    ],
  ),
  'worried_3_5': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '항상 고민돼', nextNodeKey: 'worried_4_1'),
      Option(text: '이게 정상인가 싶어', nextNodeKey: 'worried_4_2'),
      Option(text: '언제쯤 해결될까', nextNodeKey: 'worried_4_3'),
      Option(text: '이 고민이 끝이 없어', nextNodeKey: 'worried_4_4'),
      Option(text: '조금이라도 편해지고 싶어', nextNodeKey: 'worried_4_5'),
    ],
  ),
  'worried_4_1': QuestionNode(
    question: '이 고민의 무게는 어떤가요?',
    options: [
      Option(text: '매우 무겁고 부담돼', nextNodeKey: 'worried_5_1'),
      Option(text: '무겁지만 견딜 만해', nextNodeKey: 'worried_5_2'),
      Option(text: '가볍게 느껴져', nextNodeKey: 'worried_5_3'),
      Option(text: '때로는 무겁고 때로는 가벼워', nextNodeKey: 'worried_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'worried_5_5'),
    ],
  ),
  'worried_4_2': QuestionNode(
    question: '이 고민의 무게는 어떤가요?',
    options: [
      Option(text: '매우 무겁고 부담돼', nextNodeKey: 'worried_5_1'),
      Option(text: '무겁지만 견딜 만해', nextNodeKey: 'worried_5_2'),
      Option(text: '가볍게 느껴져', nextNodeKey: 'worried_5_3'),
      Option(text: '때로는 무겁고 때로는 가벼워', nextNodeKey: 'worried_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'worried_5_5'),
    ],
  ),
  'worried_4_3': QuestionNode(
    question: '이 고민의 무게는 어떤가요?',
    options: [
      Option(text: '매우 무겁고 부담돼', nextNodeKey: 'worried_5_1'),
      Option(text: '무겁지만 견딜 만해', nextNodeKey: 'worried_5_2'),
      Option(text: '가볍게 느껴져', nextNodeKey: 'worried_5_3'),
      Option(text: '때로는 무겁고 때로는 가벼워', nextNodeKey: 'worried_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'worried_5_5'),
    ],
  ),
  'worried_4_4': QuestionNode(
    question: '이 고민의 무게는 어떤가요?',
    options: [
      Option(text: '매우 무겁고 부담돼', nextNodeKey: 'worried_5_1'),
      Option(text: '무겁지만 견딜 만해', nextNodeKey: 'worried_5_2'),
      Option(text: '가볍게 느껴져', nextNodeKey: 'worried_5_3'),
      Option(text: '때로는 무겁고 때로는 가벼워', nextNodeKey: 'worried_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'worried_5_5'),
    ],
  ),
  'worried_4_5': QuestionNode(
    question: '이 고민의 무게는 어떤가요?',
    options: [
      Option(text: '매우 무겁고 부담돼', nextNodeKey: 'worried_5_1'),
      Option(text: '무겁지만 견딜 만해', nextNodeKey: 'worried_5_2'),
      Option(text: '가볍게 느껴져', nextNodeKey: 'worried_5_3'),
      Option(text: '때로는 무겁고 때로는 가벼워', nextNodeKey: 'worried_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'worried_5_5'),
    ],
  ),
  'worried_5_1': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '이 고민을 해결하고 싶어', nextNodeKey: 'worried_6_1'),
      Option(text: '누군가에게 말하고 싶어', nextNodeKey: 'worried_6_2'),
      Option(text: '뭔가에 집중하고 싶어', nextNodeKey: 'worried_6_3'),
      Option(text: '다른 생각을 하고 싶어', nextNodeKey: 'worried_6_4'),
      Option(text: '그냥 쉬고 싶어', nextNodeKey: 'worried_6_5'),
    ],
  ),
  'worried_5_2': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '이 고민을 해결하고 싶어', nextNodeKey: 'worried_6_1'),
      Option(text: '누군가에게 말하고 싶어', nextNodeKey: 'worried_6_2'),
      Option(text: '뭔가에 집중하고 싶어', nextNodeKey: 'worried_6_3'),
      Option(text: '다른 생각을 하고 싶어', nextNodeKey: 'worried_6_4'),
      Option(text: '그냥 쉬고 싶어', nextNodeKey: 'worried_6_5'),
    ],
  ),
  'worried_5_3': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '이 고민을 해결하고 싶어', nextNodeKey: 'worried_6_1'),
      Option(text: '누군가에게 말하고 싶어', nextNodeKey: 'worried_6_2'),
      Option(text: '뭔가에 집중하고 싶어', nextNodeKey: 'worried_6_3'),
      Option(text: '다른 생각을 하고 싶어', nextNodeKey: 'worried_6_4'),
      Option(text: '그냥 쉬고 싶어', nextNodeKey: 'worried_6_5'),
    ],
  ),
  'worried_5_4': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '이 고민을 해결하고 싶어', nextNodeKey: 'worried_6_1'),
      Option(text: '누군가에게 말하고 싶어', nextNodeKey: 'worried_6_2'),
      Option(text: '뭔가에 집중하고 싶어', nextNodeKey: 'worried_6_3'),
      Option(text: '다른 생각을 하고 싶어', nextNodeKey: 'worried_6_4'),
      Option(text: '그냥 쉬고 싶어', nextNodeKey: 'worried_6_5'),
    ],
  ),
  'worried_5_5': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '이 고민을 해결하고 싶어', nextNodeKey: 'worried_6_1'),
      Option(text: '누군가에게 말하고 싶어', nextNodeKey: 'worried_6_2'),
      Option(text: '뭔가에 집중하고 싶어', nextNodeKey: 'worried_6_3'),
      Option(text: '다른 생각을 하고 싶어', nextNodeKey: 'worried_6_4'),
      Option(text: '그냥 쉬고 싶어', nextNodeKey: 'worried_6_5'),
    ],
  ),
  'worried_6_1': QuestionNode(
    question: '지금 고민스럽게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'worried_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'worried_7_2'),
      Option(text: '정확해', nextNodeKey: 'worried_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'worried_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'worried_7_5'),
    ],
  ),
  'worried_6_2': QuestionNode(
    question: '지금 고민스럽게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'worried_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'worried_7_2'),
      Option(text: '정확해', nextNodeKey: 'worried_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'worried_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'worried_7_5'),
    ],
  ),
  'worried_6_3': QuestionNode(
    question: '지금 고민스럽게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'worried_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'worried_7_2'),
      Option(text: '정확해', nextNodeKey: 'worried_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'worried_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'worried_7_5'),
    ],
  ),
  'worried_6_4': QuestionNode(
    question: '지금 고민스럽게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'worried_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'worried_7_2'),
      Option(text: '정확해', nextNodeKey: 'worried_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'worried_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'worried_7_5'),
    ],
  ),
  'worried_6_5': QuestionNode(
    question: '지금 고민스럽게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'worried_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'worried_7_2'),
      Option(text: '정확해', nextNodeKey: 'worried_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'worried_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'worried_7_5'),
    ],
  ),
  'worried_7_1': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '이 고민을 해결하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['고민', '철학적', '성장'],
        foodTags: ['든든함', '건강', '만족'],
      ),
      Option(
        text: '뭔가에 집중하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '철학적', '성장'],
        foodTags: ['든든함', '간식', '집중'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '야식', '특별함'],
      ),
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '그냥 편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '간식', '달콤함'],
      ),
    ],
  ),
  'worried_7_2': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '이 고민을 해결하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['고민', '철학적', '성장'],
        foodTags: ['든든함', '건강', '만족'],
      ),
      Option(
        text: '뭔가에 집중하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '철학적', '성장'],
        foodTags: ['든든함', '간식', '집중'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '야식', '특별함'],
      ),
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '그냥 편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '간식', '달콤함'],
      ),
    ],
  ),
  'worried_7_3': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '이 고민을 해결하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['고민', '철학적', '성장'],
        foodTags: ['든든함', '건강', '만족'],
      ),
      Option(
        text: '뭔가에 집중하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '철학적', '성장'],
        foodTags: ['든든함', '간식', '집중'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '야식', '특별함'],
      ),
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '그냥 편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '간식', '달콤함'],
      ),
    ],
  ),
  'worried_7_4': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '이 고민을 해결하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['고민', '철학적', '성장'],
        foodTags: ['든든함', '건강', '만족'],
      ),
      Option(
        text: '뭔가에 집중하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '철학적', '성장'],
        foodTags: ['든든함', '간식', '집중'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '야식', '특별함'],
      ),
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '그냥 편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '간식', '달콤함'],
      ),
    ],
  ),
  'worried_7_5': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '이 고민을 해결하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['고민', '철학적', '성장'],
        foodTags: ['든든함', '건강', '만족'],
      ),
      Option(
        text: '뭔가에 집중하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '철학적', '성장'],
        foodTags: ['든든함', '간식', '집중'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '야식', '특별함'],
      ),
      Option(
        text: '따뜻한 위로가 필요해',
        nextNodeKey: 'end',
        bookTags: ['위로', '따뜻함', '공감'],
        foodTags: ['따뜻함', '국물', '집밥'],
      ),
      Option(
        text: '그냥 편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '간식', '달콤함'],
      ),
    ],
  ),

  // ==================== 심심 (bored) ====================
  'bored_2_1': QuestionNode(
    question: '이 심심함이 커지는 때는 언제인가요?',
    options: [
      Option(text: '아무것도 하지 않을 때', nextNodeKey: 'bored_3_1'),
      Option(text: '반복되는 일을 할 때', nextNodeKey: 'bored_3_2'),
      Option(text: '혼자 있을 때', nextNodeKey: 'bored_3_3'),
      Option(text: '다른 사람들과 있을 때도', nextNodeKey: 'bored_3_4'),
      Option(text: '항상', nextNodeKey: 'bored_3_5'),
    ],
  ),
  'bored_3_1': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '뭘 해야 할지 모르겠어', nextNodeKey: 'bored_4_1'),
      Option(text: '아무것도 하고 싶지 않아', nextNodeKey: 'bored_4_2'),
      Option(text: '시간만 흘러가', nextNodeKey: 'bored_4_3'),
      Option(text: '뭔가 재미있는 게 없을까', nextNodeKey: 'bored_4_4'),
      Option(text: '이게 다인가 싶어', nextNodeKey: 'bored_4_5'),
    ],
  ),
  'bored_3_2': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '또 똑같은 일이야', nextNodeKey: 'bored_4_1'),
      Option(text: '이게 끝이 없어', nextNodeKey: 'bored_4_2'),
      Option(text: '재미없어', nextNodeKey: 'bored_4_3'),
      Option(text: '뭔가 새로운 게 필요해', nextNodeKey: 'bored_4_4'),
      Option(text: '이 일이 의미 없어 보여', nextNodeKey: 'bored_4_5'),
    ],
  ),
  'bored_3_3': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '혼자 있으니 심심해', nextNodeKey: 'bored_4_1'),
      Option(text: '뭔가 할 게 없어', nextNodeKey: 'bored_4_2'),
      Option(text: '시간이 너무 길어', nextNodeKey: 'bored_4_3'),
      Option(text: '뭔가 재미있는 게 필요해', nextNodeKey: 'bored_4_4'),
      Option(text: '이게 다인가 싶어', nextNodeKey: 'bored_4_5'),
    ],
  ),
  'bored_3_4': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '함께 있어도 심심해', nextNodeKey: 'bored_4_1'),
      Option(text: '뭔가 재미있는 게 없을까', nextNodeKey: 'bored_4_2'),
      Option(text: '이게 다인가 싶어', nextNodeKey: 'bored_4_3'),
      Option(text: '뭔가 새로운 게 필요해', nextNodeKey: 'bored_4_4'),
      Option(text: '시간만 흘러가', nextNodeKey: 'bored_4_5'),
    ],
  ),
  'bored_3_5': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '항상 심심해', nextNodeKey: 'bored_4_1'),
      Option(text: '뭔가 재미있는 게 없을까', nextNodeKey: 'bored_4_2'),
      Option(text: '이게 정상인가 싶어', nextNodeKey: 'bored_4_3'),
      Option(text: '뭔가 새로운 게 필요해', nextNodeKey: 'bored_4_4'),
      Option(text: '이 심심함이 끝이 없어', nextNodeKey: 'bored_4_5'),
    ],
  ),
  'bored_4_1': QuestionNode(
    question: '이 심심함의 깊이는 어떤가요?',
    options: [
      Option(text: '매우 깊고 끝이 없어 보여', nextNodeKey: 'bored_5_1'),
      Option(text: '깊지만 뭔가 할 수 있을 것 같아', nextNodeKey: 'bored_5_2'),
      Option(text: '얕아서 괜찮아', nextNodeKey: 'bored_5_3'),
      Option(text: '때로는 깊고 때로는 얕아', nextNodeKey: 'bored_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'bored_5_5'),
    ],
  ),
  'bored_4_2': QuestionNode(
    question: '이 심심함의 깊이는 어떤가요?',
    options: [
      Option(text: '매우 깊고 끝이 없어 보여', nextNodeKey: 'bored_5_1'),
      Option(text: '깊지만 뭔가 할 수 있을 것 같아', nextNodeKey: 'bored_5_2'),
      Option(text: '얕아서 괜찮아', nextNodeKey: 'bored_5_3'),
      Option(text: '때로는 깊고 때로는 얕아', nextNodeKey: 'bored_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'bored_5_5'),
    ],
  ),
  'bored_4_3': QuestionNode(
    question: '이 심심함의 깊이는 어떤가요?',
    options: [
      Option(text: '매우 깊고 끝이 없어 보여', nextNodeKey: 'bored_5_1'),
      Option(text: '깊지만 뭔가 할 수 있을 것 같아', nextNodeKey: 'bored_5_2'),
      Option(text: '얕아서 괜찮아', nextNodeKey: 'bored_5_3'),
      Option(text: '때로는 깊고 때로는 얕아', nextNodeKey: 'bored_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'bored_5_5'),
    ],
  ),
  'bored_4_4': QuestionNode(
    question: '이 심심함의 깊이는 어떤가요?',
    options: [
      Option(text: '매우 깊고 끝이 없어 보여', nextNodeKey: 'bored_5_1'),
      Option(text: '깊지만 뭔가 할 수 있을 것 같아', nextNodeKey: 'bored_5_2'),
      Option(text: '얕아서 괜찮아', nextNodeKey: 'bored_5_3'),
      Option(text: '때로는 깊고 때로는 얕아', nextNodeKey: 'bored_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'bored_5_5'),
    ],
  ),
  'bored_4_5': QuestionNode(
    question: '이 심심함의 깊이는 어떤가요?',
    options: [
      Option(text: '매우 깊고 끝이 없어 보여', nextNodeKey: 'bored_5_1'),
      Option(text: '깊지만 뭔가 할 수 있을 것 같아', nextNodeKey: 'bored_5_2'),
      Option(text: '얕아서 괜찮아', nextNodeKey: 'bored_5_3'),
      Option(text: '때로는 깊고 때로는 얕아', nextNodeKey: 'bored_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'bored_5_5'),
    ],
  ),
  'bored_5_1': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '뭔가 재미있는 걸 하고 싶어', nextNodeKey: 'bored_6_1'),
      Option(text: '뭔가 새로운 걸 배우고 싶어', nextNodeKey: 'bored_6_2'),
      Option(text: '다른 이야기에 빠지고 싶어', nextNodeKey: 'bored_6_3'),
      Option(text: '뭔가 특별한 걸 하고 싶어', nextNodeKey: 'bored_6_4'),
      Option(text: '그냥 편하게 쉬고 싶어', nextNodeKey: 'bored_6_5'),
    ],
  ),
  'bored_5_2': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '뭔가 재미있는 걸 하고 싶어', nextNodeKey: 'bored_6_1'),
      Option(text: '뭔가 새로운 걸 배우고 싶어', nextNodeKey: 'bored_6_2'),
      Option(text: '다른 이야기에 빠지고 싶어', nextNodeKey: 'bored_6_3'),
      Option(text: '뭔가 특별한 걸 하고 싶어', nextNodeKey: 'bored_6_4'),
      Option(text: '그냥 편하게 쉬고 싶어', nextNodeKey: 'bored_6_5'),
    ],
  ),
  'bored_5_3': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '뭔가 재미있는 걸 하고 싶어', nextNodeKey: 'bored_6_1'),
      Option(text: '뭔가 새로운 걸 배우고 싶어', nextNodeKey: 'bored_6_2'),
      Option(text: '다른 이야기에 빠지고 싶어', nextNodeKey: 'bored_6_3'),
      Option(text: '뭔가 특별한 걸 하고 싶어', nextNodeKey: 'bored_6_4'),
      Option(text: '그냥 편하게 쉬고 싶어', nextNodeKey: 'bored_6_5'),
    ],
  ),
  'bored_5_4': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '뭔가 재미있는 걸 하고 싶어', nextNodeKey: 'bored_6_1'),
      Option(text: '뭔가 새로운 걸 배우고 싶어', nextNodeKey: 'bored_6_2'),
      Option(text: '다른 이야기에 빠지고 싶어', nextNodeKey: 'bored_6_3'),
      Option(text: '뭔가 특별한 걸 하고 싶어', nextNodeKey: 'bored_6_4'),
      Option(text: '그냥 편하게 쉬고 싶어', nextNodeKey: 'bored_6_5'),
    ],
  ),
  'bored_5_5': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '뭔가 재미있는 걸 하고 싶어', nextNodeKey: 'bored_6_1'),
      Option(text: '뭔가 새로운 걸 배우고 싶어', nextNodeKey: 'bored_6_2'),
      Option(text: '다른 이야기에 빠지고 싶어', nextNodeKey: 'bored_6_3'),
      Option(text: '뭔가 특별한 걸 하고 싶어', nextNodeKey: 'bored_6_4'),
      Option(text: '그냥 편하게 쉬고 싶어', nextNodeKey: 'bored_6_5'),
    ],
  ),
  'bored_6_1': QuestionNode(
    question: '지금 심심하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'bored_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'bored_7_2'),
      Option(text: '정확해', nextNodeKey: 'bored_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'bored_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'bored_7_5'),
    ],
  ),
  'bored_6_2': QuestionNode(
    question: '지금 심심하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'bored_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'bored_7_2'),
      Option(text: '정확해', nextNodeKey: 'bored_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'bored_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'bored_7_5'),
    ],
  ),
  'bored_6_3': QuestionNode(
    question: '지금 심심하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'bored_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'bored_7_2'),
      Option(text: '정확해', nextNodeKey: 'bored_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'bored_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'bored_7_5'),
    ],
  ),
  'bored_6_4': QuestionNode(
    question: '지금 심심하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'bored_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'bored_7_2'),
      Option(text: '정확해', nextNodeKey: 'bored_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'bored_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'bored_7_5'),
    ],
  ),
  'bored_6_5': QuestionNode(
    question: '지금 심심하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'bored_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'bored_7_2'),
      Option(text: '정확해', nextNodeKey: 'bored_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'bored_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'bored_7_5'),
    ],
  ),
  'bored_7_1': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '뭔가 재미있는 걸 하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['재미', '판타지', '모험'],
        foodTags: ['간식', '달콤함', '즐거움'],
      ),
      Option(
        text: '뭔가 새로운 걸 배우고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '성장', '철학적'],
        foodTags: ['건강', '집밥', '만족'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '야식', '특별함'],
      ),
      Option(
        text: '뭔가 특별한 걸 하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['특별함', '모험', '재미'],
        foodTags: ['특별함', '야식', '즐거움'],
      ),
      Option(
        text: '그냥 편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '간식', '달콤함'],
      ),
    ],
  ),
  'bored_7_2': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '뭔가 재미있는 걸 하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['재미', '판타지', '모험'],
        foodTags: ['간식', '달콤함', '즐거움'],
      ),
      Option(
        text: '뭔가 새로운 걸 배우고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '성장', '철학적'],
        foodTags: ['건강', '집밥', '만족'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '야식', '특별함'],
      ),
      Option(
        text: '뭔가 특별한 걸 하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['특별함', '모험', '재미'],
        foodTags: ['특별함', '야식', '즐거움'],
      ),
      Option(
        text: '그냥 편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '간식', '달콤함'],
      ),
    ],
  ),
  'bored_7_3': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '뭔가 재미있는 걸 하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['재미', '판타지', '모험'],
        foodTags: ['간식', '달콤함', '즐거움'],
      ),
      Option(
        text: '뭔가 새로운 걸 배우고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '성장', '철학적'],
        foodTags: ['건강', '집밥', '만족'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '야식', '특별함'],
      ),
      Option(
        text: '뭔가 특별한 걸 하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['특별함', '모험', '재미'],
        foodTags: ['특별함', '야식', '즐거움'],
      ),
      Option(
        text: '그냥 편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '간식', '달콤함'],
      ),
    ],
  ),
  'bored_7_4': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '뭔가 재미있는 걸 하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['재미', '판타지', '모험'],
        foodTags: ['간식', '달콤함', '즐거움'],
      ),
      Option(
        text: '뭔가 새로운 걸 배우고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '성장', '철학적'],
        foodTags: ['건강', '집밥', '만족'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '야식', '특별함'],
      ),
      Option(
        text: '뭔가 특별한 걸 하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['특별함', '모험', '재미'],
        foodTags: ['특별함', '야식', '즐거움'],
      ),
      Option(
        text: '그냥 편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '간식', '달콤함'],
      ),
    ],
  ),
  'bored_7_5': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '뭔가 재미있는 걸 하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['재미', '판타지', '모험'],
        foodTags: ['간식', '달콤함', '즐거움'],
      ),
      Option(
        text: '뭔가 새로운 걸 배우고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '성장', '철학적'],
        foodTags: ['건강', '집밥', '만족'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '야식', '특별함'],
      ),
      Option(
        text: '뭔가 특별한 걸 하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['특별함', '모험', '재미'],
        foodTags: ['특별함', '야식', '즐거움'],
      ),
      Option(
        text: '그냥 편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '간식', '달콤함'],
      ),
    ],
  ),

  // ==================== 평범 (normal) ====================
  'normal_2_1': QuestionNode(
    question: '이 평범함이 느껴지는 때는 언제인가요?',
    options: [
      Option(text: '하루 일과를 할 때', nextNodeKey: 'normal_3_1'),
      Option(text: '특별한 일이 없을 때', nextNodeKey: 'normal_3_2'),
      Option(text: '다른 사람들과 있을 때', nextNodeKey: 'normal_3_3'),
      Option(text: '혼자 있을 때', nextNodeKey: 'normal_3_4'),
      Option(text: '항상', nextNodeKey: 'normal_3_5'),
    ],
  ),
  'normal_3_1': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '또 똑같은 하루야', nextNodeKey: 'normal_4_1'),
      Option(text: '이게 다인가 싶어', nextNodeKey: 'normal_4_2'),
      Option(text: '특별한 게 없어', nextNodeKey: 'normal_4_3'),
      Option(text: '이게 정상인가 싶어', nextNodeKey: 'normal_4_4'),
      Option(text: '뭔가 더 있어야 할 것 같아', nextNodeKey: 'normal_4_5'),
    ],
  ),
  'normal_3_2': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '특별한 일이 없어', nextNodeKey: 'normal_4_1'),
      Option(text: '이게 다인가 싶어', nextNodeKey: 'normal_4_2'),
      Option(text: '뭔가 더 있어야 할 것 같아', nextNodeKey: 'normal_4_3'),
      Option(text: '이게 정상인가 싶어', nextNodeKey: 'normal_4_4'),
      Option(text: '뭔가 특별한 게 필요해', nextNodeKey: 'normal_4_5'),
    ],
  ),
  'normal_3_3': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '다른 사람들도 이렇게 느낄까', nextNodeKey: 'normal_4_1'),
      Option(text: '이게 정상인가 싶어', nextNodeKey: 'normal_4_2'),
      Option(text: '특별한 게 없어', nextNodeKey: 'normal_4_3'),
      Option(text: '이게 다인가 싶어', nextNodeKey: 'normal_4_4'),
      Option(text: '뭔가 더 있어야 할 것 같아', nextNodeKey: 'normal_4_5'),
    ],
  ),
  'normal_3_4': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '혼자 있어도 평범해', nextNodeKey: 'normal_4_1'),
      Option(text: '이게 정상인가 싶어', nextNodeKey: 'normal_4_2'),
      Option(text: '특별한 게 없어', nextNodeKey: 'normal_4_3'),
      Option(text: '이게 다인가 싶어', nextNodeKey: 'normal_4_4'),
      Option(text: '뭔가 더 있어야 할 것 같아', nextNodeKey: 'normal_4_5'),
    ],
  ),
  'normal_3_5': QuestionNode(
    question: '마음속에서 이런 말이 들리는 것 같아요',
    options: [
      Option(text: '항상 평범해', nextNodeKey: 'normal_4_1'),
      Option(text: '이게 정상인가 싶어', nextNodeKey: 'normal_4_2'),
      Option(text: '뭔가 특별한 게 필요해', nextNodeKey: 'normal_4_3'),
      Option(text: '이게 다인가 싶어', nextNodeKey: 'normal_4_4'),
      Option(text: '뭔가 더 있어야 할 것 같아', nextNodeKey: 'normal_4_5'),
    ],
  ),
  'normal_4_1': QuestionNode(
    question: '이 평범함에 대한 느낌은 어떤가요?',
    options: [
      Option(text: '편안하고 좋아', nextNodeKey: 'normal_5_1'),
      Option(text: '그냥 그래', nextNodeKey: 'normal_5_2'),
      Option(text: '조금 아쉬워', nextNodeKey: 'normal_5_3'),
      Option(text: '때로는 좋고 때로는 아쉬워', nextNodeKey: 'normal_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'normal_5_5'),
    ],
  ),
  'normal_4_2': QuestionNode(
    question: '이 평범함에 대한 느낌은 어떤가요?',
    options: [
      Option(text: '편안하고 좋아', nextNodeKey: 'normal_5_1'),
      Option(text: '그냥 그래', nextNodeKey: 'normal_5_2'),
      Option(text: '조금 아쉬워', nextNodeKey: 'normal_5_3'),
      Option(text: '때로는 좋고 때로는 아쉬워', nextNodeKey: 'normal_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'normal_5_5'),
    ],
  ),
  'normal_4_3': QuestionNode(
    question: '이 평범함에 대한 느낌은 어떤가요?',
    options: [
      Option(text: '편안하고 좋아', nextNodeKey: 'normal_5_1'),
      Option(text: '그냥 그래', nextNodeKey: 'normal_5_2'),
      Option(text: '조금 아쉬워', nextNodeKey: 'normal_5_3'),
      Option(text: '때로는 좋고 때로는 아쉬워', nextNodeKey: 'normal_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'normal_5_5'),
    ],
  ),
  'normal_4_4': QuestionNode(
    question: '이 평범함에 대한 느낌은 어떤가요?',
    options: [
      Option(text: '편안하고 좋아', nextNodeKey: 'normal_5_1'),
      Option(text: '그냥 그래', nextNodeKey: 'normal_5_2'),
      Option(text: '조금 아쉬워', nextNodeKey: 'normal_5_3'),
      Option(text: '때로는 좋고 때로는 아쉬워', nextNodeKey: 'normal_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'normal_5_5'),
    ],
  ),
  'normal_4_5': QuestionNode(
    question: '이 평범함에 대한 느낌은 어떤가요?',
    options: [
      Option(text: '편안하고 좋아', nextNodeKey: 'normal_5_1'),
      Option(text: '그냥 그래', nextNodeKey: 'normal_5_2'),
      Option(text: '조금 아쉬워', nextNodeKey: 'normal_5_3'),
      Option(text: '때로는 좋고 때로는 아쉬워', nextNodeKey: 'normal_5_4'),
      Option(text: '잘 모르겠어', nextNodeKey: 'normal_5_5'),
    ],
  ),
  'normal_5_1': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '이 평범함을 즐기고 싶어', nextNodeKey: 'normal_6_1'),
      Option(text: '뭔가 특별한 걸 하고 싶어', nextNodeKey: 'normal_6_2'),
      Option(text: '뭔가 배우고 싶어', nextNodeKey: 'normal_6_3'),
      Option(text: '다른 이야기에 빠지고 싶어', nextNodeKey: 'normal_6_4'),
      Option(text: '그냥 편하게 쉬고 싶어', nextNodeKey: 'normal_6_5'),
    ],
  ),
  'normal_5_2': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '이 평범함을 즐기고 싶어', nextNodeKey: 'normal_6_1'),
      Option(text: '뭔가 특별한 걸 하고 싶어', nextNodeKey: 'normal_6_2'),
      Option(text: '뭔가 배우고 싶어', nextNodeKey: 'normal_6_3'),
      Option(text: '다른 이야기에 빠지고 싶어', nextNodeKey: 'normal_6_4'),
      Option(text: '그냥 편하게 쉬고 싶어', nextNodeKey: 'normal_6_5'),
    ],
  ),
  'normal_5_3': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '이 평범함을 즐기고 싶어', nextNodeKey: 'normal_6_1'),
      Option(text: '뭔가 특별한 걸 하고 싶어', nextNodeKey: 'normal_6_2'),
      Option(text: '뭔가 배우고 싶어', nextNodeKey: 'normal_6_3'),
      Option(text: '다른 이야기에 빠지고 싶어', nextNodeKey: 'normal_6_4'),
      Option(text: '그냥 편하게 쉬고 싶어', nextNodeKey: 'normal_6_5'),
    ],
  ),
  'normal_5_4': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '이 평범함을 즐기고 싶어', nextNodeKey: 'normal_6_1'),
      Option(text: '뭔가 특별한 걸 하고 싶어', nextNodeKey: 'normal_6_2'),
      Option(text: '뭔가 배우고 싶어', nextNodeKey: 'normal_6_3'),
      Option(text: '다른 이야기에 빠지고 싶어', nextNodeKey: 'normal_6_4'),
      Option(text: '그냥 편하게 쉬고 싶어', nextNodeKey: 'normal_6_5'),
    ],
  ),
  'normal_5_5': QuestionNode(
    question: '지금 가장 원하는 건 무엇인가요?',
    options: [
      Option(text: '이 평범함을 즐기고 싶어', nextNodeKey: 'normal_6_1'),
      Option(text: '뭔가 특별한 걸 하고 싶어', nextNodeKey: 'normal_6_2'),
      Option(text: '뭔가 배우고 싶어', nextNodeKey: 'normal_6_3'),
      Option(text: '다른 이야기에 빠지고 싶어', nextNodeKey: 'normal_6_4'),
      Option(text: '그냥 편하게 쉬고 싶어', nextNodeKey: 'normal_6_5'),
    ],
  ),
  'normal_6_1': QuestionNode(
    question: '지금 평범하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'normal_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'normal_7_2'),
      Option(text: '정확해', nextNodeKey: 'normal_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'normal_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'normal_7_5'),
    ],
  ),
  'normal_6_2': QuestionNode(
    question: '지금 평범하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'normal_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'normal_7_2'),
      Option(text: '정확해', nextNodeKey: 'normal_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'normal_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'normal_7_5'),
    ],
  ),
  'normal_6_3': QuestionNode(
    question: '지금 평범하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'normal_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'normal_7_2'),
      Option(text: '정확해', nextNodeKey: 'normal_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'normal_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'normal_7_5'),
    ],
  ),
  'normal_6_4': QuestionNode(
    question: '지금 평범하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'normal_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'normal_7_2'),
      Option(text: '정확해', nextNodeKey: 'normal_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'normal_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'normal_7_5'),
    ],
  ),
  'normal_6_5': QuestionNode(
    question: '지금 평범하게 느끼고 있는 것 같아요',
    options: [
      Option(text: '맞아, 그렇게 느껴져', nextNodeKey: 'normal_7_1'),
      Option(text: '조금 다르게 느껴져', nextNodeKey: 'normal_7_2'),
      Option(text: '정확해', nextNodeKey: 'normal_7_3'),
      Option(text: '그런 기분이야', nextNodeKey: 'normal_7_4'),
      Option(text: '맞는 것 같아', nextNodeKey: 'normal_7_5'),
    ],
  ),
  'normal_7_1': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '이 평범함을 즐기고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
      Option(
        text: '뭔가 특별한 걸 하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['특별함', '모험', '재미'],
        foodTags: ['특별함', '야식', '즐거움'],
      ),
      Option(
        text: '뭔가 배우고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '성장', '철학적'],
        foodTags: ['건강', '집밥', '만족'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '야식', '특별함'],
      ),
      Option(
        text: '그냥 편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '간식', '달콤함'],
      ),
    ],
  ),
  'normal_7_2': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '이 평범함을 즐기고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
      Option(
        text: '뭔가 특별한 걸 하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['특별함', '모험', '재미'],
        foodTags: ['특별함', '야식', '즐거움'],
      ),
      Option(
        text: '뭔가 배우고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '성장', '철학적'],
        foodTags: ['건강', '집밥', '만족'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '야식', '특별함'],
      ),
      Option(
        text: '그냥 편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '간식', '달콤함'],
      ),
    ],
  ),
  'normal_7_3': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '이 평범함을 즐기고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
      Option(
        text: '뭔가 특별한 걸 하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['특별함', '모험', '재미'],
        foodTags: ['특별함', '야식', '즐거움'],
      ),
      Option(
        text: '뭔가 배우고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '성장', '철학적'],
        foodTags: ['건강', '집밥', '만족'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '야식', '특별함'],
      ),
      Option(
        text: '그냥 편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '간식', '달콤함'],
      ),
    ],
  ),
  'normal_7_4': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '이 평범함을 즐기고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
      Option(
        text: '뭔가 특별한 걸 하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['특별함', '모험', '재미'],
        foodTags: ['특별함', '야식', '즐거움'],
      ),
      Option(
        text: '뭔가 배우고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '성장', '철학적'],
        foodTags: ['건강', '집밥', '만족'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '야식', '특별함'],
      ),
      Option(
        text: '그냥 편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '간식', '달콤함'],
      ),
    ],
  ),
  'normal_7_5': QuestionNode(
    question: '지금의 감정을 인정하고 받아들이는 시간이에요. 당신을 위한 추천이에요',
    options: [
      Option(
        text: '이 평범함을 즐기고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '집밥', '따뜻함'],
      ),
      Option(
        text: '뭔가 특별한 걸 하고 싶어',
        nextNodeKey: 'end',
        bookTags: ['특별함', '모험', '재미'],
        foodTags: ['특별함', '야식', '즐거움'],
      ),
      Option(
        text: '뭔가 배우고 싶어',
        nextNodeKey: 'end',
        bookTags: ['지식', '성장', '철학적'],
        foodTags: ['건강', '집밥', '만족'],
      ),
      Option(
        text: '다른 이야기에 빠지고 싶어',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '재미'],
        foodTags: ['간편함', '야식', '특별함'],
      ),
      Option(
        text: '그냥 편하게 쉬고 싶어',
        nextNodeKey: 'end',
        bookTags: ['힐링', '조용함', '위로'],
        foodTags: ['편안함', '간식', '달콤함'],
      ),
    ],
  ),
};
