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
    question: '고요한 평온함 속에서 어떤 목소리가 들리나요?',
    options: [
      Option(text: '"이 고요함이 정말 좋아"', nextNodeKey: 'book_normal_4_3'),
      Option(text: '"아무 일도 없는 게 다행이야"', nextNodeKey: 'book_normal_4_5'),
      Option(text: '"이대로 시간이 멈춰도 괜찮아"', nextNodeKey: 'book_normal_4_1'),
      Option(text: '"마음이 아주 가볍고 편안해"', nextNodeKey: 'book_normal_4_2'),
      Option(text: '"안전한 울타리 안에 있는 기분이야"', nextNodeKey: 'book_normal_4_4'),
    ],
  ),
  'book_normal_3_2': QuestionNode(
    question: '특별할 것 없는 하루, 당신의 마음은 무엇이라 말하나요?',
    options: [
      Option(text: '"그냥 늘 하던 대로의 하루네"', nextNodeKey: 'book_normal_4_4'),
      Option(text: '"딱히 거슬리는 것도, 좋은 것도 없어"', nextNodeKey: 'book_normal_4_1'),
      Option(text: '"보통의 삶이란 이런 거겠지"', nextNodeKey: 'book_normal_4_5'),
      Option(text: '"익숙한 풍경들이 편안하게 느껴져"', nextNodeKey: 'book_normal_4_2'),
      Option(text: '"그럭저럭 흘러가는 시간이 나쁘지 않아"', nextNodeKey: 'book_normal_4_3'),
    ],
  ),
  'book_normal_3_3': QuestionNode(
    question: '잔잔하고 안정적인 리듬 속에서 어떤 생각이 머무나요?',
    options: [
      Option(text: '"예측 가능한 일상이 주는 안심"', nextNodeKey: 'book_normal_4_2'),
      Option(text: '"큰 기복 없이 잔잔해서 좋아"', nextNodeKey: 'book_normal_4_4'),
      Option(text: '"이 안정감을 깨고 싶지 않아"', nextNodeKey: 'book_normal_4_1'),
      Option(text: '"삶의 균형이 잘 잡힌 느낌이야"', nextNodeKey: 'book_normal_4_3'),
      Option(text: '"마음의 소란이 잦아든 것 같아"', nextNodeKey: 'book_normal_4_5'),
    ],
  ),
  'book_normal_3_4': QuestionNode(
    question: '변화 없는 밋밋함 속에서 당신의 마음은 어디를 향하나요?',
    options: [
      Option(text: '"너무 똑같아서 가끔은 지겨워"', nextNodeKey: 'book_normal_4_5'),
      Option(text: '"무언가 새로운 자극이 필요할까?"', nextNodeKey: 'book_normal_4_2'),
      Option(text: '"밋밋한 색깔의 하루를 보내고 있어"', nextNodeKey: 'book_normal_4_3'),
      Option(text: '"의미를 찾기엔 너무 평범해"', nextNodeKey: 'book_normal_4_1'),
      Option(text: '"그저 시계바늘처럼 돌아가는 느낌"', nextNodeKey: 'book_normal_4_4'),
    ],
  ),
  'book_normal_3_5': QuestionNode(
    question: '설명하기 어려운 그저 평범한 느낌은 어떤 목소리인가요?',
    options: [
      Option(text: '"그냥 그래, 딱히 할 말이 없어"', nextNodeKey: 'book_normal_4_1'),
      Option(text: '"특별한 감정 없이 하루를 보내네"', nextNodeKey: 'book_normal_4_3'),
      Option(text: '"나만 이렇게 평범하게 사는 걸까"', nextNodeKey: 'book_normal_4_5'),
      Option(text: '"무감각하게 시간이 흐르고 있어"', nextNodeKey: 'book_normal_4_2'),
      Option(text: '"좋지도 나쁘지도 않은 보통의 상태"', nextNodeKey: 'book_normal_4_4'),
    ],
  ),

  // ==================== depth 4: 감정 결 세분화 ====================
  'book_normal_4_1': QuestionNode(
    question: '이 평범함이 당신의 내면에 어떤 무늬를 그리나요?',
    options: [
      Option(text: '만족스러운 평온함의 물결', nextNodeKey: 'book_normal_5_3'),
      Option(text: '담담하게 흐르는 일상의 리듬', nextNodeKey: 'book_normal_5_5'),
      Option(text: '흔들림 없는 단단한 안정감', nextNodeKey: 'book_normal_5_1'),
      Option(text: '밋밋하게 퍼지는 은은한 무료함', nextNodeKey: 'book_normal_5_4'),
      Option(text: '색채가 빠져나간 중립적인 무감정', nextNodeKey: 'book_normal_5_2'),
    ],
  ),
  'book_normal_4_2': QuestionNode(
    question: '지금 느끼는 평범함의 색깔을 고른다면?',
    options: [
      Option(text: '따뜻하고 포근한 아이보리', nextNodeKey: 'book_normal_5_4'),
      Option(text: '차분하게 정돈된 베이지', nextNodeKey: 'book_normal_5_1'),
      Option(text: '편안하게 가라앉은 연회색', nextNodeKey: 'book_normal_5_5'),
      Option(text: '특징 없이 밋밋한 회색', nextNodeKey: 'book_normal_5_2'),
      Option(text: '아무것도 섞이지 않은 무채색', nextNodeKey: 'book_normal_5_3'),
    ],
  ),
  'book_normal_4_3': QuestionNode(
    question: '평범함이 당신의 공간을 어떻게 채우고 있나요?',
    options: [
      Option(text: '나를 부드럽게 감싸는 이불처럼', nextNodeKey: 'book_normal_5_5'),
      Option(text: '오래 보아온 익숙한 가구처럼', nextNodeKey: 'book_normal_5_2'),
      Option(text: '먼지 하나 없는 정갈한 방처럼', nextNodeKey: 'book_normal_5_3'),
      Option(text: '소리 없이 흐르는 맑은 물처럼', nextNodeKey: 'book_normal_5_1'),
      Option(text: '형체 없이 떠도는 투명한 공기처럼', nextNodeKey: 'book_normal_5_4'),
    ],
  ),
  'book_normal_4_4': QuestionNode(
    question: '일상의 질감을 손끝으로 느껴본다면?',
    options: [
      Option(text: '부드럽고 폭신한 솜털의 감촉', nextNodeKey: 'book_normal_5_2'),
      Option(text: '매끄럽고 고르게 닦인 나무의 감촉', nextNodeKey: 'book_normal_5_4'),
      Option(text: '익숙하고 편안한 면직물의 감촉', nextNodeKey: 'book_normal_5_1'),
      Option(text: '평평하고 단조로운 종이의 감촉', nextNodeKey: 'book_normal_5_3'),
      Option(text: '질감이 거의 느껴지지 않는 매끈함', nextNodeKey: 'book_normal_5_5'),
    ],
  ),
  'book_normal_4_5': QuestionNode(
    question: '이 평범함이 당신의 태도에 어떤 변화를 주었나요?',
    options: [
      Option(text: '조급함이 사라진 느긋한 태도', nextNodeKey: 'book_normal_5_1'),
      Option(text: '세상을 관조하는 담담한 태도', nextNodeKey: 'book_normal_5_3'),
      Option(text: '주변을 돌아보는 다정한 태도', nextNodeKey: 'book_normal_5_5'),
      Option(text: '조금 나른해진 게으른 태도', nextNodeKey: 'book_normal_5_2'),
      Option(text: '특별히 변한 게 없는 보통의 태도', nextNodeKey: 'book_normal_5_4'),
    ],
  ),

  // ==================== depth 5: 욕구·부담 정도 ====================
  'book_normal_5_1': QuestionNode(
    question: '평범한 오늘을 어떤 에너지로 채우고 싶으신가요?',
    options: [
      Option(text: '무료함을 날릴 확실한 재미 찾기', nextNodeKey: 'book_normal_6_4'),
      Option(text: '있는 그대로의 상태를 편안히 유지하기', nextNodeKey: 'book_normal_6_5'),
      Option(text: '평범함이 가진 깊은 의미 탐구하기', nextNodeKey: 'book_normal_6_1'),
      Option(text: '일상 속의 특별함을 새롭게 발견하기', nextNodeKey: 'book_normal_6_2'),
      Option(text: '소박하고 작은 행복들을 음미하기', nextNodeKey: 'book_normal_6_3'),
    ],
  ),
  'book_normal_5_2': QuestionNode(
    question: '지금 이 평온한 시간에 무엇을 허락하고 싶나요?',
    options: [
      Option(text: '지루함을 깨워줄 흥미진진한 자극', nextNodeKey: 'book_normal_6_4'),
      Option(text: '자극 없이 편안하게 머무는 안식', nextNodeKey: 'book_normal_6_5'),
      Option(text: '삶의 태도를 다져줄 현명한 사유', nextNodeKey: 'book_normal_6_1'),
      Option(text: '일상을 새로운 시각으로 보는 즐거움', nextNodeKey: 'book_normal_6_2'),
      Option(text: '마음이 몽글해지는 소소한 기록', nextNodeKey: 'book_normal_6_3'),
    ],
  ),
  'book_normal_5_3': QuestionNode(
    question: '어떤 책이 당신의 평범한 리듬을 더 풍성하게 할까요?',
    options: [
      Option(text: '딴생각 못 하게 만드는 강렬한 재미', nextNodeKey: 'book_normal_6_4'),
      Option(text: '언제 덮어도 좋은 편안한 호흡', nextNodeKey: 'book_normal_6_5'),
      Option(text: '평범한 삶을 응시하는 묵직한 통찰', nextNodeKey: 'book_normal_6_1'),
      Option(text: '매일의 순간을 특별하게 만드는 제안', nextNodeKey: 'book_normal_6_2'),
      Option(text: '사소한 것들의 아름다움을 담은 산문', nextNodeKey: 'book_normal_6_3'),
    ],
  ),
  'book_normal_5_4': QuestionNode(
    question: '지금 당신의 마음이 가장 끌리는 방향은 어디인가요?',
    options: [
      Option(text: '스트레스를 날려줄 유쾌한 에너지', nextNodeKey: 'book_normal_6_4'),
      Option(text: '활자보다는 감각에 집중하는 여유', nextNodeKey: 'book_normal_6_5'),
      Option(text: '본질을 파고들며 사유하는 깊이', nextNodeKey: 'book_normal_6_1'),
      Option(text: '세상을 다르게 보게 하는 발견의 눈', nextNodeKey: 'book_normal_6_2'),
      Option(text: '한 문장씩 아껴 읽고 싶은 다정함', nextNodeKey: 'book_normal_6_3'),
    ],
  ),
  'book_normal_5_5': QuestionNode(
    question: '이 잔잔한 하루 끝에 어떤 기분을 남기고 싶나요?',
    options: [
      Option(text: '기분 전환이 되는 경쾌한 웃음', nextNodeKey: 'book_normal_6_4'),
      Option(text: '머릿속이 맑아지는 비움의 시간', nextNodeKey: 'book_normal_6_5'),
      Option(text: '삶의 가치를 깨닫는 성찰의 여운', nextNodeKey: 'book_normal_6_1'),
      Option(text: '따뜻한 연결이 느껴지는 공유의 마음', nextNodeKey: 'book_normal_6_2'),
      Option(text: '입가에 미소가 남는 소소한 기쁨', nextNodeKey: 'book_normal_6_3'),
    ],
  ),

  // ==================== depth 6: 요약·공감 확인 ====================
  'book_normal_6_1': QuestionNode(
    question: '평범한 일상 속 이면에 담긴 깊은 의미를 탐구하며 삶의 중심을 잡고 싶군요.',
    options: [
      Option(text: '일상의 무게를 견디는 철학이 궁금해요', nextNodeKey: 'book_normal_7_1'),
      Option(text: '보통의 삶을 예리하게 분석해볼래요', nextNodeKey: 'book_normal_7_6'),
      Option(text: '본질과 실천을 아우르는 지혜를 원해요', nextNodeKey: 'book_normal_7_7'),
      Option(text: '일상의 소중함을 일깨우는 문학을 볼래요', nextNodeKey: 'book_normal_7_2'),
      Option(text: '나만의 시선으로 오늘을 기록할래요', nextNodeKey: 'book_normal_7_10'),
    ],
  ),
  'book_normal_6_2': QuestionNode(
    question: '평범한 일상을 새로운 시각으로 바라보며 숨겨진 특별함을 발견하고 싶은 상태군요.',
    options: [
      Option(text: '일상을 낯설게 보는 에세이가 필요해요', nextNodeKey: 'book_normal_7_2'),
      Option(text: '평범함 속 아름다움을 찾아가며 사색할래요', nextNodeKey: 'book_normal_7_1'),
      Option(text: '삶에 영감을 더해줄 지침을 읽을래요', nextNodeKey: 'book_normal_7_7'),
      Option(text: '특별함을 포착한 예술적 시각을 즐길래요', nextNodeKey: 'book_normal_7_6'),
      Option(text: '새로운 활력을 줄 취미를 시작해볼래요', nextNodeKey: 'book_normal_7_9'),
    ],
  ),
  'book_normal_6_3': QuestionNode(
    question: '평범한 하루 속 작은 행복을 음미하며 소소한 기쁨을 선명하게 누리고 싶은 상태군요.',
    options: [
      Option(text: '소박하고 따뜻한 행복을 음미할래요', nextNodeKey: 'book_normal_7_3'),
      Option(text: '취향이 담긴 세련된 라이프를 꿈꿔요', nextNodeKey: 'book_normal_7_10'),
      Option(text: '부담 없이 잔잔한 만화에 빠져볼래요', nextNodeKey: 'book_normal_7_4'),
      Option(text: '기분 좋은 파동을 일으킬 그림책이요', nextNodeKey: 'book_normal_7_8'),
      Option(text: '직접 손을 움직여 무언가 만들래요', nextNodeKey: 'book_normal_7_9'),
    ],
  ),
  'book_normal_6_4': QuestionNode(
    question: '평범함을 넘어 일상에 기분 좋은 파동을 일으킬 확실한 재미를 찾고 있군요!',
    options: [
      Option(text: '지루함을 날려줄 유쾌한 웃음을 원해요', nextNodeKey: 'book_normal_7_8'),
      Option(text: '뇌를 깨우는 흥미진진한 퀴즈를 풀래요', nextNodeKey: 'book_normal_7_9'),
      Option(text: '창의적인 일상 아이디어를 얻고 싶어요', nextNodeKey: 'book_normal_7_10'),
      Option(text: '유쾌한 반전이 있는 이야기에 빠질래요', nextNodeKey: 'book_normal_7_4'),
      Option(text: '세상을 뒤집어 보는 신선함을 즐길래요', nextNodeKey: 'book_normal_7_2'),
    ],
  ),
  'book_normal_6_5': QuestionNode(
    question: '어떤 자극이나 요구 없이 있는 그대로의 여유를 만끽하며 머물고 싶은 상태군요.',
    options: [
      Option(text: '페이지를 마음대로 펼쳐 읽고 싶어요', nextNodeKey: 'book_normal_7_5'),
      Option(text: '느리게 걷는 삶의 가치를 배울래요', nextNodeKey: 'book_normal_7_1'),
      Option(text: '식물과 집밥으로 마음을 데울래요', nextNodeKey: 'book_normal_7_3'),
      Option(text: '보통의 존재를 긍정하는 인문학이요', nextNodeKey: 'book_normal_7_6'),
      Option(text: '삶의 균형을 잡아줄 조언을 들을래요', nextNodeKey: 'book_normal_7_7'),
    ],
  ),

  // ==================== depth 7: 최종 결과 ====================
  'book_normal_7_1': QuestionNode(
    question: '일상의 무게를 견디고 삶의 본질을 조용히 사유하게 돕는 생활 철학서들입니다.',
    options: [
      Option(
        text: '단단한 중심을 잡아주는 생활 철학',
        nextNodeKey: 'end',
        bookTags: ['일상철학', '생활철학', '사유', '의미'],
      ),
      Option(
        text: '느린 삶의 가치를 일깨우는 안내서',
        nextNodeKey: 'end',
        bookTags: ['슬로우라이프', '느린삶', '여유', '라이프'],
      ),
      Option(
        text: '평범함 속 아름다움을 포착한 성찰록',
        nextNodeKey: 'end',
        bookTags: ['아름다움', '성찰', '사색', '인문'],
      ),
      Option(
        text: '삶의 본질을 묻는 묵직한 철학 에세이',
        nextNodeKey: 'end',
        bookTags: ['철학', '본질', '사유', '깊이'],
      ),
      Option(
        text: '소박한 삶에서 찾은 단단한 행복',
        nextNodeKey: 'end',
        bookTags: ['소박함', '행복', '지혜', '긍정'],
      ),
    ],
  ),
  'book_normal_7_2': QuestionNode(
    question: '매일 마주하는 풍경을 낯설게 조명하여 일상의 숨겨진 특별함을 발견하는 문장들입니다.',
    options: [
      Option(
        text: '일상을 새롭게 정의하는 시각의 에세이',
        nextNodeKey: 'end',
        bookTags: ['일상', '시각', '에세이', '발견'],
      ),
      Option(
        text: '보통 사람들의 삶을 긍정하는 문학선',
        nextNodeKey: 'end',
        bookTags: ['소시민문학', '보통사람', '문학', '공감'],
      ),
      Option(
        text: '다정한 시선으로 바라본 주변의 기록',
        nextNodeKey: 'end',
        bookTags: ['순간', '소소', '이야기', '다정'],
      ),
      Option(
        text: '평범한 것들의 위대함을 증명하는 글',
        nextNodeKey: 'end',
        bookTags: ['의미', '발견', '일상', '깊이'],
      ),
      Option(
        text: '삶의 작은 조각에서 건져낸 영감들',
        nextNodeKey: 'end',
        bookTags: ['영감', '특별', '일상', '감성'],
      ),
    ],
  ),
  'book_normal_7_3': QuestionNode(
    question: '집밥, 식물, 취미 일지 등 작은 것들에 집중하며 소소한 기쁨을 음미하는 기록들입니다.',
    options: [
      Option(
        text: '소소한 일상의 기쁨을 담은 생활 산문',
        nextNodeKey: 'end',
        bookTags: ['소소', '행복', '에세이', '따뜻'],
      ),
      Option(
        text: '정성껏 지어 먹는 집밥의 미학 에세이',
        nextNodeKey: 'end',
        bookTags: ['집밥', '요리', '소박', '일상'],
      ),
      Option(
        text: '초록빛 위로를 주는 반려식물 가드닝',
        nextNodeKey: 'end',
        bookTags: ['식물', '가드닝', '일상', '키우기'],
      ),
      Option(
        text: '몰입의 즐거움을 기록한 나만의 취미 일지',
        nextNodeKey: 'end',
        bookTags: ['취미', '일지', '기록', '일상'],
      ),
      Option(
        text: '매일의 온도를 높이는 사소한 습관들',
        nextNodeKey: 'end',
        bookTags: ['습관', '온도', '라이프', '소소'],
      ),
    ],
  ),
  'book_normal_7_4': QuestionNode(
    question: '자극 없이 흘러가는 이야기 속에 몸을 맡겨 마음을 편안히 이완해주는 책들입니다.',
    options: [
      Option(
        text: '포근한 동네를 배경으로 한 잔잔한 소설',
        nextNodeKey: 'end',
        bookTags: ['잔잔', '일상', '이야기', '포근'],
      ),
      Option(
        text: '동네책방 주인의 다정한 생활 수필집',
        nextNodeKey: 'end',
        bookTags: ['동네', '에세이', '로컬', '따뜻'],
      ),
      Option(
        text: '부담 없이 스르륵 읽히는 일상 단편선',
        nextNodeKey: 'end',
        bookTags: ['단편', '소설', '공감', '편안'],
      ),
      Option(
        text: '있는 그대로의 삶을 담담하게 긍정하는 기록',
        nextNodeKey: 'end',
        bookTags: ['자연', '담담', '편안', '수필'],
      ),
      Option(
        text: '마음의 짐을 내려놓게 돕는 다정한 문장',
        nextNodeKey: 'end',
        bookTags: ['위로', '휴식', '일상', '안도'],
      ),
    ],
  ),
  'book_normal_7_5': QuestionNode(
    question: '시집, 요리법, 산책 가이드처럼 아무 페이지나 펼쳐 읽으며 여유를 즐기는 책들입니다.',
    options: [
      Option(
        text: '아무 페이지나 펼쳐 읽는 자유로운 문장',
        nextNodeKey: 'end',
        bookTags: ['자유', '순서', '편안', '부담'],
      ),
      Option(
        text: '제철 식재료로 채운 건강한 제철 요리법',
        nextNodeKey: 'end',
        bookTags: ['계절', '요리', '레시피', '소박'],
      ),
      Option(
        text: '소박한 일상을 노래한 평일의 시집',
        nextNodeKey: 'end',
        bookTags: ['시', '일상', '소박', '담담'],
      ),
      Option(
        text: '천천히 걷는 즐거움, 동네 산책 가이드',
        nextNodeKey: 'end',
        bookTags: ['산책', '동네', '걷기', '여유'],
      ),
      Option(
        text: '목적 없이 머물러도 좋은 감성 화보집',
        nextNodeKey: 'end',
        bookTags: ['화보', '시각', '여유', '감각'],
      ),
    ],
  ),
  'book_normal_7_6': QuestionNode(
    question: '평범함의 다양한 이면과 입체적인 얼굴을 인문/예술적 시각으로 분석한 책들입니다.',
    options: [
      Option(
        text: '평범함의 문화적 맥락을 분석한 비평',
        nextNodeKey: 'end',
        bookTags: ['문화', '사회', '인문', '맥락'],
      ),
      Option(
        text: '보통의 삶에 던지는 날카로운 철학적 화두',
        nextNodeKey: 'end',
        bookTags: ['철학', '성찰', '비판', '사고'],
      ),
      Option(
        text: '평범함을 예술로 승화시킨 현대 작품집',
        nextNodeKey: 'end',
        bookTags: ['예술', '표현', '창작', '감성'],
      ),
      Option(
        text: '일상의 질서를 해체하고 재구성한 인문서',
        nextNodeKey: 'end',
        bookTags: ['인문', '해체', '재구성', '지적'],
      ),
      Option(
        text: '평범함 뒤에 숨겨진 입체적인 진실의 기록',
        nextNodeKey: 'end',
        bookTags: ['진실', '분석', '인문', '탐구'],
      ),
    ],
  ),
  'book_normal_7_7': QuestionNode(
    question: '평범함의 본질을 이해하면서도 일상의 가치를 놓치지 않는 스마트한 통합 안내서입니다.',
    options: [
      Option(
        text: '의미와 발견을 통합한 지혜의 통합 안내서',
        nextNodeKey: 'end',
        bookTags: ['의미', '발견', '통합', '탐구'],
      ),
      Option(
        text: '본질을 묻고 가치를 찾는 일상 탐험 가이드',
        nextNodeKey: 'end',
        bookTags: ['본질', '가치', '일상', '가이드'],
      ),
      Option(
        text: '철학적 사유와 실천을 아우르는 종합 지침서',
        nextNodeKey: 'end',
        bookTags: ['이론', '실천', '지혜', '종합'],
      ),
      Option(
        text: '의미를 찾으며 일상을 가꾸는 기술적 사유',
        nextNodeKey: 'end',
        bookTags: ['기술', '일상', '지혜', '실천'],
      ),
      Option(
        text: '철학과 일상을 연결하는 전략적 생활 수필',
        nextNodeKey: 'end',
        bookTags: ['철학', '전략', '연결', '탐구'],
      ),
    ],
  ),
  'book_normal_7_8': QuestionNode(
    question: '웹툰, 코미디 소설, 유머 단상집 등 일상의 지루함을 날려줄 강력한 재미의 책들입니다.',
    options: [
      Option(
        text: '배꼽 잡게 웃기는 위트 넘치는 코믹 웹툰',
        nextNodeKey: 'end',
        bookTags: ['유머', '웃음', '웹툰', '재미'],
      ),
      Option(
        text: '속도감 넘치고 발랄한 정통 코미디 소설',
        nextNodeKey: 'end',
        bookTags: ['코미디', '소설', '경쾌', '반전'],
      ),
      Option(
        text: '엉뚱하고 기발한 상상이 가득한 단편 이야기',
        nextNodeKey: 'end',
        bookTags: ['기발', '상상', '재미', '짧은글'],
      ),
      Option(
        text: '세상에서 가장 웃긴 실화 에피소드 모음',
        nextNodeKey: 'end',
        bookTags: ['유머', '에세이', '위트', '환기'],
      ),
      Option(
        text: '가벼운 반전으로 카타르시스를 주는 추리물',
        nextNodeKey: 'end',
        bookTags: ['추리', '반전', '일상', '몰입'],
      ),
    ],
  ),
  'book_normal_7_9': QuestionNode(
    question: '이색 취미, 로컬 여행, 퀴즈와 퍼즐 등 직접 몸과 머리를 쓰는 활동적인 도서들입니다.',
    options: [
      Option(
        text: '당장 따라 하고 싶은 이색 취미 실전 가이드',
        nextNodeKey: 'end',
        bookTags: ['취미', '가이드', '활동', '재미'],
      ),
      Option(
        text: '뇌를 깨우는 흥미진진한 고난도 퀴즈와 퍼즐',
        nextNodeKey: 'end',
        bookTags: ['퀴즈', '퍼즐', '두뇌', '유희'],
      ),
      Option(
        text: '일상이 모험이 되는 우리 동네 로컬 여행법',
        nextNodeKey: 'end',
        bookTags: ['여행', '모험', '로컬', '탐험'],
      ),
      Option(
        text: '새로운 기술을 쉽고 재밌게 배우는 입문서',
        nextNodeKey: 'end',
        bookTags: ['배움', '입문', '자기계발', '활력'],
      ),
      Option(
        text: '직접 그리고 만들며 에너지를 얻는 실천 북',
        nextNodeKey: 'end',
        bookTags: ['드로잉', '메이킹', '활동', '에너지'],
      ),
    ],
  ),
  'book_normal_7_10': QuestionNode(
    question: '나만의 시선으로 일상을 새롭게 조각하고 취향을 발견하도록 돕는 제안들입니다.',
    options: [
      Option(
        text: '취향이 담긴 세련된 라이프스타일 매거진',
        nextNodeKey: 'end',
        bookTags: ['잡지', '트렌드', '디자인', '세련'],
      ),
      Option(
        text: '창의적인 일상 접근법을 모은 아이디어 북',
        nextNodeKey: 'end',
        bookTags: ['아이디어', '창의', '일상', '접근'],
      ),
      Option(
        text: '나에게 꼭 맞는 발견의 기술을 찾는 탐구서',
        nextNodeKey: 'end',
        bookTags: ['맞춤', '발견', '탐색', '개인'],
      ),
      Option(
        text: '일상의 질감을 시각적으로 정돈해주는 디자인북',
        nextNodeKey: 'end',
        bookTags: ['디자인', '정돈', '시각', '취향'],
      ),
      Option(
        text: '나만의 공간과 루틴을 창조하는 라이프 북',
        nextNodeKey: 'end',
        bookTags: ['공간', '루틴', '창조', '독립'],
      ),
    ],
  ),
};
