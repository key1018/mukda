import '../../question_tree.dart';

final Map<String, QuestionNode> bookExcitedTree = {
  // ==================== depth 2: 상황/맥락 (기존 유지) ====================
  'book_excited_2_1': QuestionNode(
    question: '이 설렘이 가장 크게 느껴지는 순간은 언제인가요?',
    options: [
      Option(text: '새로운 시작을 앞두고 있을 때', nextNodeKey: 'book_excited_3_1'),
      Option(text: '기대되는 일을 생각할 때', nextNodeKey: 'book_excited_3_2'),
      Option(text: '가능성이 열릴 때', nextNodeKey: 'book_excited_3_3'),
      Option(text: '마음이 두근거릴 때', nextNodeKey: 'book_excited_3_4'),
      Option(text: '특별한 이유 없이 계속', nextNodeKey: 'book_excited_3_5'),
    ],
  ),

  // ==================== depth 3: 내적 독백 (랜덤 분기 적용) ====================
  'book_excited_3_1': QuestionNode(
    question: '새로운 문 앞에 선 당신에게 어떤 목소리가 들리나요?',
    options: [
      Option(text: '"드디어 기다리던 시작이구나"', nextNodeKey: 'book_excited_4_3'),
      Option(text: '"어떤 놀라운 일이 펼쳐질까"', nextNodeKey: 'book_excited_4_5'),
      Option(text: '"설레는 마음을 주체할 수 없어"', nextNodeKey: 'book_excited_4_1'),
      Option(text: '"완전히 새로운 나를 만날 것 같아"', nextNodeKey: 'book_excited_4_2'),
      Option(text: '"이 순간을 영원히 기억하고 싶어"', nextNodeKey: 'book_excited_4_4'),
    ],
  ),
  'book_excited_3_2': QuestionNode(
    question: '상상만으로 기분 좋아지는 그 일은 어떤 느낌인가요?',
    options: [
      Option(text: '"생각만 해도 가슴이 뛰어"', nextNodeKey: 'book_excited_4_4'),
      Option(text: '"정말 꿈꿔왔던 순간이야"', nextNodeKey: 'book_excited_4_1'),
      Option(text: '"빨리 그 시간이 왔으면 좋겠어"', nextNodeKey: 'book_excited_4_5'),
      Option(text: '"상상하는 것만으로도 행복해"', nextNodeKey: 'book_excited_4_2'),
      Option(text: '"이 떨림을 온전히 즐기고 싶어"', nextNodeKey: 'book_excited_4_3'),
    ],
  ),
  'book_excited_3_3': QuestionNode(
    question: '무한한 가능성이 보일 때, 당신의 마음은 어디를 향하나요?',
    options: [
      Option(text: '"뭐든 할 수 있을 것 같은 자신감이 생겨"', nextNodeKey: 'book_excited_4_2'),
      Option(text: '"세상이 나를 향해 열리는 기분이야"', nextNodeKey: 'book_excited_4_4'),
      Option(text: '"이렇게 많은 길이 내 앞에 있었구나"', nextNodeKey: 'book_excited_4_1'),
      Option(text: '"새로운 세계로 뛰어들 준비가 됐어"', nextNodeKey: 'book_excited_4_3'),
      Option(text: '"이 가능성의 끝이 궁금해"', nextNodeKey: 'book_excited_4_5'),
    ],
  ),
  'book_excited_3_4': QuestionNode(
    question: '기분 좋은 떨림이 온몸을 감쌀 때 어떤 생각이 드나요?',
    options: [
      Option(text: '"내가 살아있다는 게 생생하게 느껴져"', nextNodeKey: 'book_excited_4_5'),
      Option(text: '"온몸의 감각이 깨어나는 것 같아"', nextNodeKey: 'book_excited_4_2'),
      Option(text: '"이 떨림을 누군가와 나누고 싶어"', nextNodeKey: 'book_excited_4_3'),
      Option(text: '"심장이 뛰는 소리가 들리는 것 같아"', nextNodeKey: 'book_excited_4_1'),
      Option(text: '"지금 이 기분이 영원했으면 좋겠어"', nextNodeKey: 'book_excited_4_4'),
    ],
  ),
  'book_excited_3_5': QuestionNode(
    question: '이유 없이 반짝이는 일상은 당신에게 어떤 의미인가요?',
    options: [
      Option(text: '"삶이 선물처럼 느껴져"', nextNodeKey: 'book_excited_4_1'),
      Option(text: '"매일이 영화 같은 순간이야"', nextNodeKey: 'book_excited_4_3'),
      Option(text: '"좋은 일이 생길 것 같은 예감이 들어"', nextNodeKey: 'book_excited_4_5'),
      Option(text: '"세상이 평소보다 훨씬 아름다워 보여"', nextNodeKey: 'book_excited_4_2'),
      Option(text: '"이 벅찬 기분을 글로 남기고 싶어"', nextNodeKey: 'book_excited_4_4'),
    ],
  ),

  // ==================== depth 4: 감정 결 세분화 (랜덤 분기 적용) ====================
  'book_excited_4_1': QuestionNode(
    question: '그 설렘은 당신의 마음에 어떤 빛깔을 남기나요?',
    options: [
      Option(text: '밝게 타오르는 화사한 노란색', nextNodeKey: 'book_excited_5_3'),
      Option(text: '생기 넘치고 에너제틱한 주황색', nextNodeKey: 'book_excited_5_5'),
      Option(text: '포근하고 달콤한 분홍색', nextNodeKey: 'book_excited_5_1'),
      Option(text: '맑고 상쾌한 하늘색', nextNodeKey: 'book_excited_5_4'),
      Option(text: '반짝이며 흩날리는 무지개색', nextNodeKey: 'book_excited_5_2'),
    ],
  ),
  'book_excited_4_2': QuestionNode(
    question: '이 설렘의 질감을 손으로 만져본다면 어떤 느낌일까요?',
    options: [
      Option(text: '위로 솟구치는 탄력 있는 공기', nextNodeKey: 'book_excited_5_4'),
      Option(text: '부드럽게 퍼져나가는 비단결 같은 촉감', nextNodeKey: 'book_excited_5_1'),
      Option(text: '반짝이는 보석 조각들이 흩날리는 느낌', nextNodeKey: 'book_excited_5_5'),
      Option(text: '일렁이는 맑은 호숫가의 물결', nextNodeKey: 'book_excited_5_2'),
      Option(text: '온몸을 따뜻하게 감싸는 포근한 솜털', nextNodeKey: 'book_excited_5_3'),
    ],
  ),
  'book_excited_4_3': QuestionNode(
    question: '설렘이 당신의 몸 어디쯤에 머물고 있나요?',
    options: [
      Option(text: '가슴 한가운데가 몽글몽글해요', nextNodeKey: 'book_excited_5_5'),
      Option(text: '손끝과 발끝이 찌릿찌릿해요', nextNodeKey: 'book_excited_5_2'),
      Option(text: '머릿속이 기분 좋은 상상으로 가득해요', nextNodeKey: 'book_excited_5_3'),
      Option(text: '나를 둘러싼 공기 전체가 반짝여요', nextNodeKey: 'book_excited_5_1'),
      Option(text: '온몸 구석구석 피가 빠르게 도는 것 같아요', nextNodeKey: 'book_excited_5_4'),
    ],
  ),
  'book_excited_4_4': QuestionNode(
    question: '이 설렘을 하나의 계절이나 풍경에 비유한다면?',
    options: [
      Option(text: '꽃눈이 터지는 따스한 봄날', nextNodeKey: 'book_excited_5_2'),
      Option(text: '상쾌한 파도가 치는 한여름의 바다', nextNodeKey: 'book_excited_5_4'),
      Option(text: '별빛이 쏟아지는 로맨틱한 밤하늘', nextNodeKey: 'book_excited_5_1'),
      Option(text: '기분 좋게 바스락거리는 숲길', nextNodeKey: 'book_excited_5_3'),
      Option(text: '햇살이 부서지는 맑은 오후의 정원', nextNodeKey: 'book_excited_5_5'),
    ],
  ),
  'book_excited_4_5': QuestionNode(
    question: '지금 당신을 가장 즐겁게 만드는 떨림의 정체는 무엇인가요?',
    options: [
      Option(text: '당장이라도 춤추고 싶은 활기', nextNodeKey: 'book_excited_5_1'),
      Option(text: '입가에 맴도는 잔잔한 미소', nextNodeKey: 'book_excited_5_3'),
      Option(text: '잠을 이루지 못하게 하는 호기심', nextNodeKey: 'book_excited_5_5'),
      Option(text: '모든 것을 긍정하게 하는 너그러움', nextNodeKey: 'book_excited_5_2'),
      Option(text: '누군가에게 자랑하고 싶은 벅참', nextNodeKey: 'book_excited_5_4'),
    ],
  ),

  // ==================== depth 5: 욕구 파악 (랜덤 분기 적용) ====================
  'book_excited_5_1': QuestionNode(
    question: '지금 당신의 설레는 마음은 무엇을 더 원하나요?',
    options: [
      Option(
        text: '이 감정을 더 세밀하게 표현하기',
        nextNodeKey: 'book_excited_6_3',
      ), // 5_1 -> 6_3
      Option(
        text: '설렘의 중심을 단단히 잡기',
        nextNodeKey: 'book_excited_6_4',
      ), // 5_1 -> 6_4
      Option(
        text: '나누고 싶지만 혼자 알고도 싶기',
        nextNodeKey: 'book_excited_6_5',
      ), // 5_1 -> 6_5
      Option(
        text: '벅찬 감동으로 더 깊이 들어가기',
        nextNodeKey: 'book_excited_6_1',
      ), // 5_1 -> 6_1
      Option(
        text: '비슷한 떨림을 가진 이들과 연결되기',
        nextNodeKey: 'book_excited_6_2',
      ), // 5_1 -> 6_2
    ],
  ),
  'book_excited_5_2': QuestionNode(
    question: '지금 이 벅찬 감정을 어떻게 다루고 싶으신가요?',
    options: [
      Option(text: '누군가에게 이 기분을 전하기', nextNodeKey: 'book_excited_6_2'),
      Option(text: '그저 가볍고 산뜻하게 즐기기', nextNodeKey: 'book_excited_6_5'),
      Option(text: '지혜로운 문장으로 마음 가꾸기', nextNodeKey: 'book_excited_6_4'),
      Option(text: '더 강렬하고 짜릿한 자극 찾기', nextNodeKey: 'book_excited_6_1'),
      Option(text: '아름다운 예술로 승화해보기', nextNodeKey: 'book_excited_6_3'),
    ],
  ),
  'book_excited_5_3': QuestionNode(
    question: '어떤 이야기가 지금 당신의 설렘과 가장 잘 어울릴까요?',
    options: [
      Option(text: '삶의 태도를 다져줄 묵직한 인문학', nextNodeKey: 'book_excited_6_4'),
      Option(text: '나만의 취향을 포착한 감각적인 글', nextNodeKey: 'book_excited_6_3'),
      Option(text: '낄낄거리며 웃을 수 있는 경쾌한 유머', nextNodeKey: 'book_excited_6_5'),
      Option(text: '가슴 벅찬 감동을 주는 대서사', nextNodeKey: 'book_excited_6_1'),
      Option(text: '온기가 느껴지는 다정한 공감', nextNodeKey: 'book_excited_6_2'),
    ],
  ),
  'book_excited_5_4': QuestionNode(
    question: '당신이 꿈꾸는 설렘의 끝은 어디를 향하고 있나요?',
    options: [
      Option(text: '아름다운 풍경 속에 머무는 시간', nextNodeKey: 'book_excited_6_3'),
      Option(text: '새로운 시작을 돕는 유익한 배움', nextNodeKey: 'book_excited_6_4'),
      Option(text: '아무 생각 없이 즐거운 유희', nextNodeKey: 'book_excited_6_5'),
      Option(text: '세상의 비밀을 발견하는 모험', nextNodeKey: 'book_excited_6_1'),
      Option(text: '운명적인 만남과 사랑의 전율', nextNodeKey: 'book_excited_6_2'),
    ],
  ),
  'book_excited_5_5': QuestionNode(
    question: '지금 이 에너지를 어떤 방식으로 분출하고 싶나요?',
    options: [
      Option(text: '벅찬 감동을 나누는 공감의 시간', nextNodeKey: 'book_excited_6_2'),
      Option(text: '창조적인 영감을 얻는 표현의 시간', nextNodeKey: 'book_excited_6_3'),
      Option(text: '마음을 차분히 가라앉히는 사색의 시간', nextNodeKey: 'book_excited_6_4'),
      Option(text: '오감을 자극하는 순수 예술의 시간', nextNodeKey: 'book_excited_6_5'),
      Option(text: '지적인 전율을 느끼는 탐구의 시간', nextNodeKey: 'book_excited_6_1'),
    ],
  ),

  // ==================== depth 6: 요약 및 뉘앙스 분기 ====================
  'book_excited_6_1': QuestionNode(
    question: '지금 당신은 설레는 마음을 더 깊고 풍성하게 확장하고 싶은 상태군요.',
    options: [
      Option(text: '더 깊은 감정의 파도를 탈래요', nextNodeKey: 'book_excited_7_1'),
      Option(text: '산뜻하고 가볍게 머물고 싶어요', nextNodeKey: 'book_excited_7_8'),
      Option(text: '나만 아는 비밀로 간직할래요', nextNodeKey: 'book_excited_7_10'),
      Option(text: '감정의 모양을 구체화하고 싶어요', nextNodeKey: 'book_excited_7_9'),
      Option(text: '짜릿하고 강렬한 자극을 원해요', nextNodeKey: 'book_excited_7_6'),
    ],
  ),
  'book_excited_6_2': QuestionNode(
    question: '지금 당신은 설레는 마음을 누군가와 연결하며 공감받고 싶은 상태군요.',
    options: [
      Option(text: '이 떨림을 함께 나누고 싶어요', nextNodeKey: 'book_excited_7_2'),
      Option(text: '다정한 공감을 느껴볼래요', nextNodeKey: 'book_excited_7_4'), // 7_4로 분산
      Option(text: '부담 없이 산뜻하게 즐길래요', nextNodeKey: 'book_excited_7_8'),
      Option(text: '지적인 전율을 채우고 싶어요', nextNodeKey: 'book_excited_7_7'),
      Option(text: '이 순간을 영원히 박제할래요', nextNodeKey: 'book_excited_7_3'),
    ],
  ),
  'book_excited_6_3': QuestionNode(
    question: '지금 당신은 이 반짝이는 순간을 아름답게 기록하고 표현하고 싶은 상태군요.',
    options: [
      Option(text: '이 찰나를 세밀하게 기록할래요', nextNodeKey: 'book_excited_7_3'),
      Option(text: '더 깊고 웅장한 감동을 원해요', nextNodeKey: 'book_excited_7_1'),
      Option(text: '아주 가벼운 조각들로 남길래요', nextNodeKey: 'book_excited_7_8'),
      Option(text: '나만의 취향을 찾아보고 싶어요', nextNodeKey: 'book_excited_7_9'),
      Option(text: '예술적인 감각을 채워볼래요', nextNodeKey: 'book_excited_7_10'),
    ],
  ),
  'book_excited_6_4': QuestionNode(
    question: '지금 당신은 설레는 마음을 소중히 가꾸며 오래 간직하고 싶은 상태군요.',
    options: [
      Option(text: '이 평온한 설렘을 지킬래요', nextNodeKey: 'book_excited_7_4'),
      Option(text: '조심스레 마음을 전하고 싶어요', nextNodeKey: 'book_excited_7_10'),
      Option(text: '지혜로운 지식으로 다질래요', nextNodeKey: 'book_excited_7_7'),
      Option(text: '강렬하게 몰입해보고 싶어요', nextNodeKey: 'book_excited_7_6'),
      Option(text: '기분 좋게 흩날리고 싶어요', nextNodeKey: 'book_excited_7_8'),
    ],
  ),
  'book_excited_6_5': QuestionNode(
    question: '지금 당신은 설렘 그 자체를 순수하고 가볍게 만끽하고 싶은 상태군요.',
    options: [
      Option(text: '부담 없이 경쾌하게 즐길래요', nextNodeKey: 'book_excited_7_5'),
      Option(text: '더 벅찬 감동을 느껴볼래요', nextNodeKey: 'book_excited_7_1'),
      Option(text: '혼자만 알고 싶기도 해요', nextNodeKey: 'book_excited_7_10'),
      Option(text: '새로운 시작을 해보고 싶어요', nextNodeKey: 'book_excited_7_9'),
      Option(text: '세상의 비밀을 파헤칠래요', nextNodeKey: 'book_excited_7_6'),
    ],
  ),

  // ==================== depth 7: 결과 노드 전체 ====================
  'book_excited_7_1': QuestionNode(
    question: '설렘의 파도를 더 깊게 타고 싶군요. 가슴 뛰는 순간을 기록하고 탐구한 문장들을 제안합니다.',
    options: [
      Option(
        text: '설렘의 근원을 찾는 에세이',
        nextNodeKey: 'end',
        bookTags: ['탐구', '감성', '에세이', '심리'],
      ),
      Option(
        text: '새로운 나를 만나는 인문학',
        nextNodeKey: 'end',
        bookTags: ['성장', '발견', '자아', '인문'],
      ),
      Option(
        text: '아름다운 순간을 포착한 시집',
        nextNodeKey: 'end',
        bookTags: ['시', '순간', '아름다움', '표현'],
      ),
      Option(
        text: '미래를 그리는 희망찬 기록',
        nextNodeKey: 'end',
        bookTags: ['희망', '꿈', '여정', '기록'],
      ),
      Option(
        text: '성숙한 사랑을 다룬 문학',
        nextNodeKey: 'end',
        bookTags: ['사랑', '성숙', '깊이', '인간'],
      ),
    ],
  ),
  'book_excited_7_2': QuestionNode(
    question: '이 벅찬 마음을 누군가와 나누고 싶군요. 함께 소통하며 공감할 수 있는 이야기들입니다.',
    options: [
      Option(
        text: '풋풋한 청춘 로맨스 소설',
        nextNodeKey: 'end',
        bookTags: ['청춘', '로맨스', '첫사랑', '풋풋'],
      ),
      Option(
        text: '연결과 공감을 다룬 에세이',
        nextNodeKey: 'end',
        bookTags: ['연결', '공유', '공감', '따뜻한'],
      ),
      Option(
        text: '관계의 시작을 담은 심리서',
        nextNodeKey: 'end',
        bookTags: ['관계', '대화', '심리', '이해'],
      ),
      Option(
        text: '운명적 만남의 극적인 서사',
        nextNodeKey: 'end',
        bookTags: ['운명', '만남', '로맨틱', '극적'],
      ),
      Option(
        text: '다정한 위로가 섞인 소설',
        nextNodeKey: 'end',
        bookTags: ['소설', '다정한', '따뜻한', '연결'],
      ),
    ],
  ),
  'book_excited_7_3': QuestionNode(
    question: '이 반짝이는 순간을 영원히 간직하고 싶군요. 당신의 감각을 선명하게 기록해줄 제안입니다.',
    options: [
      Option(
        text: '찰나를 기록하는 일상 에세이',
        nextNodeKey: 'end',
        bookTags: ['기록', '일상', '에세이', '서정'],
      ),
      Option(
        text: '나만의 취향을 담는 워크북',
        nextNodeKey: 'end',
        bookTags: ['워크북', '취향', '기록', '나'],
      ),
      Option(
        text: '감성을 깨우는 일러스트북',
        nextNodeKey: 'end',
        bookTags: ['그림', '시각', '감성', '예술'],
      ),
      Option(
        text: '아름다운 표현이 가득한 문장집',
        nextNodeKey: 'end',
        bookTags: ['문체', '예술', '언어', '아름다운'],
      ),
      Option(
        text: '시적 상상력이 풍부한 산문',
        nextNodeKey: 'end',
        bookTags: ['산문', '상상', '서정', '감각'],
      ),
    ],
  ),
  'book_excited_7_4': QuestionNode(
    question: '이 기분 좋은 떨림을 오래 지켜가고 싶군요. 마음을 가꾸며 에너지를 유지해줄 지혜들입니다.',
    options: [
      Option(
        text: '일상의 행복을 가꾸는 기술',
        nextNodeKey: 'end',
        bookTags: ['지혜', '습관', '행복', '유지'],
      ),
      Option(
        text: '마음의 온도를 높이는 에세이',
        nextNodeKey: 'end',
        bookTags: ['에세이', '포근', '다정한', '회복'],
      ),
      Option(
        text: '삶의 가치를 정립하는 인문학',
        nextNodeKey: 'end',
        bookTags: ['가치', '철학', '성장', '단단'],
      ),
      Option(
        text: '고요하지만 힘 있는 명언집',
        nextNodeKey: 'end',
        bookTags: ['명언', '울림', '안정', '지혜'],
      ),
      Option(
        text: '긍정의 심리학 가이드북',
        nextNodeKey: 'end',
        bookTags: ['심리', '긍정', '변화', '에너지'],
      ),
    ],
  ),
  'book_excited_7_5': QuestionNode(
    question: '아무 부담 없이 이 순간을 즐기고 싶군요. 당신을 미소 짓게 할 경쾌한 책들을 골랐어요.',
    options: [
      Option(
        text: '유쾌한 로맨틱 코미디 소설',
        nextNodeKey: 'end',
        bookTags: ['로맨스', '유머', '재미', '달콤'],
      ),
      Option(
        text: '가벼운 힐링 판타지 동화',
        nextNodeKey: 'end',
        bookTags: ['판타지', '동화', '치유', '순수'],
      ),
      Option(
        text: '웃음이 터지는 일상 웹툰',
        nextNodeKey: 'end',
        bookTags: ['만화', '유머', '일상', '공감'],
      ),
      Option(
        text: '반짝이는 순간의 짧은 단상',
        nextNodeKey: 'end',
        bookTags: ['짧은글', '밝음', '감성', '가벼운'],
      ),
      Option(
        text: '상쾌한 기분을 주는 여행지 기록',
        nextNodeKey: 'end',
        bookTags: ['여행', '풍경', '여유', '상쾌'],
      ),
    ],
  ),
  'book_excited_7_6': QuestionNode(
    question: '설렘 뒤에 숨은 묘한 긴장감을 즐기고 싶군요. 심장을 더 빨리 뛰게 할 짜릿한 이야기입니다.',
    options: [
      Option(
        text: '결말을 알 수 없는 미스터리',
        nextNodeKey: 'end',
        bookTags: ['추리', '반전', '미스터리', '긴장'],
      ),
      Option(
        text: '압도적 흡입력의 스릴러 소설',
        nextNodeKey: 'end',
        bookTags: ['스릴러', '속도', '흡입', '재미'],
      ),
      Option(
        text: '미지의 세계를 다룬 SF 소설',
        nextNodeKey: 'end',
        bookTags: ['SF', '우주', '미지', '상상'],
      ),
      Option(
        text: '모험과 액션의 장르 문학',
        nextNodeKey: 'end',
        bookTags: ['모험', '액션', '역동', '긴장'],
      ),
      Option(
        text: '현실의 이면을 파헤치는 음모론',
        nextNodeKey: 'end',
        bookTags: ['음모론', '비밀', '탐구', '이면'],
      ),
    ],
  ),
  'book_excited_7_7': QuestionNode(
    question: '새로운 지식을 만나는 전율을 느끼고 싶군요. 당신의 세계관을 넓혀줄 신선한 자극입니다.',
    options: [
      Option(
        text: '경이로운 과학의 세계 교양서',
        nextNodeKey: 'end',
        bookTags: ['과학', '지식', '정보', '호기심'],
      ),
      Option(
        text: '세상의 비밀을 푸는 잡학사전',
        nextNodeKey: 'end',
        bookTags: ['상식', '잡학', '다양', '흥미'],
      ),
      Option(
        text: '뇌과학이 들려주는 뇌 이야기',
        nextNodeKey: 'end',
        bookTags: ['뇌과학', '지능', '탐구', '명쾌'],
      ),
      Option(
        text: '미래를 예측하는 트렌드 기술',
        nextNodeKey: 'end',
        bookTags: ['기술', '미래', '트렌드', '전망'],
      ),
      Option(
        text: '문명을 바꾼 아이디어의 역사',
        nextNodeKey: 'end',
        bookTags: ['역사', '인문', '발견', '지적'],
      ),
    ],
  ),
  'book_excited_7_8': QuestionNode(
    question:
        '지금 당신의 설렘은 깊이 파고들기보다 가볍고 산뜻하게 머물고 싶어 보이네요. 이 기분을 편안하게 즐길 이야기를 골라볼까요?',
    options: [
      Option(
        text: '말랑하고 달콤한 로맨틱 소설',
        nextNodeKey: 'end',
        bookTags: ['로맨스', '달콤', '가벼운', '재미'],
      ),
      Option(
        text: '위트 있는 문장의 짧은 산문집',
        nextNodeKey: 'end',
        bookTags: ['에세이', '위트', '경쾌', '산뜻'],
      ),
      Option(
        text: '기분 좋은 웃음이 터지는 만화',
        nextNodeKey: 'end',
        bookTags: ['만화', '유머', '일상', '즐거운'],
      ),
      Option(
        text: '산뜻한 풍경이 담긴 여행 에세이',
        nextNodeKey: 'end',
        bookTags: ['여행', '여유', '감성', '산책'],
      ),
      Option(
        text: '상쾌한 반전이 있는 단편 소설',
        nextNodeKey: 'end',
        bookTags: ['소설', '반전', '짧은글', '경쾌'],
      ),
    ],
  ),
  'book_excited_7_9': QuestionNode(
    question:
        '지금의 설렘은 아직 또렷한 모양을 정하지 않은 채 천천히 머물고 있군요. 이 감정을 조금 더 알아갈 이야기를 골라볼까요?',
    options: [
      Option(
        text: '마음의 결을 따라가는 심리 에세이',
        nextNodeKey: 'end',
        bookTags: ['탐색', '심리', '나', '은은한'],
      ),
      Option(
        text: '미묘한 감정을 포착한 서정적 시집',
        nextNodeKey: 'end',
        bookTags: ['시', '서정', '포착', '아름다움'],
      ),
      Option(
        text: '천천히 성장하는 주인공의 이야기',
        nextNodeKey: 'end',
        bookTags: ['소설', '성장', '과정', '잔잔한'],
      ),
      Option(
        text: '일상의 의미를 묻는 인문 교양서',
        nextNodeKey: 'end',
        bookTags: ['인문', '성찰', '질문', '발견'],
      ),
      Option(
        text: '자신의 취향을 찾아가는 워크북',
        nextNodeKey: 'end',
        bookTags: ['워크북', '기록', '취향', '탐구'],
      ),
    ],
  ),
  'book_excited_7_10': QuestionNode(
    question:
        '나누고 싶은 마음과 혼자 간직하고 싶은 마음이 함께 흐르고 있군요. 이 두 감정을 모두 담아낼 이야기를 골라볼까요?',
    options: [
      Option(
        text: '비밀스러운 사랑과 공유의 서사',
        nextNodeKey: 'end',
        bookTags: ['사랑', '비밀', '연결', '로맨틱'],
      ),
      Option(
        text: '혼자만의 고독과 연대를 다룬 에세이',
        nextNodeKey: 'end',
        bookTags: ['공감', '고독', '공유', '다정한'],
      ),
      Option(
        text: '나만 알고 싶은 보석 같은 소설',
        nextNodeKey: 'end',
        bookTags: ['소설', '몰입', '소장', '특별'],
      ),
      Option(
        text: '사람 사이의 거리를 다룬 인문서',
        nextNodeKey: 'end',
        bookTags: ['관계', '이해', '거리', '심리'],
      ),
      Option(
        text: '함께 읽고 싶은 아름다운 그림책',
        nextNodeKey: 'end',
        bookTags: ['그림책', '선물', '포근', '시각'],
      ),
    ],
  ),
};
