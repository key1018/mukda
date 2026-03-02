import '../../question_tree.dart';

final Map<String, QuestionNode> bookHappyTree = {
  // ==================== depth 2: 상황/맥락 ====================
  'book_happy_2_1': QuestionNode(
    question: '이 즐거움이 가장 크게 느껴지는 순간은 언제인가요?',
    options: [
      Option(text: '좋아하는 일을 할 때', nextNodeKey: 'book_happy_3_1'),
      Option(text: '마음 맞는 사람들과 함께 있을 때', nextNodeKey: 'book_happy_3_2'),
      Option(text: '작은 행복을 발견했을 때', nextNodeKey: 'book_happy_3_3'),
      Option(text: '뭔가를 이뤘을 때', nextNodeKey: 'book_happy_3_4'),
      Option(text: '특별한 이유 없이 그냥', nextNodeKey: 'book_happy_3_5'),
    ],
  ),

  // ==================== depth 3: 내적 독백 ====================
  'book_happy_3_1': QuestionNode(
    question: '몰입의 즐거움 속에서 당신의 마음은 무엇이라 말하나요?',
    options: [
      Option(text: '"이걸 할 때가 진짜 나다워"', nextNodeKey: 'book_happy_4_3'),
      Option(text: '"시간 가는 줄 모를 만큼 완벽해"', nextNodeKey: 'book_happy_4_5'),
      Option(text: '"이 순간이 영원히 멈췄으면 좋겠어"', nextNodeKey: 'book_happy_4_1'),
      Option(text: '"이 에너지를 더 멋지게 쓰고 싶어"', nextNodeKey: 'book_happy_4_2'),
      Option(text: '"세상이 다 내 것 같은 기분이야"', nextNodeKey: 'book_happy_4_4'),
    ],
  ),
  'book_happy_3_2': QuestionNode(
    question: '소중한 이들과 함께할 때 마음속에 어떤 빛이 번지나요?',
    options: [
      Option(text: '"함께 웃을 수 있어서 정말 행복해"', nextNodeKey: 'book_happy_4_4'),
      Option(text: '"혼자가 아니라는 사실이 위안이 돼"', nextNodeKey: 'book_happy_4_1'),
      Option(text: '"이 사람들과 있으면 내가 더 좋아져"', nextNodeKey: 'book_happy_4_5'),
      Option(text: '"아무 말 안 해도 충분히 편안해"', nextNodeKey: 'book_happy_4_2'),
      Option(text: '"이 따스함을 모두에게 나눠주고 싶어"', nextNodeKey: 'book_happy_4_3'),
    ],
  ),
  'book_happy_3_3': QuestionNode(
    question: '일상의 작은 조각이 반짝일 때 어떤 생각이 머무나요?',
    options: [
      Option(text: '"사소한 것들이 이렇게 예뻤나?"', nextNodeKey: 'book_happy_4_2'),
      Option(text: '"평범한 하루가 선물처럼 느껴져"', nextNodeKey: 'book_happy_4_4'),
      Option(text: '"발견하는 기쁨이 삶을 채우네"', nextNodeKey: 'book_happy_4_1'),
      Option(text: '"모든 게 다 감사하고 소중해"', nextNodeKey: 'book_happy_4_3'),
      Option(text: '"이 장면을 사진처럼 남기고 싶어"', nextNodeKey: 'book_happy_4_5'),
    ],
  ),
  'book_happy_3_4': QuestionNode(
    question: '성취의 기쁨을 맛본 순간, 스스로에게 어떤 말을 건네나요?',
    options: [
      Option(text: '"드디어 해냈어, 내가 너무 자랑스러워!"', nextNodeKey: 'book_happy_4_5'),
      Option(text: '"노력한 보람이 온몸으로 느껴져"', nextNodeKey: 'book_happy_4_2'),
      Option(text: '"더 높은 곳으로 가고 싶어"', nextNodeKey: 'book_happy_4_3'),
      Option(text: '"이 짜릿한 전율을 잊지 못할 거야"', nextNodeKey: 'book_happy_4_1'),
      Option(text: '"다음 도전이 벌써 기다려져"', nextNodeKey: 'book_happy_4_4'),
    ],
  ),
  'book_happy_3_5': QuestionNode(
    question: '이유 없이 찾아온 맑은 즐거움은 어떤 목소리인가요?',
    options: [
      Option(text: '"그냥 모든 게 다 괜찮아 보여"', nextNodeKey: 'book_happy_4_1'),
      Option(text: '"살아있다는 것 자체가 축복 같아"', nextNodeKey: 'book_happy_4_3'),
      Option(text: '"마음이 구름 위를 걷는 기분이야"', nextNodeKey: 'book_happy_4_5'),
      Option(text: '"세상이 이렇게 다정할 수 있나?"', nextNodeKey: 'book_happy_4_2'),
      Option(text: '"이 평화로운 설렘이 좋아"', nextNodeKey: 'book_happy_4_4'),
    ],
  ),

  // ==================== depth 4: 물리적 질감 ====================
  'book_happy_4_1': QuestionNode(
    question: '그 즐거움은 당신의 마음에 어떤 풍경을 그려내나요?',
    options: [
      Option(text: '충만하고 포근한 숲의 온기', nextNodeKey: 'book_happy_5_3'),
      Option(text: '가볍고 경쾌하게 튀어오르는 분수', nextNodeKey: 'book_happy_5_5'),
      Option(text: '따뜻하고 부드러운 아침 햇살', nextNodeKey: 'book_happy_5_1'),
      Option(text: '활기차고 생동감 넘치는 축제의 광장', nextNodeKey: 'book_happy_5_4'),
      Option(text: '고요하고 평화로운 호숫가의 산책', nextNodeKey: 'book_happy_5_2'),
    ],
  ),
  'book_happy_4_2': QuestionNode(
    question: '지금 느끼는 즐거움의 빛깔을 고른다면?',
    options: [
      Option(text: '따뜻하게 반짝이는 눈부신 금빛', nextNodeKey: 'book_happy_5_4'),
      Option(text: '밝고 선명하게 터지는 비타민 노란색', nextNodeKey: 'book_happy_5_1'),
      Option(text: '부드럽게 스며드는 포근한 분홍빛', nextNodeKey: 'book_happy_5_5'),
      Option(text: '싱그럽고 푸른 5월의 초록빛', nextNodeKey: 'book_happy_5_2'),
      Option(text: '가슴을 뻥 뚫어주는 투명한 하늘색', nextNodeKey: 'book_happy_5_3'),
    ],
  ),
  'book_happy_4_3': QuestionNode(
    question: '즐거움이 당신의 감각을 어떻게 깨우고 있나요?',
    options: [
      Option(text: '가슴 깊은 곳이 꽉 차는 충만함', nextNodeKey: 'book_happy_5_5'),
      Option(text: '얼굴 전체에 번지는 환한 미소', nextNodeKey: 'book_happy_5_2'),
      Option(text: '온몸에 피가 도는 듯한 열기', nextNodeKey: 'book_happy_5_3'),
      Option(text: '발걸음이 절로 가벼워지는 활력', nextNodeKey: 'book_happy_5_1'),
      Option(text: '주변 공기가 달콤해지는 평온함', nextNodeKey: 'book_happy_5_4'),
    ],
  ),
  'book_happy_4_4': QuestionNode(
    question: '이 즐거움의 온도는 당신에게 어떻게 닿나요?',
    options: [
      Option(text: '온몸을 따뜻하게 감싸는 난로 같은 온도', nextNodeKey: 'book_happy_5_2'),
      Option(text: '정신이 번쩍 들 만큼 상쾌한 시원함', nextNodeKey: 'book_happy_5_4'),
      Option(text: '햇살에 잘 말린 이불 같은 포근함', nextNodeKey: 'book_happy_5_1'),
      Option(text: '심장을 뜨겁게 달구는 짜릿한 열기', nextNodeKey: 'book_happy_5_3'),
      Option(text: '있는 듯 없는 듯 쾌적하고 편안한 온도', nextNodeKey: 'book_happy_5_5'),
    ],
  ),
  'book_happy_4_5': QuestionNode(
    question: '즐거운 기운이 당신을 어떤 행동으로 이끄나요?',
    options: [
      Option(text: '세상을 향해 큰 소리로 외치고 싶은 기분', nextNodeKey: 'book_happy_5_1'),
      Option(text: '누구에게든 다정하게 말을 걸고 싶은 마음', nextNodeKey: 'book_happy_5_3'),
      Option(text: '당장이라도 새로운 일을 시작할 에너지', nextNodeKey: 'book_happy_5_5'),
      Option(text: '이 순간을 가만히 음미하고 싶은 사색', nextNodeKey: 'book_happy_5_2'),
      Option(text: '가까운 사람들과 맛있는 걸 나누고 싶은 즐거움', nextNodeKey: 'book_happy_5_4'),
    ],
  ),

  // ==================== depth 5: 욕구 파악 ====================
  'book_happy_5_1': QuestionNode(
    question: '이 벅찬 에너지를 어떻게 터뜨려보고 싶나요?',
    options: [
      Option(text: '이 황홀한 순간을 예술처럼 박제하기', nextNodeKey: 'book_happy_6_3'),
      Option(text: '꺼지지 않는 불꽃처럼 이 기분 지속하기', nextNodeKey: 'book_happy_6_4'),
      Option(text: '아무 생각 없이 이 활기를 온몸으로 즐기기', nextNodeKey: 'book_happy_6_5'),
      Option(text: '전율이 느껴지는 기쁨의 끝까지 파고들기', nextNodeKey: 'book_happy_6_1'),
      Option(text: '세상 모든 사람과 이 환희를 공유하기', nextNodeKey: 'book_happy_6_2'),
    ],
  ),
  'book_happy_5_2': QuestionNode(
    question: '입가에 머무는 이 미소를 어떻게 간직하고 싶나요?',
    options: [
      Option(text: '누구라도 붙잡고 이 기쁨을 떠들기', nextNodeKey: 'book_happy_6_2'),
      Option(text: '구름 위를 걷는 듯 가볍게 흩날리기', nextNodeKey: 'book_happy_6_5'),
      Option(text: '내 삶의 단단한 행복 뿌리로 만들기', nextNodeKey: 'book_happy_6_4'),
      Option(text: '심장이 터질 듯한 짜릿한 서사 속에 빠지기', nextNodeKey: 'book_happy_6_1'),
      Option(text: '아름다운 시각적 언어로 남겨두기', nextNodeKey: 'book_happy_6_3'),
    ],
  ),
  'book_happy_5_3': QuestionNode(
    question: '다정한 기운이 가득한 지금, 당신의 영혼은 무엇을 갈망하나요?',
    options: [
      Option(text: '마음의 온도를 지켜줄 현명한 지혜', nextNodeKey: 'book_happy_6_4'),
      Option(text: '영감을 자극하는 감각적인 이미지', nextNodeKey: 'book_happy_6_3'),
      Option(text: '배꼽 빠지게 웃을 수 있는 유쾌함', nextNodeKey: 'book_happy_6_5'),
      Option(text: '기쁨의 본질을 꿰뚫는 묵직한 탐구', nextNodeKey: 'book_happy_6_1'),
      Option(text: '체온이 느껴지는 따뜻한 공감', nextNodeKey: 'book_happy_6_2'),
    ],
  ),
  'book_happy_5_4': QuestionNode(
    question: '최고조에 달한 이 보람과 확신을 어디로 이끌어볼까요?',
    options: [
      Option(text: '나만의 색깔이 담긴 특별한 기록', nextNodeKey: 'book_happy_6_3'),
      Option(text: '행복을 일상으로 만드는 구체적 루틴', nextNodeKey: 'book_happy_6_4'),
      Option(text: '한순간도 눈 뗄 수 없는 즐거운 유희', nextNodeKey: 'book_happy_6_5'),
      Option(text: '정신을 맑게 깨우는 이성적인 통찰', nextNodeKey: 'book_happy_6_1'),
      Option(text: '함께해서 더 커지는 나눔의 가치', nextNodeKey: 'book_happy_6_2'),
    ],
  ),
  'book_happy_5_5': QuestionNode(
    question: '멈추지 않는 이 역동적인 활기를 어떤 방식으로 즐길까요?',
    options: [
      Option(text: '벅찬 환희를 함께 나누는 축제의 시간', nextNodeKey: 'book_happy_6_2'),
      Option(text: '창조적인 감각이 폭발하는 기록의 시간', nextNodeKey: 'book_happy_6_3'),
      Option(text: '기분 좋은 에너지를 다스리는 사색의 시간', nextNodeKey: 'book_happy_6_4'),
      Option(text: '모든 의미를 걷어낸 순수한 웃음의 시간', nextNodeKey: 'book_happy_6_5'),
      Option(text: '지적 전율이 흐르는 몰입의 시간', nextNodeKey: 'book_happy_6_1'),
    ],
  ),

  // ==================== depth 6: 요약 및 1:1 매칭 분기 ====================
  'book_happy_6_1': QuestionNode(
    question: '지금 당신은 즐거움을 더 깊고 풍성하게 확장하며 그 의미를 음미하고 싶은 상태군요.',
    options: [
      Option(text: '기쁨의 본질을 파고들래요', nextNodeKey: 'book_happy_7_1'),
      Option(text: '즐거움의 이면을 들여다볼래요', nextNodeKey: 'book_happy_7_6'),
      Option(text: '깊은 통찰과 나눔의 조화를 찾을래요', nextNodeKey: 'book_happy_7_7'),
      Option(text: '은은하게 에너지를 채울래요', nextNodeKey: 'book_happy_7_8'),
      Option(text: '이 찬란한 순간을 기록할래요', nextNodeKey: 'book_happy_7_3'),
    ],
  ),
  'book_happy_6_2': QuestionNode(
    question: '지금 당신은 즐거움을 누군가와 나누며 함께 공감하고 싶은 상태군요.',
    options: [
      Option(text: '온기를 나누는 연결이 필요해요', nextNodeKey: 'book_happy_7_2'),
      Option(text: '기쁨을 전파하는 기술을 배울래요', nextNodeKey: 'book_happy_7_10'),
      Option(text: '함께해서 즐거운 방법을 원해요', nextNodeKey: 'book_happy_7_7'),
      Option(text: '부담 없이 웃으며 즐길래요', nextNodeKey: 'book_happy_7_5'),
      Option(text: '즐거움의 가치를 배울래요', nextNodeKey: 'book_happy_7_6'),
    ],
  ),
  'book_happy_6_3': QuestionNode(
    question: '지금 당신은 특별한 이 순간을 아름답게 기록하고 시각적으로 간직하고 싶은 상태군요.',
    options: [
      Option(text: '찰나를 포착하는 기록을 할래요', nextNodeKey: 'book_happy_7_3'),
      Option(text: '즐거움을 전파하는 창의적 방법을 알고싶어요', nextNodeKey: 'book_happy_7_10'),
      Option(text: '감동을 주는 예술을 볼래요', nextNodeKey: 'book_happy_7_5'),
      Option(text: '성찰이 담긴 깊은 문장을 원해요', nextNodeKey: 'book_happy_7_1'),
      Option(text: '기쁨을 기록하는 습관을 들일래요', nextNodeKey: 'book_happy_7_8'),
    ],
  ),
  'book_happy_6_4': QuestionNode(
    question: '지금 당신은 이 행복한 기분을 오래 유지하며 일상을 가꾸고 싶은 상태군요.',
    options: [
      Option(text: '행복을 지속하는 지혜가 필요해요', nextNodeKey: 'book_happy_7_4'),
      Option(text: '마음의 온도를 포근하게 지킬래요', nextNodeKey: 'book_happy_7_8'),
      Option(text: '성찰을 통해 더 단단해지고 싶어요', nextNodeKey: 'book_happy_7_7'),
      Option(text: '즐거운 이야기에 푹 빠질래요', nextNodeKey: 'book_happy_7_9'),
      Option(text: '사람들과 함께 행복을 나눌래요', nextNodeKey: 'book_happy_7_2'),
    ],
  ),
  'book_happy_6_5': QuestionNode(
    question: '지금 당신은 즐거움 그 자체를 순수하고 경쾌하게 만끽하고 싶은 상태군요.',
    options: [
      Option(text: '유쾌한 웃음 속으로 들어갈래요', nextNodeKey: 'book_happy_7_5'),
      Option(text: '생각 없이 즐거운 글을 읽을래요', nextNodeKey: 'book_happy_7_9'),
      Option(text: '산뜻한 문장으로 즐거움을 더할래요', nextNodeKey: 'book_happy_7_8'),
      Option(text: '더 벅찬 감동을 탐험해볼래요', nextNodeKey: 'book_happy_7_1'),
      Option(text: '이 즐거움을 창의적으로 나눌래요', nextNodeKey: 'book_happy_7_10'),
    ],
  ),

  // ==================== depth 7: 최종 결과 ====================
  'book_happy_7_1': QuestionNode(
    question: '당신은 즐거움을 더 깊고 풍성하게 느끼고 싶어합니다. 기쁨의 근원을 탐구하는 문장들입니다.',
    options: [
      Option(
        text: '행복의 본질을 탐구하는 철학서',
        nextNodeKey: 'end',
        bookTags: ['행복', '본질', '즐거움', '철학'],
      ),
      Option(
        text: '삶의 충만함을 담은 대서사 소설',
        nextNodeKey: 'end',
        bookTags: ['충만', '삶', '긍정', '풍성'],
      ),
      Option(
        text: '놀이와 유희의 역사를 다룬 인문서',
        nextNodeKey: 'end',
        bookTags: ['놀이', '즐거움', '철학', '인류'],
      ),
      Option(
        text: '의미 있는 기쁨을 파헤치는 에세이',
        nextNodeKey: 'end',
        bookTags: ['의미', '즐거움', '에세이', '탐구'],
      ),
      Option(
        text: '성취와 보람의 뜨거운 이야기',
        nextNodeKey: 'end',
        bookTags: ['성취', '보람', '즐거움', '성장'],
      ),
    ],
  ),
  'book_happy_7_2': QuestionNode(
    question: '당신은 누군가와 함께 나누는 연결의 즐거움을 원합니다. 온기를 나누는 책들입니다.',
    options: [
      Option(
        text: '함께 웃고 울 수 있는 다정한 소설',
        nextNodeKey: 'end',
        bookTags: ['함께', '우정', '사랑', '감동'],
      ),
      Option(
        text: '관계의 기쁨을 다룬 따뜻한 에세이',
        nextNodeKey: 'end',
        bookTags: ['관계', '기쁨', '에세이', '다정'],
      ),
      Option(
        text: '나눔과 소통의 가치를 전하는 책',
        nextNodeKey: 'end',
        bookTags: ['나눔', '공유', '연결', '따뜻'],
      ),
      Option(
        text: '사람 사이의 거리를 좁히는 문장들',
        nextNodeKey: 'end',
        bookTags: ['대화', '공유', '즐거움', '연결'],
      ),
      Option(
        text: '우정의 위대함을 기록한 실화집',
        nextNodeKey: 'end',
        bookTags: ['우정', '실화', '기쁨', '감동'],
      ),
    ],
  ),
  'book_happy_7_3': QuestionNode(
    question: '당신은 이 특별한 순간을 아름답게 기록하고 싶어합니다. 감각을 깨워줄 시각적인 책들입니다.',
    options: [
      Option(
        text: '아름다운 순간을 포착한 감성 사진집',
        nextNodeKey: 'end',
        bookTags: ['순간', '기록', '아름다움', '감성'],
      ),
      Option(
        text: '일상의 기쁨을 담은 따스한 그림 에세이',
        nextNodeKey: 'end',
        bookTags: ['일상', '그림', '즐거움', '시각'],
      ),
      Option(
        text: '특별한 감각을 깨우는 예술 화보집',
        nextNodeKey: 'end',
        bookTags: ['예술', '감각', '풍성', '시각'],
      ),
      Option(
        text: '순간을 박제하는 기록의 미학 워크북',
        nextNodeKey: 'end',
        bookTags: ['기록', '취향', '박제', '나'],
      ),
      Option(
        text: '시적 상상력이 가득한 산문집',
        nextNodeKey: 'end',
        bookTags: ['산문', '포착', '감각', '시적'],
      ),
    ],
  ),
  'book_happy_7_4': QuestionNode(
    question: '당신은 이 즐거움을 오래 유지하며 마음을 가꾸고 싶어합니다. 행복을 지속하는 지혜들입니다.',
    options: [
      Option(
        text: '행복을 지속하는 구체적 습관 가이드',
        nextNodeKey: 'end',
        bookTags: ['지속', '행복', '실용', '습관'],
      ),
      Option(
        text: '일상의 마음 온도를 높이는 법',
        nextNodeKey: 'end',
        bookTags: ['마음', '가꾸기', '따뜻', '지혜'],
      ),
      Option(
        text: '긍정의 에너지를 유지하는 에세이',
        nextNodeKey: 'end',
        bookTags: ['긍정', '에너지', '에세이', '희망'],
      ),
      Option(
        text: '즐거운 일상을 설계하는 루틴북',
        nextNodeKey: 'end',
        bookTags: ['일상', '라이프', '실천', '루틴'],
      ),
      Option(
        text: '행복 심리학이 들려주는 비결',
        nextNodeKey: 'end',
        bookTags: ['심리', '행복', '지혜', '긍정'],
      ),
    ],
  ),
  'book_happy_7_5': QuestionNode(
    question: '당신은 아무 부담 없이 순수한 즐거움을 만끽하고 싶어합니다. 경쾌한 유머와 웃음입니다.',
    options: [
      Option(
        text: '배꼽 잡게 웃기는 코믹 만화',
        nextNodeKey: 'end',
        bookTags: ['만화', '웃음', '재미', '풍자'],
      ),
      Option(
        text: '유쾌한 티키타카가 빛나는 웹툰',
        nextNodeKey: 'end',
        bookTags: ['웹툰', '유머', '일상', '공감'],
      ),
      Option(
        text: '속도감 넘치고 발랄한 코미디 소설',
        nextNodeKey: 'end',
        bookTags: ['코미디', '소설', '재미', '경쾌'],
      ),
      Option(
        text: '짧고 위트 있는 유머 단상집',
        nextNodeKey: 'end',
        bookTags: ['짧음', '유머', '부담', '위트'],
      ),
      Option(
        text: '행복한 상상이 가득한 동화 소설',
        nextNodeKey: 'end',
        bookTags: ['행복', '상상', '밝음', '포근'],
      ),
    ],
  ),
  'book_happy_7_6': QuestionNode(
    question: '당신의 즐거움은 입체적이고 특별하군요. 그 미묘한 결을 포착하는 성찰의 책들입니다.',
    options: [
      Option(
        text: '즐거움의 다양한 얼굴을 다룬 인문서',
        nextNodeKey: 'end',
        bookTags: ['다양', '탐구', '인문', '깊이'],
      ),
      Option(
        text: '기쁨에 대한 철학적 성찰의 문장',
        nextNodeKey: 'end',
        bookTags: ['철학', '성찰', '사고', '성숙'],
      ),
      Option(
        text: '즐거움의 문화적 배경을 훑는 교양서',
        nextNodeKey: 'end',
        bookTags: ['문화', '사회', '맥락', '이해'],
      ),
      Option(
        text: '예술이 기쁨을 표현하는 다양한 방식',
        nextNodeKey: 'end',
        bookTags: ['예술', '표현', '창작', '감성'],
      ),
      Option(
        text: '개인적인 즐거움을 기록한 진솔한 수필',
        nextNodeKey: 'end',
        bookTags: ['경험', '에세이', '공감', '진솔'],
      ),
    ],
  ),
  'book_happy_7_7': QuestionNode(
    question: '깊은 사색과 따뜻한 나눔, 두 가지를 모두 잡고 싶군요. 조화로운 기쁨의 안내서입니다.',
    options: [
      Option(
        text: '통찰력 있는 즐거움과 연결의 지혜',
        nextNodeKey: 'end',
        bookTags: ['깊이', '공유', '통합', '연결'],
      ),
      Option(
        text: '의미 있는 삶과 나눔의 즐거움',
        nextNodeKey: 'end',
        bookTags: ['의미', '나눔', '탐구', '공유'],
      ),
      Option(
        text: '이론과 실천을 아우르는 종합 가이드',
        nextNodeKey: 'end',
        bookTags: ['이론', '실천', '가이드', '종합'],
      ),
      Option(
        text: '개인과 공동체가 함께 행복한 길',
        nextNodeKey: 'end',
        bookTags: ['개인', '공동체', '연결', '지속'],
      ),
      Option(
        text: '기쁨을 탐구하며 전파하는 법',
        nextNodeKey: 'end',
        bookTags: ['탐구', '공유', '전파', '실천'],
      ),
    ],
  ),
  'book_happy_7_8': QuestionNode(
    question: '이 기분 좋은 에너지를 은은하게 지속하고 싶군요. 마음을 산뜻하게 채워줄 가벼운 문장들입니다.',
    options: [
      Option(
        text: '기운을 북돋는 따뜻한 일상 에세이',
        nextNodeKey: 'end',
        bookTags: ['에너지', '에세이', '가벼움', '유지'],
      ),
      Option(
        text: '부담 없이 스르륵 읽히는 힐링 산문',
        nextNodeKey: 'end',
        bookTags: ['부담', '산뜻', '가벼움', '쉬움'],
      ),
      Option(
        text: '말랑말랑하고 기분 좋은 짧은 이야기',
        nextNodeKey: 'end',
        bookTags: ['편안', '이야기', '달콤', '경쾌'],
      ),
      Option(
        text: '한 장씩 넘기며 미소 짓는 가벼운 문학',
        nextNodeKey: 'end',
        bookTags: ['가벼움', '문학', '편안', '웃음'],
      ),
      Option(
        text: '긍정의 영감을 주는 라이프 잡지',
        nextNodeKey: 'end',
        bookTags: ['쉬움', '가이드', '감각', '긍정'],
      ),
    ],
  ),
  'book_happy_7_9': QuestionNode(
    question: '지금은 생각보다 느낌이 먼저예요. 머리보다 웃음이 앞서는 순간, 가볍게 즐길 수 있는 책들이에요.',
    options: [
      Option(
        text: '짧게 읽고 바로 웃는 유머 글',
        nextNodeKey: 'end',
        bookTags: ['유머', '짧음', '가벼움', '즉각', '웃음'],
      ),
      Option(
        text: '리듬감 있게 읽히는 발랄한 이야기',
        nextNodeKey: 'end',
        bookTags: ['경쾌', '리듬', '재미', '가벼움', '몰입'],
      ),
      Option(
        text: '생각 없이 빠져드는 코믹 콘텐츠',
        nextNodeKey: 'end',
        bookTags: ['코믹', '가벼움', '몰입', '재미', '순간'],
      ),
      Option(
        text: '기분 전환용 초간단 읽을거리',
        nextNodeKey: 'end',
        bookTags: ['전환', '짧음', '쉬움', '가벼움', '즉시'],
      ),
      Option(
        text: '아무 페이지나 펼쳐도 즐거운 책',
        nextNodeKey: 'end',
        bookTags: ['랜덤', '가벼움', '재미', '편안', '즉흥'],
      ),
    ],
  ),
  'book_happy_7_10': QuestionNode(
    question: '나만의 방식대로 기쁨을 전파하고 싶군요. 당신만의 개성 있는 나눔을 찾아볼까요?',
    options: [
      Option(
        text: '다양한 나눔의 형태를 소개하는 책',
        nextNodeKey: 'end',
        bookTags: ['다양', '나눔', '방법', '선택'],
      ),
      Option(
        text: '개인 맞춤형 공유와 연결의 기술',
        nextNodeKey: 'end',
        bookTags: ['맞춤', '공유', '개인', '탐색'],
      ),
      Option(
        text: '창의적인 소통법을 담은 가이드북',
        nextNodeKey: 'end',
        bookTags: ['접근', '가이드', '창의', '선택'],
      ),
      Option(
        text: '나에게 꼭 맞는 즐거움 전파법',
        nextNodeKey: 'end',
        bookTags: ['맞춤', '전파', '탐색', '개인'],
      ),
      Option(
        text: '세상을 기쁘게 하는 다양한 아이디어',
        nextNodeKey: 'end',
        bookTags: ['공유', '아이디어', '다양', '방법'],
      ),
    ],
  ),
};
