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
    question: '텅 빈 시간 속에서 어떤 목소리가 들리나요?',
    options: [
      Option(text: '"뭐 재미있는 일 좀 안 생기나"', nextNodeKey: 'book_bored_4_3'),
      Option(text: '"시간이 멈춘 것 같아"', nextNodeKey: 'book_bored_4_5'),
      Option(text: '"어디론가 훌쩍 떠나고 싶어"', nextNodeKey: 'book_bored_4_2'),
      Option(text: '"나만 빼고 다들 바빠 보여"', nextNodeKey: 'book_bored_4_1'),
      Option(text: '"그저 가만히 있기 싫어"', nextNodeKey: 'book_bored_4_4'),
    ],
  ),
  'book_bored_3_2': QuestionNode(
    question: '반복되는 일상에서 당신의 마음은 무엇을 외치나요?',
    options: [
      Option(text: '"또 똑같은 하루야, 지겨워"', nextNodeKey: 'book_bored_4_4'),
      Option(text: '"새로운 자극이 절실해"', nextNodeKey: 'book_bored_4_1'),
      Option(text: '"이 반복의 굴레를 깨고 싶어"', nextNodeKey: 'book_bored_4_5'),
      Option(text: '"현실이 아닌 다른 세계가 필요해"', nextNodeKey: 'book_bored_4_2'),
      Option(text: '"무언가 배우거나 채우고 싶어"', nextNodeKey: 'book_bored_4_3'),
    ],
  ),
  'book_bored_3_3': QuestionNode(
    question: '혼자 있는 고요함 속에서 어떤 생각이 머무나요?',
    options: [
      Option(text: '"이 공백을 무엇으로 채워야 할까"', nextNodeKey: 'book_bored_4_2'),
      Option(text: '"누군가와 연결되고 싶어"', nextNodeKey: 'book_bored_4_4'),
      Option(text: '"혼자만의 몰입이 필요해"', nextNodeKey: 'book_bored_4_1'),
      Option(text: '"아무 생각 없이 웃고 싶어"', nextNodeKey: 'book_bored_4_3'),
      Option(text: '"내가 진짜 원하는 게 뭐지"', nextNodeKey: 'book_bored_4_5'),
    ],
  ),
  'book_bored_3_4': QuestionNode(
    question: '새로운 것을 찾는 당신의 호기심은 어디로 향하나요?',
    options: [
      Option(text: '"세상의 숨겨진 진실이 궁금해"', nextNodeKey: 'book_bored_4_5'),
      Option(text: '"완전히 낯선 감각을 깨우고 싶어"', nextNodeKey: 'book_bored_4_2'),
      Option(text: '"지적인 자극을 원해"', nextNodeKey: 'book_bored_4_3'),
      Option(text: '"가슴 뛰는 모험을 하고 싶어"', nextNodeKey: 'book_bored_4_1'),
      Option(text: '"손으로 무언가 직접 해볼까"', nextNodeKey: 'book_bored_4_4'),
    ],
  ),
  'book_bored_3_5': QuestionNode(
    question: '늘 곁에 있는 무거운 심심함은 어떤 느낌인가요?',
    options: [
      Option(text: '"모든 게 다 무의미해 보여"', nextNodeKey: 'book_bored_4_1'),
      Option(text: '"마음이 메말라버린 것 같아"', nextNodeKey: 'book_bored_4_3'),
      Option(text: '"강력한 한 방이 필요해"', nextNodeKey: 'book_bored_4_5'),
      Option(text: '"그냥 멍하니 시간을 보내게 돼"', nextNodeKey: 'book_bored_4_2'),
      Option(text: '"이 상태를 벗어날 에너지가 없어"', nextNodeKey: 'book_bored_4_4'),
    ],
  ),

  // ==================== depth 4: 감정 결 세분화 ====================
  'book_bored_4_1': QuestionNode(
    question: '그 심심함이 당신의 일상을 어떻게 흔들고 있나요?',
    options: [
      Option(text: '온몸을 나른하게 만드는 무력함', nextNodeKey: 'book_bored_5_3'),
      Option(text: '머릿속이 텅 빈 것 같은 막막함', nextNodeKey: 'book_bored_5_5'),
      Option(text: '손끝이 근질거리는 초조함', nextNodeKey: 'book_bored_5_1'),
      Option(text: '가슴 한구석이 답답한 갈증', nextNodeKey: 'book_bored_5_4'),
      Option(text: '어디로든 도망치고 싶은 조급함', nextNodeKey: 'book_bored_5_2'),
    ],
  ),
  'book_bored_4_2': QuestionNode(
    question: '당신이 느끼는 심심함의 온도는 어떤가요?',
    options: [
      Option(text: '생기 없이 미지근한 느낌', nextNodeKey: 'book_bored_5_4'),
      Option(text: '텅 비어 차갑게 식은 느낌', nextNodeKey: 'book_bored_5_1'),
      Option(text: '안개처럼 흐릿하고 미묘한 느낌', nextNodeKey: 'book_bored_5_5'),
      Option(text: '무언가 타오르기 전의 건조함', nextNodeKey: 'book_bored_5_2'),
      Option(text: '온도조차 느껴지지 않는 진공 상태', nextNodeKey: 'book_bored_5_3'),
    ],
  ),
  'book_bored_4_3': QuestionNode(
    question: '이 무료함을 시각적으로 표현한다면 무엇과 닮았나요?',
    options: [
      Option(text: '끝이 보이지 않는 평평한 들판', nextNodeKey: 'book_bored_5_5'),
      Option(text: '시계바늘이 멈춘 오래된 방', nextNodeKey: 'book_bored_5_2'),
      Option(text: '색깔이 다 빠져버린 무채색 사진', nextNodeKey: 'book_bored_5_3'),
      Option(text: '막다른 골목에 선 기분', nextNodeKey: 'book_bored_5_1'),
      Option(text: '형체 없이 떠다니는 구름', nextNodeKey: 'book_bored_5_4'),
    ],
  ),
  'book_bored_4_4': QuestionNode(
    question: '심심함이 당신에게 주는 가장 큰 영향은 무엇인가요?',
    options: [
      Option(text: '자꾸만 무언가 새로운 걸 찾게 돼요', nextNodeKey: 'book_bored_5_2'),
      Option(text: '생각이 꼬리에 꼬리를 물어요', nextNodeKey: 'book_bored_5_4'),
      Option(text: '아무것도 하기 싫어 누워만 있어요', nextNodeKey: 'book_bored_5_1'),
      Option(text: '의미 없는 스마트폰 화면만 넘겨요', nextNodeKey: 'book_bored_5_3'),
      Option(text: '괜히 짜증이 나거나 답답해요', nextNodeKey: 'book_bored_5_5'),
    ],
  ),
  'book_bored_4_5': QuestionNode(
    question: '지금 당신을 가장 자극하는 심심함의 결은 무엇인가요?',
    options: [
      Option(text: '현실을 잊게 할 강력한 도파민', nextNodeKey: 'book_bored_5_1'),
      Option(text: '지적 호기심을 채울 신선한 지식', nextNodeKey: 'book_bored_5_3'),
      Option(text: '마음을 편안하게 녹여줄 위로', nextNodeKey: 'book_bored_5_5'),
      Option(text: '세상의 이면을 파헤치는 미스터리', nextNodeKey: 'book_bored_5_2'),
      Option(text: '직접 몸으로 체감하는 창작의 맛', nextNodeKey: 'book_bored_5_4'),
    ],
  ),

  // ==================== depth 5: 욕구·부담 정도 ====================
  'book_bored_5_1': QuestionNode(
    question: '지금 당신의 마음은 어떤 채움을 원하고 있나요?',
    options: [
      Option(text: '완전히 새로운 세계로 로그아웃하기', nextNodeKey: 'book_bored_6_1'),
      Option(text: '짜릿하고 흥미진진한 자극 찾기', nextNodeKey: 'book_bored_6_2'),
      Option(text: '뇌를 깨우는 지적인 탐험하기', nextNodeKey: 'book_bored_6_3'),
      Option(text: '부담 없이 가볍게 시간 흘려보내기', nextNodeKey: 'book_bored_6_4'),
      Option(text: '심심함 자체를 응시하고 성찰하기', nextNodeKey: 'book_bored_6_5'),
    ],
  ),
  'book_bored_5_2': QuestionNode(
    question: '지금 이 지루함을 깨뜨릴 가장 좋은 방법은 무엇일까요?',
    options: [
      Option(text: '현실을 잊을 만큼 압도적인 서사', nextNodeKey: 'book_bored_6_1'),
      Option(text: '세상의 비밀과 이면을 파헤치는 긴장감', nextNodeKey: 'book_bored_6_2'),
      Option(text: '신선한 영감을 주는 배움의 즐거움', nextNodeKey: 'book_bored_6_3'),
      Option(text: '눈과 마음이 즐거운 시각적 휴식', nextNodeKey: 'book_bored_6_4'),
      Option(text: '존재의 본질을 고민하는 묵직한 문장', nextNodeKey: 'book_bored_6_5'),
    ],
  ),
  'book_bored_5_3': QuestionNode(
    question: '지금 당신이 감당할 수 있는 몰입의 깊이는 어느 정도인가요?',
    options: [
      Option(text: '밤을 새워도 좋을 만큼 강력한 몰입', nextNodeKey: 'book_bored_6_1'),
      Option(text: '손에 땀을 쥐게 하는 빠른 전개', nextNodeKey: 'book_bored_6_2'),
      Option(text: '똑똑해지는 기분이 드는 깊이 있는 지식', nextNodeKey: 'book_bored_6_3'),
      Option(text: '언제든 덮어도 좋은 가벼운 산문', nextNodeKey: 'book_bored_6_4'),
      Option(text: '천천히 곱씹으며 사유할 수 있는 글', nextNodeKey: 'book_bored_6_5'),
    ],
  ),
  'book_bored_5_4': QuestionNode(
    question: '어떤 책이 당신의 무료한 일상에 숨구멍이 되어줄까요?',
    options: [
      Option(text: '낯선 세계로의 모험을 담은 소설', nextNodeKey: 'book_bored_6_1'),
      Option(text: '반전과 미스터리가 가득한 이야기', nextNodeKey: 'book_bored_6_2'),
      Option(text: '호기심을 자극하는 흥미로운 교양서', nextNodeKey: 'book_bored_6_3'),
      Option(text: '기분 좋은 웃음을 주는 경쾌한 작품', nextNodeKey: 'book_bored_6_4'),
      Option(text: '공백의 의미를 알려주는 철학 에세이', nextNodeKey: 'book_bored_6_5'),
    ],
  ),
  'book_bored_5_5': QuestionNode(
    question: '지금 당신의 마음이 가장 끌리는 활동은 무엇인가요?',
    options: [
      Option(text: '장대한 서사 속 주인공이 되는 상상', nextNodeKey: 'book_bored_6_1'),
      Option(text: '숨겨진 단서를 찾는 지적인 추리', nextNodeKey: 'book_bored_6_2'),
      Option(text: '새로운 사실을 알아가는 즐거운 배움', nextNodeKey: 'book_bored_6_3'),
      Option(text: '아름다운 풍경이나 예술을 감상하기', nextNodeKey: 'book_bored_6_4'),
      Option(text: '고요하게 내면을 정리하는 기록', nextNodeKey: 'book_bored_6_5'),
    ],
  ),

  // ==================== depth 6: 요약·공감 확인 ====================
  'book_bored_6_1': QuestionNode(
    question: '지금 당신은 심심함을 넘어 완전히 새로운 세계로 로그아웃하고 싶은 상태군요.',
    options: [
      Option(text: '압도적인 세계관 속으로 탈출할래요', nextNodeKey: 'book_bored_7_1'),
      Option(text: '모험도 좋지만 유머도 놓칠 수 없죠', nextNodeKey: 'book_bored_7_7'),
      Option(text: '세상의 숨겨진 미스터리를 알고 싶어요', nextNodeKey: 'book_bored_7_8'),
      Option(text: '가볍고 산뜻하게 즐기고 싶네요', nextNodeKey: 'book_bored_7_4'),
      Option(text: '아예 현실을 잊을 만큼 몰입할래요', nextNodeKey: 'book_bored_7_10'),
    ],
  ),
  'book_bored_6_2': QuestionNode(
    question: '지금 당신은 지루함을 한 방에 날려줄 짜릿하고 재미있는 자극을 찾는 상태군요.',
    options: [
      Option(text: '도파민 터지는 이야기가 필요해요', nextNodeKey: 'book_bored_7_2'),
      Option(text: '밥 먹는 것도 잊을 만큼 몰입할래요', nextNodeKey: 'book_bored_7_10'),
      Option(text: '은밀하고 위험한 비밀을 알고 어어요', nextNodeKey: 'book_bored_7_8'),
      Option(text: '부담 없이 낄낄거리며 웃고 싶어요', nextNodeKey: 'book_bored_7_4'),
      Option(text: '직접 손을 움직이며 재미를 찾을래요', nextNodeKey: 'book_bored_7_9'),
    ],
  ),
  'book_bored_6_3': QuestionNode(
    question: '지금 당신은 뇌를 깨우는 신선한 지식과 지적인 유희를 갈망하는 상태군요.',
    options: [
      Option(text: '읽을수록 똑똑해지는 기분을 원해요', nextNodeKey: 'book_bored_7_3'),
      Option(text: '세상의 이면과 진실을 파헤쳐볼래요', nextNodeKey: 'book_bored_7_8'),
      Option(text: '심오한 철학적 사색에 빠져볼까요?', nextNodeKey: 'book_bored_7_6'),
      Option(text: '가벼운 교양과 영감을 얻고 싶어요', nextNodeKey: 'book_bored_7_4'),
      Option(text: '직접 퀴즈나 퍼즐을 풀어보고 싶어요', nextNodeKey: 'book_bored_7_9'),
    ],
  ),
  'book_bored_6_4': QuestionNode(
    question: '지금 당신은 심심하지만 무거운 건 싫고, 가볍게 시간을 보내고 싶은 상태군요.',
    options: [
      Option(text: '스르륵 읽히는 편안한 책이 좋아요', nextNodeKey: 'book_bored_7_4'),
      Option(text: '글자보다 눈이 즐거운 시각적 휴식을 원해요', nextNodeKey: 'book_bored_7_5'),
      Option(text: '가볍게 무언가 배우는 영감을 얻을래요', nextNodeKey: 'book_bored_7_3'),
      Option(text: '손끝으로 꼼지락대며 시간을 보낼래요', nextNodeKey: 'book_bored_7_9'),
      Option(text: '아예 딴생각 못 하게 꽉 채운 서사가 필요해요', nextNodeKey: 'book_bored_7_10'),
    ],
  ),
  'book_bored_6_5': QuestionNode(
    question: '지금 당신은 심심함 그 자체를 느끼며 무엇을 할지 고민하는 상태군요.',
    options: [
      Option(text: '존재를 고민하는 묵직한 문장을 원해요', nextNodeKey: 'book_bored_7_6'),
      Option(text: '아무 페이지나 펼쳐도 좋을 감각적인 책이요', nextNodeKey: 'book_bored_7_5'),
      Option(text: '압도적인 흡입력의 이야기에 빠져볼래요', nextNodeKey: 'book_bored_7_10'),
      Option(text: '흥미로운 역사 속 비밀을 알고 싶어요', nextNodeKey: 'book_bored_7_8'),
      Option(text: '무언가 직접 만들며 시간을 가득 채우고 싶어요', nextNodeKey: 'book_bored_7_9'),
    ],
  ),

  // ==================== depth 7: 결과 (bookTags 포함) ====================
  'book_bored_7_1': QuestionNode(
    question: '일상에서 완전히 로그아웃하고 싶군요. 현실을 잊게 할 압도적인 세계관을 제안합니다.',
    options: [
      Option(
        text: '대작 판타지 서사시',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '세계관', '대작'],
      ),
      Option(
        text: '우주를 배경으로 한 SF',
        nextNodeKey: 'end',
        bookTags: ['SF', '우주', '미지', '과학'],
      ),
      Option(
        text: '낯선 세계의 이세계물',
        nextNodeKey: 'end',
        bookTags: ['이세계', '판타지', '전생', '마법'],
      ),
      Option(
        text: '장대한 역사의 소용돌이',
        nextNodeKey: 'end',
        bookTags: ['역사', '서사', '웅장', '대작'],
      ),
      Option(
        text: '미래 사회 디스토피아',
        nextNodeKey: 'end',
        bookTags: ['디스토피아', '미래', '생존', '비판'],
      ),
    ],
  ),
  'book_bored_7_2': QuestionNode(
    question: '지루함을 한 방에 날릴 자극이 필요하군요. 한순간도 눈을 뗄 수 없는 이야기들입니다.',
    options: [
      Option(
        text: '반전의 연속 미스터리',
        nextNodeKey: 'end',
        bookTags: ['추리', '미스터리', '반전', '몰입'],
      ),
      Option(
        text: '속도감 넘치는 스릴러',
        nextNodeKey: 'end',
        bookTags: ['스릴러', '긴장', '범죄', '속도'],
      ),
      Option(
        text: '유쾌한 코미디 소설',
        nextNodeKey: 'end',
        bookTags: ['유머', '유쾌', '경쾌', '웃음'],
      ),
      Option(
        text: '가슴 뛰는 스파이 액션',
        nextNodeKey: 'end',
        bookTags: ['액션', '첩보', '모험', '긴장'],
      ),
      Option(
        text: '기발한 설정의 단편선',
        nextNodeKey: 'end',
        bookTags: ['상상', '짧은글', '기발', '재미'],
      ),
    ],
  ),
  'book_bored_7_3': QuestionNode(
    question: '뇌를 깨우는 신선한 지식과 지적인 유희를 통해 심심함을 달래보세요.',
    options: [
      Option(
        text: '흥미로운 뇌과학 이야기',
        nextNodeKey: 'end',
        bookTags: ['뇌과학', '지식', '정보', '호기심'],
      ),
      Option(
        text: '세상의 비밀을 푸는 수학',
        nextNodeKey: 'end',
        bookTags: ['수학', '교양', '탐구', '명쾌'],
      ),
      Option(
        text: '알아두면 좋은 잡학사전',
        nextNodeKey: 'end',
        bookTags: ['잡학', '상식', '다양', '흥미'],
      ),
      Option(
        text: '인류의 역사를 바꾼 도구',
        nextNodeKey: 'end',
        bookTags: ['역사', '인류', '발견', '지적'],
      ),
      Option(
        text: '미래를 예측하는 기술서',
        nextNodeKey: 'end',
        bookTags: ['IT', '미래', '전망', '분석'],
      ),
    ],
  ),
  'book_bored_7_4': QuestionNode(
    question: '부담 없이 스르륵 읽히는 게 최고죠. 편안하게 웃으며 시간 보내기 좋은 책들입니다.',
    options: [
      Option(
        text: '달달한 로맨틱 코미디',
        nextNodeKey: 'end',
        bookTags: ['로맨스', '달콤', '가벼운', '설렘'],
      ),
      Option(
        text: '공감 100% 일상 웹툰',
        nextNodeKey: 'end',
        bookTags: ['만화', '일상', '공감', '유머'],
      ),
      Option(
        text: '짧고 위트 있는 산문집',
        nextNodeKey: 'end',
        bookTags: ['에세이', '위트', '짧은글', '경쾌'],
      ),
      Option(
        text: '귀여운 동물이 나오는 책',
        nextNodeKey: 'end',
        bookTags: ['동물', '힐링', '포근', '귀여운'],
      ),
      Option(
        text: '가볍게 읽는 여행기',
        nextNodeKey: 'end',
        bookTags: ['여행', '풍경', '여유', '대리만족'],
      ),
    ],
  ),
  'book_bored_7_5': QuestionNode(
    question: '글자보다 이미지가 끌리는 순간이죠. 눈이 즐거워지는 감각적인 구성의 책들입니다.',
    options: [
      Option(
        text: '강렬한 색채의 화집',
        nextNodeKey: 'end',
        bookTags: ['미술', '화집', '색채', '감각'],
      ),
      Option(
        text: '힙한 감성의 매거진',
        nextNodeKey: 'end',
        bookTags: ['잡지', '트렌드', '디자인', '세련'],
      ),
      Option(
        text: '몽환적인 일러스트 북',
        nextNodeKey: 'end',
        bookTags: ['그림', '일러스트', '신비', '포근'],
      ),
      Option(
        text: '세상의 아름다운 풍경 사진',
        nextNodeKey: 'end',
        bookTags: ['사진', '풍경', '여행', '시각'],
      ),
      Option(
        text: '독특한 디자인의 팝업북',
        nextNodeKey: 'end',
        bookTags: ['입체', '디자인', '놀이', '흥미'],
      ),
    ],
  ),
  'book_bored_7_6': QuestionNode(
    question: '심심함을 넘어 존재를 고민하고 있군요. 삶의 본질을 꿰뚫는 묵직한 문장을 제안합니다.',
    options: [
      Option(
        text: '시대를 초월한 고전 소설',
        nextNodeKey: 'end',
        bookTags: ['고전', '인간', '본질', '성찰'],
      ),
      Option(
        text: '고독을 예찬하는 철학서',
        nextNodeKey: 'end',
        bookTags: ['철학', '고독', '사색', '인문'],
      ),
      Option(
        text: '인생의 허무를 다룬 문학',
        nextNodeKey: 'end',
        bookTags: ['문학', '허무', '심층', '탐구'],
      ),
      Option(
        text: '침묵의 가치를 일깨우는 책',
        nextNodeKey: 'end',
        bookTags: ['침묵', '명상', '고요', '내면'],
      ),
      Option(
        text: '지혜가 담긴 동양 고전',
        nextNodeKey: 'end',
        bookTags: ['지혜', '동양', '안정', '중용'],
      ),
    ],
  ),
  'book_bored_7_7': QuestionNode(
    question: '세계관도 중요하지만 재미도 놓칠 수 없죠. 모험과 유머가 황금비율로 섞인 이야기입니다.',
    options: [
      Option(
        text: '병맛 코드가 섞인 판타지',
        nextNodeKey: 'end',
        bookTags: ['판타지', '유머', '병맛', '기발'],
      ),
      Option(
        text: '재치 있는 입담의 추리물',
        nextNodeKey: 'end',
        bookTags: ['추리', '위트', '재미', '사건'],
      ),
      Option(
        text: '유쾌한 모험가의 일기',
        nextNodeKey: 'end',
        bookTags: ['모험', '유쾌', '실화', '활기'],
      ),
      Option(
        text: '엉뚱한 상상이 가득한 SF',
        nextNodeKey: 'end',
        bookTags: ['SF', '상상', '유머', '독특'],
      ),
      Option(
        text: '만담 같은 티키타카 소설',
        nextNodeKey: 'end',
        bookTags: ['대화', '재미', '캐릭터', '경쾌'],
      ),
    ],
  ),
  'book_bored_7_8': QuestionNode(
    question: '세상의 가려진 이면과 진실이 궁금한 당신에게, 지적 호기심을 자극하는 흥미진진한 기록을 제안합니다.',
    options: [
      Option(
        text: '세계사를 뒤흔든 거대한 음모론',
        nextNodeKey: 'end',
        bookTags: ['음모론', '역사', '비밀', '미스터리'],
      ),
      Option(
        text: '현대 사회의 그림자, 그림자 정부',
        nextNodeKey: 'end',
        bookTags: ['정치', '음모론', '사회', '폭로'],
      ),
      Option(
        text: '미해결 사건으로 본 미스터리',
        nextNodeKey: 'end',
        bookTags: ['사건', '미스터리', '추리', '실화'],
      ),
      Option(
        text: '과학이 설명하지 못한 초자연 현상',
        nextNodeKey: 'end',
        bookTags: ['과학', '미스터리', '초자연', '호기심'],
      ),
      Option(
        text: '사라진 문명과 외계인 음모론',
        nextNodeKey: 'end',
        bookTags: ['고대', '외계인', '음모론', '미지'],
      ),
    ],
  ),
  'book_bored_7_9': QuestionNode(
    question: '읽는 것만으로 부족하다면 직접 움직여볼까요? 손끝으로 심심함을 털어내는 책입니다.',
    options: [
      Option(
        text: '따라 그리는 드로잉 북',
        nextNodeKey: 'end',
        bookTags: ['그림', '실기', '체험', '몰입'],
      ),
      Option(
        text: '뇌가 젊어지는 퀴즈/퍼즐',
        nextNodeKey: 'end',
        bookTags: ['퀴즈', '퍼즐', '놀이', '두뇌'],
      ),
      Option(
        text: '종이접기나 프라모델 가이드',
        nextNodeKey: 'end',
        bookTags: ['만들기', '손재주', '집중', '취미'],
      ),
      Option(
        text: '직접 채우는 Q&A 다이어리',
        nextNodeKey: 'end',
        bookTags: ['기록', '질문', '나', '발견'],
      ),
      Option(
        text: '집에서 즐기는 홈베이킹 북',
        nextNodeKey: 'end',
        bookTags: ['요리', '베이킹', '실용', '성취'],
      ),
    ],
  ),
  'book_bored_7_10': QuestionNode(
    question: '현실의 감각을 잊고 싶군요. 밥 먹는 것도 잊게 할 만큼 압도적인 흡입력의 소설들을 제안합니다.',
    options: [
      Option(
        text: '결말까지 멈출 수 없는 스릴러',
        nextNodeKey: 'end',
        bookTags: ['스릴러', '흡입력', '몰입', '긴장'],
      ),
      Option(
        text: '밤새워 읽는 장르 소설',
        nextNodeKey: 'end',
        bookTags: ['장르', '재미', '밤샘', '몰입'],
      ),
      Option(
        text: '몰입감 최고조의 그래픽노블',
        nextNodeKey: 'end',
        bookTags: ['만화', '예술', '강렬', '서사'],
      ),
      Option(
        text: '다음 권이 절실한 시리즈물',
        nextNodeKey: 'end',
        bookTags: ['시리즈', '연속', '정주행', '팬덤'],
      ),
      Option(
        text: '실화보다 더 극적인 논픽션',
        nextNodeKey: 'end',
        bookTags: ['실화', '드라마', '충격', '사실'],
      ),
    ],
  ),
};
