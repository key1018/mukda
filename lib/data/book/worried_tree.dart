import '../../question_tree.dart';

final Map<String, QuestionNode> bookWorriedTree = {
  // ==================== depth 2: 상황/맥락 ====================
  'book_worried_2_1': QuestionNode(
    question: '이 고민이 가장 무겁게 느껴지는 순간은 언제인가요?',
    options: [
      Option(text: '선택의 기로에 서 있을 때', nextNodeKey: 'book_worried_3_1'),
      Option(text: '혼자 생각에 잠길 때', nextNodeKey: 'book_worried_3_2'),
      Option(text: '결정을 내려야 할 때', nextNodeKey: 'book_worried_3_3'),
      Option(text: '밤에 잠들기 전', nextNodeKey: 'book_worried_3_4'),
      Option(text: '하루 종일', nextNodeKey: 'book_worried_3_5'),
    ],
  ),

  // ==================== depth 3: 내적 독백 ====================
  'book_worried_3_1': QuestionNode(
    question: '선택의 갈림길에서 마음은 어떤 말을 내뱉나요?',
    options: [
      Option(text: '"어느 쪽이 옳은 길인지 모르겠어"', nextNodeKey: 'book_worried_4_3'),
      Option(
        text: '"내 선택이 틀려서 후회하게 될까 봐 두려워"',
        nextNodeKey: 'book_worried_4_5',
      ),
      Option(text: '"모든 선택에는 대가가 따른다는 게 무거워"', nextNodeKey: 'book_worried_4_1'),
      Option(text: '"누군가 정답을 알려줬으면 좋겠어"', nextNodeKey: 'book_worried_4_2'),
      Option(text: '"답을 찾을 수 있을 거라는 확신이 없어"', nextNodeKey: 'book_worried_4_4'),
    ],
  ),
  'book_worried_3_2': QuestionNode(
    question: '혼자만의 생각 속에서 당신을 괴롭히는 목소리는 무엇인가요?',
    options: [
      Option(text: '"머릿속이 엉킨 실타래처럼 복잡해"', nextNodeKey: 'book_worried_4_4'),
      Option(
        text: '"생각을 하면 할수록 답에서 멀어지는 기분이야"',
        nextNodeKey: 'book_worried_4_1',
      ),
      Option(text: '"이 고민의 굴레에서 그만 벗어나고 싶어"', nextNodeKey: 'book_worried_4_5'),
      Option(text: '"나만 이렇게 유난히 고민이 많은 걸까"', nextNodeKey: 'book_worried_4_2'),
      Option(text: '"아무에게도 털어놓지 못한 짐이 너무 커"', nextNodeKey: 'book_worried_4_3'),
    ],
  ),
  'book_worried_3_3': QuestionNode(
    question: '결단을 내려야 하는 찰나, 어떤 두려움이 앞서나요?',
    options: [
      Option(text: '"지금 당장 결정하기엔 정보가 너무 부족해"', nextNodeKey: 'book_worried_4_2'),
      Option(
        text: '"내 결정이 가져올 후폭풍을 감당할 수 있을까"',
        nextNodeKey: 'book_worried_4_4',
      ),
      Option(
        text: '"조금 더 시간을 두면 더 나은 답이 나올까"',
        nextNodeKey: 'book_worried_4_1',
      ),
      Option(
        text: '"확신이 없는 상태에서 등 떠밀리는 기분이야"',
        nextNodeKey: 'book_worried_4_3',
      ),
      Option(text: '"포기해야 하는 것들에 자꾸 미련이 남아"', nextNodeKey: 'book_worried_4_5'),
    ],
  ),
  'book_worried_3_4': QuestionNode(
    question: '고요한 밤, 잠자리를 뒤척이게 만드는 생각은 무엇인가요?',
    options: [
      Option(text: '"내일이 되면 정말 무언가 달라질까"', nextNodeKey: 'book_worried_4_5'),
      Option(text: '"낮에는 잊고 있던 불안이 밤이면 커져"', nextNodeKey: 'book_worried_4_2'),
      Option(text: '"어제와 똑같은 고민을 또 반복하고 있어"', nextNodeKey: 'book_worried_4_3'),
      Option(
        text: '"생각의 꼬리가 꼬리를 물어 잠들 수가 없어"',
        nextNodeKey: 'book_worried_4_1',
      ),
      Option(text: '"가슴 한구석이 꽉 막힌 듯 무거워"', nextNodeKey: 'book_worried_4_4'),
    ],
  ),
  'book_worried_3_5': QuestionNode(
    question: '온종일 당신을 따라다니는 고민의 그림자는 어떤가요?',
    options: [
      Option(
        text: '"다른 일을 해도 고민이 머릿속을 떠나지 않아"',
        nextNodeKey: 'book_worried_4_1',
      ),
      Option(text: '"언제부터 이렇게 시작됐는지 기억도 안 나"', nextNodeKey: 'book_worried_4_3'),
      Option(text: '"이제는 고민하는 것 자체가 너무 지쳐"', nextNodeKey: 'book_worried_4_5'),
      Option(text: '"내가 너무 예민하게 받아들이는 걸까"', nextNodeKey: 'book_worried_4_2'),
      Option(text: '"그냥 다 내려놓고 어디론가 사라지고 싶어"', nextNodeKey: 'book_worried_4_4'),
    ],
  ),

  // ==================== depth 4: 물리적 질감 ====================
  'book_worried_4_1': QuestionNode(
    question: '그 고민이 당신의 내면에 어떤 형상을 그리나요?',
    options: [
      Option(text: '바닥으로 가라앉는 묵직한 돌덩이', nextNodeKey: 'book_worried_5_3'),
      Option(text: '출구가 보이지 않는 복잡한 미로', nextNodeKey: 'book_worried_5_5'),
      Option(text: '형체 없이 떠다니는 축축한 안개', nextNodeKey: 'book_worried_5_1'),
      Option(text: '풀수록 팽팽하게 조여오는 매듭', nextNodeKey: 'book_worried_5_4'),
      Option(text: '끝을 알 수 없는 무수한 물음표', nextNodeKey: 'book_worried_5_2'),
    ],
  ),
  'book_worried_4_2': QuestionNode(
    question: '지금 당신이 느끼는 고민의 온도는 어떤가요?',
    options: [
      Option(text: '머리가 터질 듯 과열된 뜨거움', nextNodeKey: 'book_worried_5_4'),
      Option(text: '심장을 서늘하게 만드는 차가운 냉기', nextNodeKey: 'book_worried_5_1'),
      Option(text: '식은땀이 흐르는 끈적하고 눅눅한 기운', nextNodeKey: 'book_worried_5_5'),
      Option(text: '생기 없이 미지근하고 정체된 공기', nextNodeKey: 'book_worried_5_2'),
      Option(text: '온도조차 느껴지지 않는 진공 상태', nextNodeKey: 'book_worried_5_3'),
    ],
  ),
  'book_worried_4_3': QuestionNode(
    question: '그 고민이 당신의 삶을 어떤 빛깔로 물들이고 있나요?',
    options: [
      Option(text: '속을 알 수 없는 짙은 심해의 파랑', nextNodeKey: 'book_worried_5_5'),
      Option(text: '탁하고 무겁게 가라앉은 잿빛 회색', nextNodeKey: 'book_worried_5_2'),
      Option(text: '금방이라도 비가 올 듯한 흐린 베이지', nextNodeKey: 'book_worried_5_3'),
      Option(text: '강렬하게 번지는 어두운 갈색', nextNodeKey: 'book_worried_5_1'),
      Option(text: '색채가 다 빠져나간 투명한 창백함', nextNodeKey: 'book_worried_5_4'),
    ],
  ),
  'book_worried_4_4': QuestionNode(
    question: '고민이 당신을 대하는 태도는 어떤가요?',
    options: [
      Option(text: '날카롭게 파고들어 나를 채근해요', nextNodeKey: 'book_worried_5_2'),
      Option(text: '거미줄처럼 나를 칭칭 감고 있어요', nextNodeKey: 'book_worried_5_4'),
      Option(text: '그림자처럼 말없이 나를 따라다녀요', nextNodeKey: 'book_worried_5_1'),
      Option(text: '멀리서 나를 조롱하듯 응시해요', nextNodeKey: 'book_worried_5_3'),
      Option(text: '내 모든 감각을 삼켜버리려 해요', nextNodeKey: 'book_worried_5_5'),
    ],
  ),
  'book_worried_4_5': QuestionNode(
    question: '지금 당신을 가장 힘들게 하는 고민의 성격은?',
    options: [
      Option(text: '해결되지 않는 딜레마의 반복', nextNodeKey: 'book_worried_5_1'),
      Option(text: '타인의 시선을 신경 쓰는 불안함', nextNodeKey: 'book_worried_5_3'),
      Option(text: '과거의 후회와 미래의 걱정 사이', nextNodeKey: 'book_worried_5_5'),
      Option(text: '나 자신의 능력을 의심하는 마음', nextNodeKey: 'book_worried_5_2'),
      Option(text: '선택 이후에 올 대가에 대한 부담', nextNodeKey: 'book_worried_5_4'),
    ],
  ),

  // ==================== depth 5: 욕구 파악 ====================
  'book_worried_5_1': QuestionNode(
    question: '이 엉킨 실타래를 어떻게 풀고 싶으신가요?',
    options: [
      Option(text: '명쾌한 논리로 정답을 규명하기', nextNodeKey: 'book_worried_6_1'),
      Option(text: '혼란스러운 생각을 질서 있게 정리하기', nextNodeKey: 'book_worried_6_2'),
      Option(text: '완전히 새로운 시각으로 돌파구 찾기', nextNodeKey: 'book_worried_6_3'),
      Option(text: '과부하 걸린 마음에 평온을 허락하기', nextNodeKey: 'book_worried_6_4'),
      Option(text: '의미를 찾기보다 잠시 거리를 두기', nextNodeKey: 'book_worried_6_5'),
    ],
  ),
  'book_worried_5_2': QuestionNode(
    question: '지금 당신의 복잡한 머릿속에 가장 필요한 처방은?',
    options: [
      Option(text: '결단을 내릴 수 있는 실전 노하우', nextNodeKey: 'book_worried_6_1'),
      Option(text: '창의적인 영감을 주는 낯선 자극', nextNodeKey: 'book_worried_6_3'),
      Option(text: '지친 멘탈을 회복시켜줄 따뜻한 위로', nextNodeKey: 'book_worried_6_4'),
      Option(text: '내 고민을 체계적으로 시각화하는 법', nextNodeKey: 'book_worried_6_2'),
      Option(text: '활자조차 읽기 싫은 날을 위한 안식', nextNodeKey: 'book_worried_6_5'),
    ],
  ),
  'book_worried_5_3': QuestionNode(
    question: '지금 당신이 감당할 수 있는 이야기의 깊이는?',
    options: [
      Option(text: '삶의 가치를 관통하는 묵직한 지혜', nextNodeKey: 'book_worried_6_1'),
      Option(text: '마음의 짐을 덜어주는 다정한 산문', nextNodeKey: 'book_worried_6_4'),
      Option(text: '생각을 명료하게 만들어줄 실용 가이드', nextNodeKey: 'book_worried_6_2'),
      Option(text: '몰입을 통해 잡념을 지워줄 서사', nextNodeKey: 'book_worried_6_3'),
      Option(text: '설명이 필요 없는 평온한 이미지', nextNodeKey: 'book_worried_6_5'),
    ],
  ),
  'book_worried_5_4': QuestionNode(
    question: '이 고민을 마주하는 당신의 태도는 어느 쪽인가요?',
    options: [
      Option(text: '일단 마음을 안정시킨 뒤 생각할래요', nextNodeKey: 'book_worried_6_4'),
      Option(text: '치열하게 파고들어 결론을 낼래요', nextNodeKey: 'book_worried_6_1'),
      Option(text: '차근차근 정리하며 맥락을 파악할래요', nextNodeKey: 'book_worried_6_2'),
      Option(text: '생각 자체를 멈추고 쉬고 싶어요', nextNodeKey: 'book_worried_6_5'),
      Option(text: '다르게 생각하며 의외의 답을 찾을래요', nextNodeKey: 'book_worried_6_3'),
    ],
  ),
  'book_worried_5_5': QuestionNode(
    question: '당신의 영혼이 지금 가장 바라는 돌파구는 어디인가요?',
    options: [
      Option(text: '영감이 샘솟는 낯선 도시의 거리', nextNodeKey: 'book_worried_6_3'),
      Option(text: '진실을 직면하게 하는 이성의 도서관', nextNodeKey: 'book_worried_6_1'),
      Option(text: '질서를 찾아주는 정갈한 작업실', nextNodeKey: 'book_worried_6_2'),
      Option(text: '언어 너머의 평화가 있는 갤러리', nextNodeKey: 'book_worried_6_5'),
      Option(text: '비가 그치지 않는 고요한 안식처', nextNodeKey: 'book_worried_6_4'),
    ],
  ),

  // ==================== depth 6: 요약 및 1:1 매칭 분기 ====================
  'book_worried_6_1': QuestionNode(
    question: '고민 속에서 명확한 정답을 찾아 결단을 내리고 앞으로 나아가고 싶은 상태군요.',
    options: [
      Option(text: '결정의 지혜를 담은 인문학이요', nextNodeKey: 'book_worried_7_1'),
      Option(text: '이 고민의 뿌리를 예리하게 분석해볼래요', nextNodeKey: 'book_worried_7_6'),
      Option(text: '결단과 정돈을 동시에 돕는 가이드가 좋아요', nextNodeKey: 'book_worried_7_7'),
      Option(text: '기분 전환을 위한 유쾌한 소설이요', nextNodeKey: 'book_worried_7_8'),
      Option(text: '결단을 돕는 구체적인 도구를 원해요', nextNodeKey: 'book_worried_7_9'),
    ],
  ),
  'book_worried_6_2': QuestionNode(
    question: '복잡한 생각들을 체계적으로 풀어내어 마음의 명료함을 찾고 싶은 상태군요.',
    options: [
      Option(text: '사고의 질서를 잡아주는 정리법이요', nextNodeKey: 'book_worried_7_2'),
      Option(text: '정리와 해결을 한 번에 하고 싶어요', nextNodeKey: 'book_worried_7_7'),
      Option(text: '정리된 마음으로 삶의 맥락을 짚어볼래요', nextNodeKey: 'book_worried_7_6'),
      Option(text: '생각을 비워주는 정갈한 문장들이요', nextNodeKey: 'book_worried_7_5'),
      Option(text: '직접 쓰며 머릿속을 비워낼래요', nextNodeKey: 'book_worried_7_9'),
    ],
  ),
  'book_worried_6_3': QuestionNode(
    question: '기존의 틀에서 벗어나 새로운 시각과 영감을 통해 돌파구를 찾고 싶은 상태군요.',
    options: [
      Option(text: '창의적 발상을 돕는 문제해결법이요', nextNodeKey: 'book_worried_7_3'),
      Option(text: '예술에서 배우는 독창적 통찰이요', nextNodeKey: 'book_worried_7_6'),
      Option(text: '시각을 확장하는 신선한 소설을 볼래요', nextNodeKey: 'book_worried_7_8'),
      Option(text: '해답을 발견하는 예술적 기록이요', nextNodeKey: 'book_worried_7_10'),
      Option(text: '일상의 루틴을 새롭게 설계할래요', nextNodeKey: 'book_worried_7_9'),
    ],
  ),
  'book_worried_6_4': QuestionNode(
    question: '고민에 지쳐 무거운 생각을 잠시 내려놓고 평온을 먼저 되찾고 싶은 상태군요.',
    options: [
      Option(text: '마음의 짐을 덜어주는 에세이를 읽을래요', nextNodeKey: 'book_worried_7_4'),
      Option(text: '평온을 유지하는 뇌 휴식법이 궁금해요', nextNodeKey: 'book_worried_7_10'),
      Option(text: '부담 없이 웃으며 기분 전환할래요', nextNodeKey: 'book_worried_7_8'),
      Option(text: '소유만으로 위안이 되는 책을 볼래요', nextNodeKey: 'book_worried_7_5'),
      Option(text: '내 고민을 다정하게 들어줄 입문서요', nextNodeKey: 'book_worried_7_9'),
    ],
  ),
  'book_worried_6_5': QuestionNode(
    question: '고민이 너무 깊어 무엇이 필요한지조차 알기 힘든, 안식이 절실한 상태군요.',
    options: [
      Option(text: '한 문장씩 아껴 읽는 짧은 지혜요', nextNodeKey: 'book_worried_7_5'),
      Option(text: '복잡한 의미를 걷어낸 감각적 쉼이요', nextNodeKey: 'book_worried_7_10'),
      Option(text: '고민을 예술로 승화한 작품을 볼래요', nextNodeKey: 'book_worried_7_6'),
      Option(text: '아무 생각 없이 필사하며 비워낼래요', nextNodeKey: 'book_worried_7_9'),
      Option(text: '따뜻한 온기를 전하는 짧은 글을 볼래요', nextNodeKey: 'book_worried_7_4'),
    ],
  ),

  // ==================== depth 7: 최종 결과 (장르 다양화) ====================
  'book_worried_7_1': QuestionNode(
    question: '고민 속에서 명확한 정답을 찾고 결단력을 얻고 싶은 당신에게 묵직한 문장을 제안합니다.',
    options: [
      Option(
        text: '결정에 대한 실존적 지혜의 철학',
        nextNodeKey: 'end',
        bookTags: ['결정', '지혜', '실존', '통찰'],
      ),
      Option(
        text: '선택의 심리학, 프레임의 경제학',
        nextNodeKey: 'end',
        bookTags: ['선택', '심리', '경제', '분석'],
      ),
      Option(
        text: '갈림길에 선 주인공의 대서사 소설',
        nextNodeKey: 'end',
        bookTags: ['갈림길', '선택', '서사', '문학'],
      ),
      Option(
        text: '세상을 바꾼 결단의 순간들 기록',
        nextNodeKey: 'end',
        bookTags: ['결단', '실화', '리더십', '용기'],
      ),
      Option(
        text: '본질을 꿰뚫는 명쾌한 철학 에세이',
        nextNodeKey: 'end',
        bookTags: ['철학', '의미', '명료', '인문'],
      ),
    ],
  ),
  'book_worried_7_2': QuestionNode(
    question: '복잡한 생각을 정돈하고 머릿속에 질서를 세워줄 정갈한 도구들을 제안합니다.',
    options: [
      Option(
        text: '체계적인 사고 정리를 돕는 가이드',
        nextNodeKey: 'end',
        bookTags: ['정리', '사고', '방법', '명료'],
      ),
      Option(
        text: '생각을 시각화하는 마인드맵 실전',
        nextNodeKey: 'end',
        bookTags: ['마인드맵', '시각', '정리', '실용'],
      ),
      Option(
        text: '논리적 글쓰기를 통한 마음 정돈',
        nextNodeKey: 'end',
        bookTags: ['글쓰기', '정리', '논리', '사고'],
      ),
      Option(
        text: '단순한 삶을 위한 뇌의 미니멀리즘',
        nextNodeKey: 'end',
        bookTags: ['심리', '단순', '비움', '안정'],
      ),
      Option(
        text: '사고의 흐름을 다듬는 인문학적 정리',
        nextNodeKey: 'end',
        bookTags: ['인문', '정리', '흐름', '체계'],
      ),
    ],
  ),
  'book_worried_7_3': QuestionNode(
    question: '고민을 완전히 다르게 바라보게 해줄 신선하고 창의적인 돌파구를 제안합니다.',
    options: [
      Option(
        text: '창의적 문제 해결 기법의 정수',
        nextNodeKey: 'end',
        bookTags: ['창의', '문제해결', '혁신', '아이디어'],
      ),
      Option(
        text: '고정관념을 깨는 역발상 사고법',
        nextNodeKey: 'end',
        bookTags: ['역발상', '사고', '창의', '전환'],
      ),
      Option(
        text: '다양한 삶의 방식을 담은 인류학 기록',
        nextNodeKey: 'end',
        bookTags: ['다양', '삶', '인류', '영감'],
      ),
      Option(
        text: '새로운 시각을 열어주는 실험적 소설',
        nextNodeKey: 'end',
        bookTags: ['시각', '소설', '문학', '충격'],
      ),
      Option(
        text: '예술가들의 독창적인 발상 노트',
        nextNodeKey: 'end',
        bookTags: ['예술', '창의', '영감', '표현'],
      ),
    ],
  ),
  'book_worried_7_4': QuestionNode(
    question: '어떤 조건 없이 당신을 안아줄 따뜻하고 안전한 마음의 안식처들을 골랐습니다.',
    options: [
      Option(
        text: '지친 멘탈을 보듬는 심리 치유 에세이',
        nextNodeKey: 'end',
        bookTags: ['치유', '에세이', '위로', '다정'],
      ),
      Option(
        text: '전문가와 함께하는 셀프 심리 상담',
        nextNodeKey: 'end',
        bookTags: ['상담', '심리', '전문', '회복'],
      ),
      Option(
        text: '마음의 여유를 되찾아주는 짧은 산문',
        nextNodeKey: 'end',
        bookTags: ['여유', '산문', '편안', '휴식'],
      ),
      Option(
        text: '스트레스 관리를 위한 마음 챙김 북',
        nextNodeKey: 'end',
        bookTags: ['스트레스', '관리', '실용', '평온'],
      ),
      Option(
        text: '포근한 위로가 느껴지는 힐링 소설',
        nextNodeKey: 'end',
        bookTags: ['힐링', '따뜻', '소설', '포근'],
      ),
    ],
  ),
  'book_worried_7_5': QuestionNode(
    question: '글자조차 버거운 당신을 위해, 소유하는 것만으로 정서적 안정과 안도감을 주는 책들입니다.',
    options: [
      Option(
        text: '한 문장씩 아껴 읽는 짧은 명언집',
        nextNodeKey: 'end',
        bookTags: ['짧음', '명언', '안정', '울림'],
      ),
      Option(
        text: '존재만으로 안심이 되는 클래식 소장본',
        nextNodeKey: 'end',
        bookTags: ['소장', '물성', '안도', '편안'],
      ),
      Option(
        text: '여백이 주는 평화, 미니멀 디자인북',
        nextNodeKey: 'end',
        bookTags: ['디자인', '여백', '시각', '정돈'],
      ),
      Option(
        text: '정갈한 문체로 채운 짧은 단상집',
        nextNodeKey: 'end',
        bookTags: ['단상', '짧은글', '편안', '부담'],
      ),
      Option(
        text: '오래된 지혜가 담긴 작은 판형의 책',
        nextNodeKey: 'end',
        bookTags: ['지혜', '고전', '휴대', '안심'],
      ),
    ],
  ),
  'book_worried_7_6': QuestionNode(
    question: '고민의 입체적인 면모를 탐구하며 새로운 시각을 조명하는 인문적 제안입니다.',
    options: [
      Option(
        text: '고민의 역사를 훑는 인문학적 고찰',
        nextNodeKey: 'end',
        bookTags: ['역사', '문화', '인문', '분석'],
      ),
      Option(
        text: '불확실성을 예술로 승화시킨 작품들',
        nextNodeKey: 'end',
        bookTags: ['예술', '표현', '창작', '감성'],
      ),
      Option(
        text: '고민을 정면으로 응시하는 현대 소설',
        nextNodeKey: 'end',
        bookTags: ['소설', '문학', '깊은', '인간'],
      ),
      Option(
        text: '사회적 갈등의 맥락을 짚는 비평서',
        nextNodeKey: 'end',
        bookTags: ['사회', '비평', '맥락', '이해'],
      ),
      Option(
        text: '고뇌를 창조의 원천으로 바꾼 기록들',
        nextNodeKey: 'end',
        bookTags: ['창의', '고뇌', '기록', '성찰'],
      ),
    ],
  ),
  'book_worried_7_7': QuestionNode(
    question: '해결과 정리 사이에서 균형을 잡고 싶은 당신을 위한 스마트한 가이드입니다.',
    options: [
      Option(
        text: '이론과 실천을 아우르는 해결 안내서',
        nextNodeKey: 'end',
        bookTags: ['통합', '원인', '해결', '가이드'],
      ),
      Option(
        text: '고민의 본질을 쉽고 명쾌하게 풀어낸 책',
        nextNodeKey: 'end',
        bookTags: ['본질', '가벼움', '접근', '탐구'],
      ),
      Option(
        text: '풍부한 사례가 담긴 딜레마 처방전',
        nextNodeKey: 'end',
        bookTags: ['사례', '심리', '이해', '다양'],
      ),
      Option(
        text: '전략적 사고와 명상이 어우러진 책',
        nextNodeKey: 'end',
        bookTags: ['전략', '명상', '조화', '안정'],
      ),
      Option(
        text: '현명한 결정을 돕는 비즈니스 인문학',
        nextNodeKey: 'end',
        bookTags: ['비즈니스', '인문', '결정', '실용'],
      ),
    ],
  ),
  'book_worried_7_8': QuestionNode(
    question: '지금 당장 생각의 환기가 필요한 당신에게 선사하는 기분 좋은 웃음과 이야기들입니다.',
    options: [
      Option(
        text: '밤새워 읽는 치밀한 구성의 추리 소설',
        nextNodeKey: 'end',
        bookTags: ['추리', '몰입', '재미', '반전'],
      ),
      Option(
        text: '현실을 잊게 할 압도적 스케일의 SF',
        nextNodeKey: 'end',
        bookTags: ['SF', '우주', '상상', '탈출'],
      ),
      Option(
        text: '유머와 위트가 섞인 경쾌한 산문집',
        nextNodeKey: 'end',
        bookTags: ['유머', '위트', '경쾌', '산뜻'],
      ),
      Option(
        text: '속도감 넘치는 강렬한 그래픽 노블',
        nextNodeKey: 'end',
        bookTags: ['만화', '강렬', '서사', '몰입'],
      ),
      Option(
        text: '기분 좋은 웃음이 터지는 코미디 소설',
        nextNodeKey: 'end',
        bookTags: ['유머', '소설', '재미', '경쾌'],
      ),
    ],
  ),
  'book_worried_7_9': QuestionNode(
    question: '읽는 것보다 직접 기록하거나 실천하며 해답을 찾아가는 능동적 제안입니다.',
    options: [
      Option(
        text: '나의 고민을 쏟아내는 감정 워크북',
        nextNodeKey: 'end',
        bookTags: ['기록', '워크북', '실천', '치유'],
      ),
      Option(
        text: '결단을 돕는 체크리스트와 템플릿',
        nextNodeKey: 'end',
        bookTags: ['도구', '정리', '체크', '실용'],
      ),
      Option(
        text: '좋은 문장을 손끝으로 새기는 필사 노트',
        nextNodeKey: 'end',
        bookTags: ['필사', '기억', '안정', '몰입'],
      ),
      Option(
        text: '일상을 정리하고 새롭게 세우는 루틴',
        nextNodeKey: 'end',
        bookTags: ['루틴', '정리', '실용', '변화'],
      ),
      Option(
        text: '고민을 해결하는 친절한 입문 안내서',
        nextNodeKey: 'end',
        bookTags: ['입문', '기초', '방법', '이해'],
      ),
    ],
  ),
  'book_worried_7_10': QuestionNode(
    question: '나만의 방식으로 고민을 매만지고 안식을 발견하고 싶은 당신을 위한 독창적 제안입니다.',
    options: [
      Option(
        text: '취향이 담긴 세련된 라이프스타일 매거진',
        nextNodeKey: 'end',
        bookTags: ['잡지', '트렌드', '디자인', '세련'],
      ),
      Option(
        text: '창의적인 마음 접근법을 담은 아트 북',
        nextNodeKey: 'end',
        bookTags: ['예술', '창의', '표현', '감각'],
      ),
      Option(
        text: '나에게 꼭 맞는 안식처를 찾는 기술',
        nextNodeKey: 'end',
        bookTags: ['맞춤', '탐색', '공간', '안정'],
      ),
      Option(
        text: '해답을 발견하는 예술적 가능성의 기록',
        nextNodeKey: 'end',
        bookTags: ['예술', '가능성', '발견', '기록'],
      ),
      Option(
        text: '평온을 유지하는 뇌의 명상 가이드',
        nextNodeKey: 'end',
        bookTags: ['명상', '뇌과학', '안정', '실천'],
      ),
    ],
  ),
};
