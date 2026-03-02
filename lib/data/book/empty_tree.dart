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
    question: '목표를 달성한 뒤, 텅 빈 가슴 속에 어떤 목소리가 들리나요?',
    options: [
      Option(text: '"겨우 이게 다인가 싶은 허무함이 커"', nextNodeKey: 'book_empty_4_3'),
      Option(text: '"의미 없는 질주를 한 것 같아"', nextNodeKey: 'book_empty_4_5'),
      Option(text: '"기쁠 줄 알았는데 아무 느낌도 안 들어"', nextNodeKey: 'book_empty_4_1'),
      Option(text: '"다음엔 또 뭘 해야 할지 막막해"', nextNodeKey: 'book_empty_4_2'),
      Option(text: '"내 노력이 다 거품처럼 느껴져"', nextNodeKey: 'book_empty_4_4'),
    ],
  ),
  'book_empty_3_2': QuestionNode(
    question: '혼자가 된 시간, 당신을 잠식하는 생각은 무엇인가요?',
    options: [
      Option(text: '"세상에 나 혼자만 남겨진 기분이야"', nextNodeKey: 'book_empty_4_4'),
      Option(text: '"사람들 사이에서도 늘 이방인 같아"', nextNodeKey: 'book_empty_4_1'),
      Option(text: '"누군가로도 채워지지 않는 구멍이 있어"', nextNodeKey: 'book_empty_4_5'),
      Option(text: '"가면을 벗고 나니 껍데기만 남았네"', nextNodeKey: 'book_empty_4_2'),
      Option(text: '"진짜 나를 아는 사람이 아무도 없어"', nextNodeKey: 'book_empty_4_3'),
    ],
  ),
  'book_empty_3_3': QuestionNode(
    question: '새벽이나 아침, 눈을 뜨자마자 느껴지는 공허는 어떤가요?',
    options: [
      Option(text: '"오늘 하루를 시작할 이유가 없어"', nextNodeKey: 'book_empty_4_2'),
      Option(text: '"텅 빈 방에 나만 덩그러니 놓인 느낌"', nextNodeKey: 'book_empty_4_4'),
      Option(text: '"매일이 의미 없는 반복처럼 보여"', nextNodeKey: 'book_empty_4_1'),
      Option(text: '"어디로 가야 할지 방향을 잃었어"', nextNodeKey: 'book_empty_4_3'),
      Option(text: '"무기력함이 온몸을 휘감고 있어"', nextNodeKey: 'book_empty_4_5'),
    ],
  ),
  'book_empty_3_4': QuestionNode(
    question: '분주함이 멈춘 찰나, 어떤 허무가 밀려오나요?',
    options: [
      Option(text: '"바쁘게 살았는데 손에 쥔 게 없네"', nextNodeKey: 'book_empty_4_5'),
      Option(text: '"멈추니까 비로소 구멍 난 마음이 보여"', nextNodeKey: 'book_empty_4_2'),
      Option(text: '"무엇을 위해 이렇게 달렸던 걸까"', nextNodeKey: 'book_empty_4_3'),
      Option(text: '"나 자신을 돌볼 틈이 너무 없었어"', nextNodeKey: 'book_empty_4_1'),
      Option(text: '"다시 움직이지 않으면 불안할 것 같아"', nextNodeKey: 'book_empty_4_4'),
    ],
  ),
  'book_empty_3_5': QuestionNode(
    question: '이유를 알 수 없이 늘 따라다니는 공허함은 어떤가요?',
    options: [
      Option(text: '"마음 한구석이 늘 시리고 허전해"', nextNodeKey: 'book_empty_4_1'),
      Option(text: '"내가 진짜 살아있는지 의문이 들어"', nextNodeKey: 'book_empty_4_3'),
      Option(text: '"무감각해지는 내가 가끔은 무서워"', nextNodeKey: 'book_empty_4_5'),
      Option(text: '"무언가로 채워도 금방 빠져나가"', nextNodeKey: 'book_empty_4_2'),
      Option(text: '"그저 존재한다는 게 버겁게 느껴져"', nextNodeKey: 'book_empty_4_4'),
    ],
  ),

  // ==================== depth 4: 물리적 질감 ====================
  'book_empty_4_1': QuestionNode(
    question: '그 공허함은 당신의 내면에 어떤 흔적을 남기나요?',
    options: [
      Option(text: '바닥이 보이지 않는 깊은 심연', nextNodeKey: 'book_empty_5_1'),
      Option(text: '풀 한 포기 자라지 않는 메마른 사막', nextNodeKey: 'book_empty_5_2'),
      Option(text: '불이 다 꺼진 텅 빈 연극 무대', nextNodeKey: 'book_empty_5_3'),
      Option(text: '무온도의 서늘한 진공 상태', nextNodeKey: 'book_empty_5_4'),
      Option(text: '스치면 깨질 것 같은 투명한 유리병', nextNodeKey: 'book_empty_5_5'),
    ],
  ),
  'book_empty_4_2': QuestionNode(
    question: '비어있는 마음은 지금 어떤 무게로 느껴지나요?',
    options: [
      Option(text: '깃털처럼 허공을 떠다니는 가벼움', nextNodeKey: 'book_empty_5_4'),
      Option(text: '가슴을 짓누르는 차가운 덩어리', nextNodeKey: 'book_empty_5_1'),
      Option(text: '있는데 없는 듯 모호한 실루엣', nextNodeKey: 'book_empty_5_5'),
      Option(text: '나를 자꾸만 끌어당기는 늪의 무게', nextNodeKey: 'book_empty_5_2'),
      Option(text: '무게조차 느껴지지 않는 마비된 상태', nextNodeKey: 'book_empty_5_3'),
    ],
  ),
  'book_empty_4_3': QuestionNode(
    question: '그 공허함의 온도는 당신에게 어떻게 닿나요?',
    options: [
      Option(text: '뼛속까지 시린 얼어붙은 냉기', nextNodeKey: 'book_empty_5_1'),
      Option(text: '생기 없이 미지근하고 눅눅한 기운', nextNodeKey: 'book_empty_5_2'),
      Option(text: '안개처럼 흐릿하고 미묘한 온도', nextNodeKey: 'book_empty_5_3'),
      Option(text: '감각이 사라진 건조하고 팽팽한 상태', nextNodeKey: 'book_empty_5_4'),
      Option(text: '온도조차 느껴지지 않는 무의 세계', nextNodeKey: 'book_empty_5_5'),
    ],
  ),
  'book_empty_4_4': QuestionNode(
    question: '공허함이 당신을 대하는 태도는 어떤가요?',
    options: [
      Option(text: '조용히 나를 에워싸고 지켜봐요', nextNodeKey: 'book_empty_5_4'),
      Option(text: '날카롭게 파고들어 나를 갉아먹어요', nextNodeKey: 'book_empty_5_1'),
      Option(text: '서서히 스며들어 나의 일부가 됐어요', nextNodeKey: 'book_empty_5_2'),
      Option(text: '멀리서 나를 조소하듯 응시해요', nextNodeKey: 'book_empty_5_3'),
      Option(text: '나 자체를 삼켜버린 기분이에요', nextNodeKey: 'book_empty_5_5'),
    ],
  ),
  'book_empty_4_5': QuestionNode(
    question: '지금 당신을 가장 힘들게 하는 비어있음의 결은 무엇인가요?',
    options: [
      Option(text: '무엇으로도 채워지지 않는 결핍', nextNodeKey: 'book_empty_5_2'),
      Option(text: '삶의 목적을 잃어버린 방향 상실', nextNodeKey: 'book_empty_5_1'),
      Option(text: '세상과의 연결이 끊긴 고립감', nextNodeKey: 'book_empty_5_5'),
      Option(text: '내가 누구인지 모르는 정체성 혼란', nextNodeKey: 'book_empty_5_3'),
      Option(text: '모든 자극에 반응하지 않는 무감각', nextNodeKey: 'book_empty_5_4'),
    ],
  ),

  // ==================== depth 5: 욕구 및 에너지 측정 ====================
  'book_empty_5_1': QuestionNode(
    question: '지금 당신의 마음속 빈 공간을 어떻게 대하고 싶나요?',
    options: [
      Option(text: '공허의 근원적인 의미를 파고들기', nextNodeKey: 'book_empty_6_1'),
      Option(text: '새로운 가치와 온기로 마음 채우기', nextNodeKey: 'book_empty_6_2'),
      Option(text: '비어있음을 있는 그대로 수용하기', nextNodeKey: 'book_empty_6_3'),
      Option(text: '복잡한 생각 없이 조용히 머물기', nextNodeKey: 'book_empty_6_4'),
      Option(text: '감각을 일깨울 무언가를 곁에 두기', nextNodeKey: 'book_empty_6_5'),
    ],
  ),
  'book_empty_5_2': QuestionNode(
    question: '지금 이 공허함을 달래기 위해 무엇이 가장 필요한가요?',
    options: [
      Option(text: '존재의 이유를 묻는 단단한 지혜', nextNodeKey: 'book_empty_6_1'),
      Option(text: '살아있음을 느끼게 할 다정한 연결', nextNodeKey: 'book_empty_6_2'),
      Option(text: '욕심을 내려놓는 비움의 철학', nextNodeKey: 'book_empty_6_3'),
      Option(text: '부담 없이 마음을 쉬게 할 안식처', nextNodeKey: 'book_empty_6_4'),
      Option(text: '글자조차 읽지 않아도 되는 감각적 쉼', nextNodeKey: 'book_empty_6_5'),
    ],
  ),
  'book_empty_5_3': QuestionNode(
    question: '지금 당신의 내면이 견딜 수 있는 문장의 깊이는 어느 정도인가요?',
    options: [
      Option(text: '본질을 꿰뚫는 묵직한 사유의 문장', nextNodeKey: 'book_empty_6_1'),
      Option(text: '내 마음을 대변해줄 절실한 이야기', nextNodeKey: 'book_empty_6_2'),
      Option(text: '모든 것을 내려놓게 하는 고요한 글', nextNodeKey: 'book_empty_6_3'),
      Option(text: '가볍게 읽히는 일상의 조각들', nextNodeKey: 'book_empty_6_4'),
      Option(text: '설명이 필요 없는 이미지와 예술', nextNodeKey: 'book_empty_6_5'),
    ],
  ),
  'book_empty_5_4': QuestionNode(
    question: '어떤 책이 당신의 텅 빈 마음에 숨구멍이 되어줄까요?',
    options: [
      Option(text: '나의 공허를 객관적으로 조명할 인문학', nextNodeKey: 'book_empty_6_1'),
      Option(text: '다시 꿈꾸게 할 강력한 서사의 소설', nextNodeKey: 'book_empty_6_2'),
      Option(text: '단순한 삶의 기쁨을 알려줄 가이드', nextNodeKey: 'book_empty_6_3'),
      Option(text: '지친 마음을 보듬는 다정한 에세이', nextNodeKey: 'book_empty_6_4'),
      Option(text: '시각적 영감을 주는 아름다운 화집', nextNodeKey: 'book_empty_6_5'),
    ],
  ),
  'book_empty_5_5': QuestionNode(
    question: '지금 이 순간, 당신의 영혼이 가장 끌리는 채움은 무엇인가요?',
    options: [
      Option(text: '진실을 마주하는 이성의 세계', nextNodeKey: 'book_empty_6_1'),
      Option(text: '심장을 다시 뛰게 할 감동의 세계', nextNodeKey: 'book_empty_6_2'),
      Option(text: '아무것도 없는 고요한 무의 세계', nextNodeKey: 'book_empty_6_3'),
      Option(text: '현실의 무거움을 잊는 환상의 세계', nextNodeKey: 'book_empty_6_4'),
      Option(text: '오감을 자극하는 순수 예술의 세계', nextNodeKey: 'book_empty_6_5'),
    ],
  ),

  // ==================== depth 6: 요약 및 장르별 분기 ====================
  'book_empty_6_1': QuestionNode(
    question: '공허의 뿌리를 깊이 파고들어 존재의 이유를 묻고 싶은 상태군요.',
    options: [
      Option(text: '묵직한 실존 철학을 볼래요', nextNodeKey: 'book_empty_7_1'),
      Option(text: '공허의 인문 분석을 볼래요', nextNodeKey: 'book_empty_7_6'),
      Option(text: '쉬운 철학 가이드를 읽을래요', nextNodeKey: 'book_empty_7_7'),
      Option(text: '몰입감 넘치는 소설을 볼래요', nextNodeKey: 'book_empty_7_8'),
      Option(text: '기록하며 나를 탐구할래요', nextNodeKey: 'book_empty_7_9'),
    ],
  ),
  'book_empty_6_2': QuestionNode(
    question: '텅 빈 가슴을 새로운 온기와 살아있음으로 채우고 싶은 상태군요.',
    options: [
      Option(text: '희망을 주는 소설을 읽을래요', nextNodeKey: 'book_empty_7_2'),
      Option(text: '다정한 연결의 에세이를 볼래요', nextNodeKey: 'book_empty_7_4'),
      Option(text: '마음을 분석하는 책을 볼래요', nextNodeKey: 'book_empty_7_7'),
      Option(text: '새로운 취미를 시작해볼래요', nextNodeKey: 'book_empty_7_9'),
      Option(text: '감각적인 사진집을 넘길래요', nextNodeKey: 'book_empty_7_5'),
    ],
  ),
  'book_empty_6_3': QuestionNode(
    question: '공허함을 억지로 채우지 않고 있는 그대로 수용하고 싶은 상태군요.',
    options: [
      Option(text: '비움의 동양 사상을 볼래요', nextNodeKey: 'book_empty_7_3'),
      Option(text: '고독을 승화한 예술을 볼래요', nextNodeKey: 'book_empty_7_6'),
      Option(text: '내면을 차분히 기록할래요', nextNodeKey: 'book_empty_7_9'),
      Option(text: '여백이 가득한 책을 볼래요', nextNodeKey: 'book_empty_7_10'),
      Option(text: '단순한 삶의 기술을 배울래요', nextNodeKey: 'book_empty_7_7'),
    ],
  ),
  'book_empty_6_4': QuestionNode(
    question: '공허의 그늘에서 벗어나 안전하고 포근한 쉼표가 필요한 상태군요.',
    options: [
      Option(text: '부드러운 위로를 받을래요', nextNodeKey: 'book_empty_7_4'),
      Option(text: '편안한 시각 이미지를 볼래요', nextNodeKey: 'book_empty_7_5'),
      Option(text: '힐링이 되는 소설을 읽을래요', nextNodeKey: 'book_empty_7_2'),
      Option(text: '판타지 세계로 떠나볼래요', nextNodeKey: 'book_empty_7_8'),
      Option(text: '아름다운 예술 책을 볼래요', nextNodeKey: 'book_empty_7_10'),
    ],
  ),
  'book_empty_6_5': QuestionNode(
    question: '공허가 너무 깊어 무엇도 하기 힘들고 버거운 상태군요.',
    options: [
      Option(text: '말 없는 그림책에 기댈래요', nextNodeKey: 'book_empty_7_5'),
      Option(text: '짧은 문장을 천천히 음미할래요', nextNodeKey: 'book_empty_7_7'),
      Option(text: '존재만으로 안심되는 책이요', nextNodeKey: 'book_empty_7_10'),
      Option(text: '다정한 응원 글을 읽을래요', nextNodeKey: 'book_empty_7_4'),
      Option(text: '이미지로 마음을 만질래요', nextNodeKey: 'book_empty_7_10'),
    ],
  ),

  // ==================== depth 7: 최종 결과 ====================
  'book_empty_7_1': QuestionNode(
    question: '텅 빈 마음의 뿌리를 파고들어 존재의 이유를 묻는 철학적 사유들을 제안합니다.',
    options: [
      Option(
        text: '실존주의 철학의 정수',
        nextNodeKey: 'end',
        bookTags: ['철학', '실존', '존재', '성찰'],
      ),
      Option(
        text: '니힐리즘을 극복한 고전',
        nextNodeKey: 'end',
        bookTags: ['고전', '허무', '용기', '인문'],
      ),
      Option(
        text: '삶의 허무를 다룬 현대문학',
        nextNodeKey: 'end',
        bookTags: ['문학', '허무', '심층', '탐구'],
      ),
      Option(
        text: '죽음과 삶을 통찰한 에세이',
        nextNodeKey: 'end',
        bookTags: ['에세이', '삶', '성찰', '깊이'],
      ),
      Option(
        text: '의미를 찾는 로고테라피',
        nextNodeKey: 'end',
        bookTags: ['심리', '의미', '치료', '지혜'],
      ),
    ],
  ),
  'book_empty_7_2': QuestionNode(
    question: '공허를 채울 새로운 온기와 살아있음을 느끼게 할 이야기들을 제안합니다.',
    options: [
      Option(
        text: '삶의 가치를 깨우는 소설',
        nextNodeKey: 'end',
        bookTags: ['소설', '가치', '희망', '감동'],
      ),
      Option(
        text: '관계와 다정한 연결의 기록',
        nextNodeKey: 'end',
        bookTags: ['관계', '연결', '다정한', '에세이'],
      ),
      Option(
        text: '자아를 찾아가는 내면 여행',
        nextNodeKey: 'end',
        bookTags: ['자아', '성장', '여행', '탐색'],
      ),
      Option(
        text: '존재의 충만함을 노래한 시',
        nextNodeKey: 'end',
        bookTags: ['시', '충만', '아름다운', '서정'],
      ),
      Option(
        text: '작은 행복을 발견하는 산문',
        nextNodeKey: 'end',
        bookTags: ['산문', '일상', '행복', '소박'],
      ),
    ],
  ),
  'book_empty_7_3': QuestionNode(
    question: '비어있음을 있는 그대로 인정하고 평온으로 바꾸는 지혜들을 제안합니다.',
    options: [
      Option(
        text: '비움을 예찬하는 명상서',
        nextNodeKey: 'end',
        bookTags: ['명상', '비움', '고요', '평온'],
      ),
      Option(
        text: '무위자연의 도교 사상',
        nextNodeKey: 'end',
        bookTags: ['철학', '무위', '동양', '수용'],
      ),
      Option(
        text: '단순한 삶, 미니멀리즘',
        nextNodeKey: 'end',
        bookTags: ['미니멀', '단순', '라이프', '실용'],
      ),
      Option(
        text: '선불교의 텅 빈 지혜',
        nextNodeKey: 'end',
        bookTags: ['불교', '지혜', '무', '안정'],
      ),
      Option(
        text: '현재에 집중하는 마음챙김',
        nextNodeKey: 'end',
        bookTags: ['현재', '집중', '평화', '가이드'],
      ),
    ],
  ),
  'book_empty_7_4': QuestionNode(
    question: '무언가를 채우지 않아도 충분히 따뜻하고 안전한 안식처를 제안합니다.',
    options: [
      Option(
        text: '부드러운 위로의 짧은 글',
        nextNodeKey: 'end',
        bookTags: ['위로', '짧은글', '다정한', '편안'],
      ),
      Option(
        text: '마음을 쉬게 하는 힐링 에세이',
        nextNodeKey: 'end',
        bookTags: ['휴식', '에세이', '포근', '치유'],
      ),
      Option(
        text: '조용한 풍경이 흐르는 문장',
        nextNodeKey: 'end',
        bookTags: ['풍경', '조용', '잔잔한', '감성'],
      ),
      Option(
        text: '부담 없는 소소한 이야기들',
        nextNodeKey: 'end',
        bookTags: ['이야기', '소박', '가벼운', '일상'],
      ),
      Option(
        text: '마음이 몽글해지는 그림 에세이',
        nextNodeKey: 'end',
        bookTags: ['그림', '시각', '포근', '감각'],
      ),
    ],
  ),
  'book_empty_7_5': QuestionNode(
    question: '활자조차 버거운 당신을 위해 곁에 머물며 온기를 줄 책들을 골랐습니다.',
    options: [
      Option(
        text: '말 없이 마음을 울리는 그림책',
        nextNodeKey: 'end',
        bookTags: ['그림책', '무언', '직관', '안심'],
      ),
      Option(
        text: '광활한 우주와 자연 사진집',
        nextNodeKey: 'end',
        bookTags: ['사진', '자연', '시각', '여행'],
      ),
      Option(
        text: '여백이 가득한 디자인 북',
        nextNodeKey: 'end',
        bookTags: ['물성', '디자인', '여백', '예쁜'],
      ),
      Option(
        text: '한 문장씩 천천히 읽는 명언',
        nextNodeKey: 'end',
        bookTags: ['짧은글', '명언', '부담', '가벼운'],
      ),
      Option(
        text: '존재 자체로 위로가 되는 책',
        nextNodeKey: 'end',
        bookTags: ['존재', '기다림', '여유', '포근'],
      ),
    ],
  ),
  'book_empty_7_6': QuestionNode(
    question: '공허의 본질을 다각도로 성찰하며 입체적인 시각을 제공하는 책들입니다.',
    options: [
      Option(
        text: '공허의 역사를 다룬 인문서',
        nextNodeKey: 'end',
        bookTags: ['역사', '문화', '인문', '분석'],
      ),
      Option(
        text: '고독을 예술로 승화한 작품들',
        nextNodeKey: 'end',
        bookTags: ['예술', '표현', '감성', '창작'],
      ),
      Option(
        text: '공허를 응시하는 현대 소설',
        nextNodeKey: 'end',
        bookTags: ['소설', '문학', '깊은', '인간'],
      ),
      Option(
        text: '사회적 공허를 비평한 사회학',
        nextNodeKey: 'end',
        bookTags: ['사회', '비판', '맥락', '이해'],
      ),
      Option(
        text: '진솔한 상실의 기록, 에세이',
        nextNodeKey: 'end',
        bookTags: ['경험', '공감', '기록', '진솔'],
      ),
    ],
  ),
  'book_empty_7_7': QuestionNode(
    question: '깊이 있는 이해와 가벼운 위로 사이의 균형을 맞춘 제안들입니다.',
    options: [
      Option(
        text: '이해를 돕는 쉬운 철학 가이드',
        nextNodeKey: 'end',
        bookTags: ['철학', '입문', '쉬운', '이해'],
      ),
      Option(
        text: '가벼운 사례가 담긴 심리 분석',
        nextNodeKey: 'end',
        bookTags: ['심리', '분석', '사례', '가벼운'],
      ),
      Option(
        text: '깊이와 재미를 아우른 교양서',
        nextNodeKey: 'end',
        bookTags: ['교양', '지식', '재미', '흥미'],
      ),
      Option(
        text: '일상에서 실천하는 실존 지혜',
        nextNodeKey: 'end',
        bookTags: ['지혜', '실천', '일상', '방법'],
      ),
      Option(
        text: '통찰력 있는 짧은 단상 모음',
        nextNodeKey: 'end',
        bookTags: ['단상', '짧은글', '통찰', '명쾌'],
      ),
    ],
  ),
  'book_empty_7_8': QuestionNode(
    question: '텅 빈 생각에서 벗어나 당신을 다른 세계로 데려갈 강력한 이야기들입니다.',
    options: [
      Option(
        text: '압도적 스케일의 SF 소설',
        nextNodeKey: 'end',
        bookTags: ['SF', '우주', '몰입', '탈출'],
      ),
      Option(
        text: '치밀한 구성의 미스터리 소설',
        nextNodeKey: 'end',
        bookTags: ['추리', '반전', '미스터리', '재미'],
      ),
      Option(
        text: '환상적인 판타지 세계관',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '상상', '신비'],
      ),
      Option(
        text: '가슴 벅찬 감동의 대서사',
        nextNodeKey: 'end',
        bookTags: ['문학', '감동', '서사', '웅장'],
      ),
      Option(
        text: '유쾌한 웃음을 주는 코미디',
        nextNodeKey: 'end',
        bookTags: ['유머', '유쾌', '경쾌', '웃음'],
      ),
    ],
  ),
  'book_empty_7_9': QuestionNode(
    question: '읽는 것을 넘어 직접 무언가를 기록하며 빈 공간을 채워보는 제안입니다.',
    options: [
      Option(
        text: '내면을 기록하는 질문 일기',
        nextNodeKey: 'end',
        bookTags: ['질문', '기록', '나', '발견'],
      ),
      Option(
        text: '무념무상 따라 그리는 드로잉',
        nextNodeKey: 'end',
        bookTags: ['그림', '드로잉', '단순', '몰입'],
      ),
      Option(
        text: '좋은 문장을 새기는 필사 노트',
        nextNodeKey: 'end',
        bookTags: ['필사', '기억', '안정', '실용'],
      ),
      Option(
        text: '삶을 정리하는 워크북',
        nextNodeKey: 'end',
        bookTags: ['정리', '워크북', '성찰', '계획'],
      ),
      Option(
        text: '손으로 만드는 취미 가이드',
        nextNodeKey: 'end',
        bookTags: ['취미', '가이드', '만들기', '재미'],
      ),
    ],
  ),
  'book_empty_7_10': QuestionNode(
    question: '의미를 채우려 애쓰지 않아도 당신의 감각을 깨워줄 아름다운 책들입니다.',
    options: [
      Option(
        text: '강렬한 색채의 현대 미술 화집',
        nextNodeKey: 'end',
        bookTags: ['미술', '예술', '감각', '색채'],
      ),
      Option(
        text: '영감을 주는 트렌디한 잡지',
        nextNodeKey: 'end',
        bookTags: ['잡지', '감각', '디자인', '트렌드'],
      ),
      Option(
        text: '고요한 새벽의 풍경 사진집',
        nextNodeKey: 'end',
        bookTags: ['사진', '고요', '새벽', '풍경'],
      ),
      Option(
        text: '몽환적인 분위기의 일러스트',
        nextNodeKey: 'end',
        bookTags: ['일러스트', '신비', '포근', '시각'],
      ),
      Option(
        text: '여백 가득한 감성 시집/디자인 북',
        nextNodeKey: 'end',
        bookTags: ['시', '디자인', '아름다운', '소장'],
      ),
    ],
  ),
};
