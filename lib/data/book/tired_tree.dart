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
    question: '아침 햇살마저 무겁게 느껴질 때, 마음은 어떤 말을 하나요?',
    options: [
      Option(text: '"잠을 자도 잔 것 같지 않아"', nextNodeKey: 'book_tired_4_3'),
      Option(text: '"오늘 하루를 또 어떻게 버티지"', nextNodeKey: 'book_tired_4_5'),
      Option(text: '"몸이 천근만근이야"', nextNodeKey: 'book_tired_4_1'),
      Option(text: '"아무것도 시작하고 싶지 않아"', nextNodeKey: 'book_tired_4_2'),
      Option(text: '"그대로 다시 잠들고 싶어"', nextNodeKey: 'book_tired_4_4'),
    ],
  ),
  'book_tired_3_2': QuestionNode(
    question: '일과를 앞두고 에너지가 바닥났을 때 어떤 생각이 드나요?',
    options: [
      Option(text: '"뭐부터 손대야 할지 막막해"', nextNodeKey: 'book_tired_4_4'),
      Option(text: '"머릿속이 안개가 낀 듯 뿌예"', nextNodeKey: 'book_tired_4_1'),
      Option(text: '"나만 이렇게 느린 것 같아"', nextNodeKey: 'book_tired_4_5'),
      Option(text: '"잠시만이라도 모든 걸 멈추고 싶어"', nextNodeKey: 'book_tired_4_2'),
      Option(text: '"내 의지와 상관없이 몸이 안 움직여"', nextNodeKey: 'book_tired_4_3'),
    ],
  ),
  'book_tired_3_3': QuestionNode(
    question: '사람들과의 만남이 숙제처럼 느껴질 때 마음의 소리는?',
    options: [
      Option(text: '"말을 섞는 것조차 에너지가 들어"', nextNodeKey: 'book_tired_4_2'),
      Option(text: '"가면을 쓰는 게 너무 지쳐"', nextNodeKey: 'book_tired_4_4'),
      Option(text: '"그냥 혼자 동굴 속에 있고 싶어"', nextNodeKey: 'book_tired_4_1'),
      Option(text: '"웃고 있지만 속은 텅 빈 기분이야"', nextNodeKey: 'book_tired_4_3'),
      Option(text: '"아무도 나를 찾지 않았으면 좋겠어"', nextNodeKey: 'book_tired_4_5'),
    ],
  ),
  'book_tired_3_4': QuestionNode(
    question: '어둠이 내리고 긴장이 풀릴 때 어떤 피로가 찾아오나요?',
    options: [
      Option(text: '"오늘도 간신히 버텨냈구나"', nextNodeKey: 'book_tired_4_5'),
      Option(text: '"쉬고 싶은데 쉬는 법을 잊은 것 같아"', nextNodeKey: 'book_tired_4_2'),
      Option(text: '"공허함과 피로가 동시에 밀려와"', nextNodeKey: 'book_tired_4_3'),
      Option(text: '"내일이 오는 게 벌써 두려워"', nextNodeKey: 'book_tired_4_1'),
      Option(text: '"아무 생각 없이 멍하니 있고 싶어"', nextNodeKey: 'book_tired_4_4'),
    ],
  ),
  'book_tired_3_5': QuestionNode(
    question: '일상 전체를 덮고 있는 만성적인 피로는 어떤가요?',
    options: [
      Option(text: '"피로가 내 피부처럼 느껴져"', nextNodeKey: 'book_tired_4_1'),
      Option(text: '"회복이라는 단어가 낯설어"', nextNodeKey: 'book_tired_4_3'),
      Option(text: '"언제 마지막으로 개운했는지 기억 안 나"', nextNodeKey: 'book_tired_4_5'),
      Option(text: '"삶의 채도가 낮아진 기분이야"', nextNodeKey: 'book_tired_4_2'),
      Option(text: '"한계점까지 온 것 같아"', nextNodeKey: 'book_tired_4_4'),
    ],
  ),

  // ==================== depth 4: 물리적 질감 ====================
  'book_tired_4_1': QuestionNode(
    question: '그 피로함은 당신의 몸에 어떤 자국을 남기나요?',
    options: [
      Option(text: '어깨 위에 얹힌 묵직한 돌덩이', nextNodeKey: 'book_tired_5_3'),
      Option(text: '온몸을 휘감은 끈적한 안개', nextNodeKey: 'book_tired_5_5'),
      Option(text: '관절마다 박힌 뻑뻑한 모래알', nextNodeKey: 'book_tired_5_1'),
      Option(text: '눈꺼풀을 짓누르는 차가운 납덩이', nextNodeKey: 'book_tired_5_4'),
      Option(text: '금방이라도 무너질 듯 낡은 기둥', nextNodeKey: 'book_tired_5_2'),
    ],
  ),
  'book_tired_4_2': QuestionNode(
    question: '지금 당신이 느끼는 피로의 온도는 어떤가요?',
    options: [
      Option(text: '미열이 있는 듯 나른하고 뜨거운', nextNodeKey: 'book_tired_5_4'),
      Option(text: '생기 없이 미지근하고 축축한', nextNodeKey: 'book_tired_5_1'),
      Option(text: '식어버린 찻물처럼 차갑고 밋밋한', nextNodeKey: 'book_tired_5_5'),
      Option(text: '바람 한 점 없는 한여름의 정체된 공기', nextNodeKey: 'book_tired_5_2'),
      Option(text: '온도조차 느껴지지 않는 마비된 상태', nextNodeKey: 'book_tired_5_3'),
    ],
  ),
  'book_tired_4_3': QuestionNode(
    question: '피로가 당신의 정신을 어떤 상태로 만드나요?',
    options: [
      Option(text: '전선이 꼬인 듯 복잡하고 과열된 상태', nextNodeKey: 'book_tired_5_5'),
      Option(text: '기름이 다 떨어진 엔진처럼 멈춘 상태', nextNodeKey: 'book_tired_5_2'),
      Option(text: '작은 자극에도 쉽게 부서지는 유리 상태', nextNodeKey: 'book_tired_5_3'),
      Option(text: '깊은 물 속에 잠긴 듯 멍한 상태', nextNodeKey: 'book_tired_5_1'),
      Option(text: '색채가 다 빠져나간 무채색의 상태', nextNodeKey: 'book_tired_5_4'),
    ],
  ),
  'book_tired_4_4': QuestionNode(
    question: '이 피로를 하나의 풍경으로 표현한다면?',
    options: [
      Option(text: '그늘 하나 없는 끝없는 아스팔트 길', nextNodeKey: 'book_tired_5_2'),
      Option(text: '비구름이 잔뜩 낀 어두운 창가', nextNodeKey: 'book_tired_5_4'),
      Option(text: '먼지가 자욱하게 쌓인 오래된 도서관', nextNodeKey: 'book_tired_5_1'),
      Option(text: '파도가 멈춘 회색빛 바닷가', nextNodeKey: 'book_tired_5_3'),
      Option(text: '퇴근길 지하철의 창에 비친 내 얼굴', nextNodeKey: 'book_tired_5_5'),
    ],
  ),
  'book_tired_4_5': QuestionNode(
    question: '피로함이 당신에게 속삭이는 말은 무엇인가요?',
    options: [
      Option(text: '"이제 그만하고 쉬어도 돼"', nextNodeKey: 'book_tired_5_1'),
      Option(text: '"아무것도 생각하지 마"', nextNodeKey: 'book_tired_5_3'),
      Option(text: '"어디론가 도망치고 싶지 않니"', nextNodeKey: 'book_tired_5_5'),
      Option(text: '"내일은 좀 다를 수 있을까"', nextNodeKey: 'book_tired_5_2'),
      Option(text: '"전부 내려놓고 싶은 기분이지"', nextNodeKey: 'book_tired_5_4'),
    ],
  ),

  // ==================== depth 5: 욕구·부담 정도 ====================
  'book_tired_5_1': QuestionNode(
    question: '이 고단함의 끝에서 무엇을 마주하고 싶나요?',
    options: [
      Option(text: '포근한 이야기 속으로 숨어들기', nextNodeKey: 'book_tired_6_2'),
      Option(text: '조건 없는 쉼과 정적 느끼기', nextNodeKey: 'book_tired_6_3'),
      Option(text: '피로를 한 방에 잊게 할 유쾌한 자극', nextNodeKey: 'book_tired_6_4'),
      Option(text: '나의 피로를 객관적으로 분석하기', nextNodeKey: 'book_tired_6_1'),
      Option(text: '무엇이 필요한지조차 잊고 싶기', nextNodeKey: 'book_tired_6_5'),
    ],
  ),
  'book_tired_5_2': QuestionNode(
    question: '지금 당신의 에너지가 허락하는 문장의 길이는?',
    options: [
      Option(text: '배꼽 잡고 웃게 할 짤막한 에피소드', nextNodeKey: 'book_tired_6_4'),
      Option(text: '설명이 필요 없는 평온한 이미지', nextNodeKey: 'book_tired_6_5'),
      Option(text: '마음의 짐을 덜어주는 가벼운 쉼표', nextNodeKey: 'book_tired_6_3'),
      Option(text: '피로의 근원을 파헤치는 지적인 글', nextNodeKey: 'book_tired_6_1'),
      Option(text: '천천히 곱씹는 다정한 산문', nextNodeKey: 'book_tired_6_2'),
    ],
  ),
  'book_tired_5_3': QuestionNode(
    question: '어떤 책이 당신의 무거워진 몸과 마음을 달래줄까요?',
    options: [
      Option(text: '따뜻한 온기가 전해지는 힐링 소설', nextNodeKey: 'book_tired_6_2'),
      Option(text: '말 없이 나를 지켜봐 줄 사진과 그림', nextNodeKey: 'book_tired_6_5'),
      Option(text: '휴식의 기술을 과학적으로 풀어낸 책', nextNodeKey: 'book_tired_6_1'),
      Option(text: '비움의 미학을 알려주는 고요한 사유', nextNodeKey: 'book_tired_6_3'),
      Option(text: '기분 전환을 위한 흥미진진한 자극', nextNodeKey: 'book_tired_6_4'),
    ],
  ),
  'book_tired_5_4': QuestionNode(
    question: '지금 이 피로를 어떤 방식으로 환기하고 싶으신가요?',
    options: [
      Option(text: '아무것도 하지 않는 감각적인 몰입', nextNodeKey: 'book_tired_6_5'),
      Option(text: '작은 성취를 맛보는 실천적 기록', nextNodeKey: 'book_tired_6_3'),
      Option(text: '지적 자극을 통한 에너지 리프레시', nextNodeKey: 'book_tired_6_1'),
      Option(text: '유쾌한 웃음으로 스트레스 날리기', nextNodeKey: 'book_tired_6_4'),
      Option(text: '나와 닮은 피로를 지닌 이들과의 공감', nextNodeKey: 'book_tired_6_2'),
    ],
  ),
  'book_tired_5_5': QuestionNode(
    question: '당신의 영혼이 지금 가장 갈구하는 안식처는?',
    options: [
      Option(text: '한순간도 눈 뗄 수 없는 즐거운 유희', nextNodeKey: 'book_tired_6_4'),
      Option(text: '소란스러운 세상에서 벗어난 침묵', nextNodeKey: 'book_tired_6_3'),
      Option(text: '언어 너머의 평화가 있는 갤러리', nextNodeKey: 'book_tired_6_5'),
      Option(text: '명쾌한 해답을 주는 지식의 도서관', nextNodeKey: 'book_tired_6_1'),
      Option(text: '서로의 고단함을 다독이는 따뜻한 집', nextNodeKey: 'book_tired_6_2'),
    ],
  ),

  // ==================== depth 6: 요약·공감 확인 (중복 제거 완료) ====================
  'book_tired_6_1': QuestionNode(
    question: '단순한 휴식을 넘어 피로의 원인과 회복의 원리를 이해하고 싶은 상태군요.',
    options: [
      Option(text: '잠과 휴식의 과학을 볼래요', nextNodeKey: 'book_tired_7_1'),
      Option(text: '피로사회에 대한 인문학적 고찰이요', nextNodeKey: 'book_tired_7_6'),
      Option(text: '에너지를 관리하는 실용 가이드요', nextNodeKey: 'book_tired_7_7'),
      Option(text: '새로운 활력을 줄 취미를 찾을래요', nextNodeKey: 'book_tired_7_9'),
      Option(text: '세련된 라이프 매거진을 읽을래요', nextNodeKey: 'book_tired_7_10'),
    ],
  ),
  'book_tired_6_2': QuestionNode(
    question: '지친 마음을 따뜻하게 다독여줄 공감의 언어와 위로가 필요한 상태군요.',
    options: [
      Option(text: '포근한 온기의 힐링 소설을 볼래요', nextNodeKey: 'book_tired_7_2'),
      Option(text: '마음을 쉬게 하는 부드러운 수필이요', nextNodeKey: 'book_tired_7_4'),
      Option(text: '부담 없이 웃을 수 있는 만화를 볼래요', nextNodeKey: 'book_tired_7_8'),
      Option(text: '마음을 울리는 따뜻한 그림책이요', nextNodeKey: 'book_tired_7_5'),
      Option(text: '느리게 읽히는 서정적인 문장을 원해요', nextNodeKey: 'book_tired_7_3'),
    ],
  ),
  'book_tired_6_3': QuestionNode(
    question: '복잡한 생각은 내려두고 억지로 애쓰지 않아도 되는 고요한 공간이 필요한 상태군요.',
    options: [
      Option(text: '비움과 수용을 알려주는 사유를 볼래요', nextNodeKey: 'book_tired_7_3'),
      Option(text: '자연과 우주를 담은 사진을 볼래요', nextNodeKey: 'book_tired_7_5'),
      Option(text: '고독과 쉼을 다룬 예술 비평이요', nextNodeKey: 'book_tired_7_6'),
      Option(text: '피로를 비워내는 기록을 시작할래요', nextNodeKey: 'book_tired_7_9'),
      Option(text: '회복을 돕는 심리학 수업을 들을래요', nextNodeKey: 'book_tired_7_1'),
    ],
  ),
  'book_tired_6_4': QuestionNode(
    question: '지친 일상에 기분 좋은 파동을 일으킬 유쾌한 재미와 환기가 필요한 상태군요.',
    options: [
      Option(text: '경쾌하고 유쾌한 코미디 소설을 볼래요', nextNodeKey: 'book_tired_7_8'),
      Option(text: '뇌를 깨우는 퀴즈와 퍼즐을 풀래요', nextNodeKey: 'book_tired_7_9'),
      Option(text: '나에게 꼭 맞는 안식처를 찾고 싶어요', nextNodeKey: 'book_tired_7_10'),
      Option(text: '온기를 나누는 힐링 드라마를 읽을래요', nextNodeKey: 'book_tired_7_2'),
      Option(text: '회복 탄력성을 키우는 지혜를 얻을래요', nextNodeKey: 'book_tired_7_7'),
    ],
  ),
  'book_tired_6_5': QuestionNode(
    question: '무엇이 필요한지조차 알기 힘들 만큼 소진되어 순수한 감각적 쉼이 필요한 상태군요.',
    options: [
      Option(text: '여백 가득한 미니멀 디자인 북을 볼래요', nextNodeKey: 'book_tired_7_5'),
      Option(text: '짧고 다정한 위로의 글귀를 읽을래요', nextNodeKey: 'book_tired_7_4'),
      Option(text: '한 문장씩 천천히 시를 음미할래요', nextNodeKey: 'book_tired_7_3'),
      Option(text: '명쾌한 라이프스타일 가이드를 볼래요', nextNodeKey: 'book_tired_7_8'),
      Option(text: '시각 예술집으로 눈을 쉬게 할래요', nextNodeKey: 'book_tired_7_10'),
    ],
  ),

  // ==================== depth 7: 최종 결과 (10개 고유 정의) ====================
  'book_tired_7_1': QuestionNode(
    question: '피로의 근원을 탐구하고 회복의 기술을 체계적으로 알고 싶은 당신에게 제안합니다.',
    options: [
      Option(
        text: '잠과 휴식의 과학적 원리',
        nextNodeKey: 'end',
        bookTags: ['과학', '휴식', '잠', '회복'],
      ),
      Option(
        text: '뇌과학으로 본 자기돌봄의 기술',
        nextNodeKey: 'end',
        bookTags: ['뇌과학', '심리', '돌봄', '안정'],
      ),
      Option(
        text: '현대인의 피로 진단 보고서',
        nextNodeKey: 'end',
        bookTags: ['현대', '리포트', '분석', '이해'],
      ),
      Option(
        text: '번아웃 탈출을 위한 심리 수업',
        nextNodeKey: 'end',
        bookTags: ['심리', '번아웃', '해결', '치유'],
      ),
      Option(
        text: '피로를 다스리는 의학적 조언',
        nextNodeKey: 'end',
        bookTags: ['의학', '건강', '조언', '전문'],
      ),
    ],
  ),
  'book_tired_7_2': QuestionNode(
    question: '지친 마음 한가운데서 당신의 손을 잡아줄 다정하고 포근한 이야기들을 제안합니다.',
    options: [
      Option(
        text: '온기를 나누는 힐링 드라마 소설',
        nextNodeKey: 'end',
        bookTags: ['소설', '힐링', '감동', '포근'],
      ),
      Option(
        text: '서로의 고단함을 응원하는 산문집',
        nextNodeKey: 'end',
        bookTags: ['응원', '산문', '따뜻한', '연결'],
      ),
      Option(
        text: '슬픔과 피로를 승화시킨 문학선',
        nextNodeKey: 'end',
        bookTags: ['문학', '감성', '치유', '예술'],
      ),
      Option(
        text: '다시 일어설 용기를 주는 실화 에세이',
        nextNodeKey: 'end',
        bookTags: ['실화', '용기', '희망', '에세이'],
      ),
      Option(
        text: '사람 냄새 나는 따뜻한 인터뷰집',
        nextNodeKey: 'end',
        bookTags: ['인터뷰', '사람', '온기', '위로'],
      ),
    ],
  ),
  'book_tired_7_3': QuestionNode(
    question: '비움과 느림의 가치를 통해 정신적인 평온을 얻고 싶은 당신을 위한 제안입니다.',
    options: [
      Option(
        text: '고요함을 예찬하는 명상 산문',
        nextNodeKey: 'end',
        bookTags: ['명상', '고요', '평온', '사색'],
      ),
      Option(
        text: '느리게 읽히는 서정적인 문장들',
        nextNodeKey: 'end',
        bookTags: ['서정', '느림', '여유', '감성'],
      ),
      Option(
        text: '일상의 소음을 지우는 침묵의 지혜',
        nextNodeKey: 'end',
        bookTags: ['철학', '침묵', '비움', '안정'],
      ),
      Option(
        text: '자연의 리듬을 담은 관조적인 글',
        nextNodeKey: 'end',
        bookTags: ['자연', '관조', '수용', '평화'],
      ),
      Option(
        text: '마음의 여백을 만들어주는 짧은 시집',
        nextNodeKey: 'end',
        bookTags: ['시', '여백', '짧음', '감성'],
      ),
    ],
  ),
  'book_tired_7_4': QuestionNode(
    question: '어떤 조건 없이 당신을 안아줄 따뜻하고 안전한 안식처 같은 책들입니다.',
    options: [
      Option(
        text: '부드러운 위로를 전하는 짧은 글귀',
        nextNodeKey: 'end',
        bookTags: ['가벼움', '위로', '부담', '안심'],
      ),
      Option(
        text: '마음의 긴장을 풀어주는 그림 에세이',
        nextNodeKey: 'end',
        bookTags: ['그림', '에세이', '편안', '온화'],
      ),
      Option(
        text: '아무것도 묻지 않는 휴식 같은 이야기',
        nextNodeKey: 'end',
        bookTags: ['휴식', '치유', '평온', '여유'],
      ),
      Option(
        text: '다정한 문장으로 가득한 편지글',
        nextNodeKey: 'end',
        bookTags: ['편지', '다정', '포근', '감성'],
      ),
      Option(
        text: '마음이 몽글해지는 시각적인 위로',
        nextNodeKey: 'end',
        bookTags: ['시각', '감각', '따스함', '힐링'],
      ),
    ],
  ),
  'book_tired_7_5': QuestionNode(
    question: '글자조차 버거운 당신을 위해 활자 너머의 감각으로 평온을 전하는 책들입니다.',
    options: [
      Option(
        text: '말 없이 깊은 울림을 주는 그림책',
        nextNodeKey: 'end',
        bookTags: ['그림책', '무언', '직관', '안심'],
      ),
      Option(
        text: '광활한 우주와 대자연의 풍경 사진집',
        nextNodeKey: 'end',
        bookTags: ['사진', '자연', '시각', '평화'],
      ),
      Option(
        text: '여백 가득한 미니멀 디자인 북',
        nextNodeKey: 'end',
        bookTags: ['물성', '디자인', '여백', '예쁜'],
      ),
      Option(
        text: '한 문장씩 아껴 읽는 짧은 명언집',
        nextNodeKey: 'end',
        bookTags: ['짧음', '명언', '부담', '안정'],
      ),
      Option(
        text: '존재만으로 안심이 되는 클래식 소장본',
        nextNodeKey: 'end',
        bookTags: ['존재', '편안', '부담', '소장'],
      ),
    ],
  ),
  'book_tired_7_6': QuestionNode(
    question: '피로함의 입체적인 면모를 탐구하며 새로운 시각을 조명하는 인문적 제안입니다.',
    options: [
      Option(
        text: '피로사회의 본질을 짚는 인문 비평',
        nextNodeKey: 'end',
        bookTags: ['사회', '비평', '피로', '인문'],
      ),
      Option(
        text: '예술가들이 고독과 쉼을 사유하는 법',
        nextNodeKey: 'end',
        bookTags: ['예술', '성찰', '사유', '감성'],
      ),
      Option(
        text: '인류의 역사와 함께한 휴식의 기록',
        nextNodeKey: 'end',
        bookTags: ['역사', '문화', '인문', '기록'],
      ),
      Option(
        text: '삶의 속도를 늦춘 이들의 진솔한 고백',
        nextNodeKey: 'end',
        bookTags: ['경험', '에세이', '공감', '성찰'],
      ),
      Option(
        text: '고독을 창의적 에너지로 바꾸는 지혜',
        nextNodeKey: 'end',
        bookTags: ['철학', '창의', '지혜', '독립'],
      ),
    ],
  ),
  'book_tired_7_7': QuestionNode(
    question: '피로를 이해하면서도 무겁지 않게 접근하고 싶은 당신을 위한 균형 잡힌 가이드입니다.',
    options: [
      Option(
        text: '심리 이론과 가벼운 위로의 조화',
        nextNodeKey: 'end',
        bookTags: ['통합', '심리', '가이드', '쉬움'],
      ),
      Option(
        text: '일상에서 실천하는 회복 탄력성 지혜',
        nextNodeKey: 'end',
        bookTags: ['실천', '회복', '지혜', '변화'],
      ),
      Option(
        text: '풍부한 사례로 읽는 마음 충전법',
        nextNodeKey: 'end',
        bookTags: ['사례', '심리', '이해', '다양'],
      ),
      Option(
        text: '에너지를 관리하는 실천 가이드',
        nextNodeKey: 'end',
        bookTags: ['실용', '관리', '에너지', '성장'],
      ),
      Option(
        text: '나를 돌보는 작은 습관의 인문학',
        nextNodeKey: 'end',
        bookTags: ['습관', '인문', '성찰', '실천'],
      ),
    ],
  ),
  'book_tired_7_8': QuestionNode(
    question: '지금 당장 환기가 필요한 당신에게 선사하는 기분 좋은 웃음과 이야기들입니다.',
    options: [
      Option(
        text: '배꼽 잡고 웃기는 코믹 웹툰/만화',
        nextNodeKey: 'end',
        bookTags: ['유머', '웃음', '웹툰', '재미'],
      ),
      Option(
        text: '속도감 넘치는 경쾌한 코미디 소설',
        nextNodeKey: 'end',
        bookTags: ['코미디', '소설', '경쾌', '환기'],
      ),
      Option(
        text: '엉뚱하고 기발한 상상이 가득한 단편선',
        nextNodeKey: 'end',
        bookTags: ['기발', '상상', '재미', '짧은글'],
      ),
      Option(
        text: '세상에서 가장 웃긴 에피소드 모음집',
        nextNodeKey: 'end',
        bookTags: ['유머', '에세이', '위트', '환기'],
      ),
      Option(
        text: '유익하고 명쾌한 라이프스타일 가이드',
        nextNodeKey: 'end',
        bookTags: ['트렌드', '라이프', '가벼움', '유용'],
      ),
    ],
  ),
  'book_tired_7_9': QuestionNode(
    question: '복잡한 생각보다 직접 무언가를 기록하거나 실천하며 에너지를 얻는 제안입니다.',
    options: [
      Option(
        text: '나의 피로를 비워내는 기록 워크북',
        nextNodeKey: 'end',
        bookTags: ['기록', '워크북', '정리', '비움'],
      ),
      Option(
        text: '뇌를 깨우는 흥미진진한 퀴즈와 퍼즐',
        nextNodeKey: 'end',
        bookTags: ['퀴즈', '퍼즐', '두뇌', '유희'],
      ),
      Option(
        text: '당장 따라 하고 싶은 이색 취미 가이드',
        nextNodeKey: 'end',
        bookTags: ['취미', '가이드', '활동', '재력'],
      ),
      Option(
        text: '일상의 루틴을 다듬는 미니멀 가이드',
        nextNodeKey: 'end',
        bookTags: ['정리', '루틴', '실용', '미니멀'],
      ),
      Option(
        text: '오감을 깨우는 명상과 이완법',
        nextNodeKey: 'end',
        bookTags: ['명상', '감각', '안정', '실천'],
      ),
    ],
  ),
  'book_tired_7_10': QuestionNode(
    question: '나만의 방식으로 피로를 조각하고 안식을 발견하고 싶은 당신을 위한 독창적 제안입니다.',
    options: [
      Option(
        text: '취향이 담긴 세련된 라이프 매거진',
        nextNodeKey: 'end',
        bookTags: ['잡지', '트렌드', '디자인', '세련'],
      ),
      Option(
        text: '창의적인 마음 접근법을 담은 아트 북',
        nextNodeKey: 'end',
        bookTags: ['예술', '창의', '표현', '감각'],
      ),
      Option(
        text: '나에게 꼭 맞는 안식처를 찾는 법',
        nextNodeKey: 'end',
        bookTags: ['맞춤', '탐색', '공간', '안정'],
      ),
      Option(
        text: '위로를 발견하는 예술적 가능성의 기록',
        nextNodeKey: 'end',
        bookTags: ['예술', '가능성', '발견', '기록'],
      ),
      Option(
        text: '아름다운 오브제가 가득한 시각 예술집',
        nextNodeKey: 'end',
        bookTags: ['오브제', '디자인', '시각', '감상'],
      ),
    ],
  ),
};
