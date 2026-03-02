import '../../question_tree.dart';

final Map<String, QuestionNode> bookSadTree = {
  // ==================== depth 2: 상황/맥락 ====================
  'book_sad_2_1': QuestionNode(
    question: '이 우울한 감정이 가장 또렷해지는 순간은 언제인가요?',
    options: [
      Option(text: '조용히 혼자 있을 때', nextNodeKey: 'book_sad_3_1'),
      Option(text: '밤이 깊어질 때', nextNodeKey: 'book_sad_3_2'),
      Option(text: '사람들 속에 있지만 혼자인 것 같을 때', nextNodeKey: 'book_sad_3_3'),
      Option(text: '과거의 기억이 떠오를 때', nextNodeKey: 'book_sad_3_4'),
      Option(text: '아무 이유 없이 문득', nextNodeKey: 'book_sad_3_5'),
    ],
  ),

  // ==================== depth 3: 내적 독백 ====================
  'book_sad_3_1': QuestionNode(
    question: '정적 속에서 당신을 파고드는 목소리는 무엇인가요?',
    options: [
      Option(text: '"나만 이렇게 깊은 늪에 빠진 걸까"', nextNodeKey: 'book_sad_4_3'),
      Option(text: '"아무도 나를 온전히 이해할 수 없어"', nextNodeKey: 'book_sad_4_5'),
      Option(text: '"이 어둠이 언제쯤 끝이 날까"', nextNodeKey: 'book_sad_4_1'),
      Option(text: '"나 자신조차 내가 낯설게 느껴져"', nextNodeKey: 'book_sad_4_2'),
      Option(text: '"그저 누구의 방해도 없이 가만히 있고 싶어"', nextNodeKey: 'book_sad_4_4'),
    ],
  ),
  'book_sad_3_2': QuestionNode(
    question: '깊어가는 밤, 당신의 마음은 어디에 머물러 있나요?',
    options: [
      Option(text: '"내일이 오는 게 두렵고 막막해"', nextNodeKey: 'book_sad_4_4'),
      Option(text: '"세상에 나만 남겨진 기분이야"', nextNodeKey: 'book_sad_4_1'),
      Option(text: '"의미 없는 하루가 또 지나가 버렸어"', nextNodeKey: 'book_sad_4_5'),
      Option(text: '"잠들지 못하는 이 고요함이 너무 무거워"', nextNodeKey: 'book_sad_4_2'),
      Option(text: '"차라리 이 밤이 영원히 끝나지 않았으면"', nextNodeKey: 'book_sad_4_3'),
    ],
  ),
  'book_sad_3_3': QuestionNode(
    question: '북적이는 사람들 속, 당신을 외롭게 만드는 생각은 무엇인가요?',
    options: [
      Option(text: '"모두가 행복해 보이는데 나만 가짜 같아"', nextNodeKey: 'book_sad_4_2'),
      Option(text: '"내 진짜 모습을 보이면 다들 떠나갈 거야"', nextNodeKey: 'book_sad_4_4'),
      Option(text: '"말을 섞을수록 더 깊은 허기가 느껴져"', nextNodeKey: 'book_sad_4_1'),
      Option(text: '"어디에도 내가 쉴 곳은 없는 것 같아"', nextNodeKey: 'book_sad_4_3'),
      Option(text: '"마음의 문을 아예 닫아버리고 싶어"', nextNodeKey: 'book_sad_4_5'),
    ],
  ),
  'book_sad_3_4': QuestionNode(
    question: '되살아나는 과거의 기억들이 당신에게 어떤 말을 거나요?',
    options: [
      Option(text: '"그때로 돌아갈 수 없다는 게 너무 아파"', nextNodeKey: 'book_sad_4_5'),
      Option(text: '"왜 그런 실수를 했을까, 자꾸 후회돼"', nextNodeKey: 'book_sad_4_2'),
      Option(text: '"사라진 것들에 대한 그리움이 나를 갉아먹어"', nextNodeKey: 'book_sad_4_3'),
      Option(text: '"이미 늦어버린 건 아닐까 하는 두려움"', nextNodeKey: 'book_sad_4_1'),
      Option(text: '"좋았던 시절이 오히려 지금을 더 비참하게 해"', nextNodeKey: 'book_sad_4_4'),
    ],
  ),
  'book_sad_3_5': QuestionNode(
    question: '이유 없이 밀려오는 우울은 어떤 파도를 닮았나요?',
    options: [
      Option(text: '"가슴 한복판에 커다란 구멍이 뚫린 기분"', nextNodeKey: 'book_sad_4_1'),
      Option(text: '"모든 감각이 무뎌지고 회색빛으로 변했어"', nextNodeKey: 'book_sad_4_3'),
      Option(text: '"에너지가 다 빠져나가 손끝 하나 까딱하기 싫어"', nextNodeKey: 'book_sad_4_5'),
      Option(text: '"내가 누군지, 뭘 원하는지조차 모르겠어"', nextNodeKey: 'book_sad_4_2'),
      Option(text: '"이 슬픔의 끝을 알 수가 없어"', nextNodeKey: 'book_sad_4_4'),
    ],
  ),

  // ==================== depth 4: 물리적 질감 ====================
  'book_sad_4_1': QuestionNode(
    question: '그 우울함은 당신의 내면에 어떤 자국을 남기나요?',
    options: [
      Option(text: '바닥이 보이지 않는 깊고 푸른 우물', nextNodeKey: 'book_sad_5_3'),
      Option(text: '앞이 보이지 않는 자욱한 회색 안개', nextNodeKey: 'book_sad_5_5'),
      Option(text: '심장을 짓누르는 차갑고 단단한 돌', nextNodeKey: 'book_sad_5_1'),
      Option(text: '끊임없이 흘러내리는 투명한 눈물', nextNodeKey: 'book_sad_5_4'),
      Option(text: '빛이 바래 먼지가 쌓인 낡은 방', nextNodeKey: 'book_sad_5_2'),
    ],
  ),
  'book_sad_4_2': QuestionNode(
    question: '지금 당신이 느끼는 슬픔의 온도는 어떤가요?',
    options: [
      Option(text: '뼛속까지 시린 얼어붙은 냉기', nextNodeKey: 'book_sad_5_4'),
      Option(text: '생기 없이 미지근하고 눅눅한 기운', nextNodeKey: 'book_sad_5_1'),
      Option(text: '모든 것을 태워버리고 남은 재의 온기', nextNodeKey: 'book_sad_5_5'),
      Option(text: '비에 젖은 흙처럼 무겁고 차가운 온도', nextNodeKey: 'book_sad_5_2'),
      Option(text: '온도조차 느껴지지 않는 진공 상태', nextNodeKey: 'book_sad_5_3'),
    ],
  ),
  'book_sad_4_3': QuestionNode(
    question: '우울함이 당신의 일상을 어떤 질감으로 채우고 있나요?',
    options: [
      Option(text: '젖은 솜처럼 몸을 무겁게 늘어뜨리는 무게', nextNodeKey: 'book_sad_5_5'),
      Option(text: '피부를 따갑게 찌르는 날카로운 가시', nextNodeKey: 'book_sad_5_2'),
      Option(text: '손에 잡히지 않고 빠져나가는 모래알', nextNodeKey: 'book_sad_5_3'),
      Option(text: '숨을 쉴수록 가슴이 답답해지는 압박감', nextNodeKey: 'book_sad_5_1'),
      Option(text: '모든 자극이 흐릿하게 뭉개지는 둔탁함', nextNodeKey: 'book_sad_5_4'),
    ],
  ),
  'book_sad_4_4': QuestionNode(
    question: '지금 당신의 상태를 하나의 풍경으로 표현한다면?',
    options: [
      Option(text: '비가 그치지 않는 고요한 숲', nextNodeKey: 'book_sad_5_2'),
      Option(text: '아무도 찾지 않는 황량한 겨울 바다', nextNodeKey: 'book_sad_5_4'),
      Option(text: '출구가 보이지 않는 어두운 터널', nextNodeKey: 'book_sad_5_1'),
      Option(text: '가로등 하나 없는 자정의 골목길', nextNodeKey: 'book_sad_5_3'),
      Option(text: '텅 빈 객석에 혼자 앉아있는 극장', nextNodeKey: 'book_sad_5_5'),
    ],
  ),
  'book_sad_4_5': QuestionNode(
    question: '슬픔이 당신을 대하는 태도는 어떤가요?',
    options: [
      Option(text: '그림자처럼 말없이 나를 따라다녀요', nextNodeKey: 'book_sad_5_1'),
      Option(text: '거센 파도처럼 나를 집어삼키려 해요', nextNodeKey: 'book_sad_5_3'),
      Option(text: '오래된 친구처럼 내 곁을 지키고 있어요', nextNodeKey: 'book_sad_5_5'),
      Option(text: '낯선 이방인처럼 나를 차갑게 응시해요', nextNodeKey: 'book_sad_5_2'),
      Option(text: '심장 깊숙이 뿌리를 내리고 자라나요', nextNodeKey: 'book_sad_5_4'),
    ],
  ),

  // ==================== depth 5: 욕구·부담 정도 ====================
  'book_sad_5_1': QuestionNode(
    question: '이 깊은 슬픔의 끝에서 무엇을 발견하고 싶나요?',
    options: [
      Option(text: '슬픔과 함께 고요히 머무는 법', nextNodeKey: 'book_sad_6_3'),
      Option(text: '어떤 요구도 없는 다정한 안식', nextNodeKey: 'book_sad_6_4'),
      Option(text: '의미를 찾기보다 그저 존재하기', nextNodeKey: 'book_sad_6_5'),
      Option(text: '우울의 본질을 파고드는 날카로운 통찰', nextNodeKey: 'book_sad_6_1'),
      Option(text: '나와 닮은 상처를 가진 이의 고백', nextNodeKey: 'book_sad_6_2'),
    ],
  ),
  'book_sad_5_2': QuestionNode(
    question: '지금 당신의 마음이 감당할 수 있는 문장의 온도는?',
    options: [
      Option(text: '체온이 전해지는 뜨거운 위로', nextNodeKey: 'book_sad_6_2'),
      Option(text: '활자조차 필요 없는 순수한 시각적 평온', nextNodeKey: 'book_sad_6_5'),
      Option(text: '언제든 기댈 수 있는 가벼운 쉼표', nextNodeKey: 'book_sad_6_4'),
      Option(text: '삶의 가치를 관통하는 묵직한 지혜', nextNodeKey: 'book_sad_6_1'),
      Option(text: '비어있는 마음을 채워줄 서정적인 시', nextNodeKey: 'book_sad_6_3'),
    ],
  ),
  'book_sad_5_3': QuestionNode(
    question: '어떤 이야기가 지금 당신의 숨구멍이 되어줄까요?',
    options: [
      Option(text: '욕심을 내려놓는 비움의 사유', nextNodeKey: 'book_sad_6_3'),
      Option(text: '포근한 위로가 섞인 일상 에세이', nextNodeKey: 'book_sad_6_4'),
      Option(text: '말 없이 나를 지켜봐 줄 그림과 사진', nextNodeKey: 'book_sad_6_5'),
      Option(text: '나의 아픔을 객관적으로 조명하는 인문학', nextNodeKey: 'book_sad_6_1'),
      Option(text: '슬픔을 예술로 승화시킨 서사 소설', nextNodeKey: 'book_sad_6_2'),
    ],
  ),
  'book_sad_5_4': QuestionNode(
    question: '지금 이 침잠하는 에너지를 어떻게 쓰고 싶으신가요?',
    options: [
      Option(text: '비슷한 고독을 겪은 이들과 연대하기', nextNodeKey: 'book_sad_6_2'),
      Option(text: '아무것도 하지 않고 감각에만 몰입하기', nextNodeKey: 'book_sad_6_5'),
      Option(text: '현실의 무게를 털어내고 환기하기', nextNodeKey: 'book_sad_6_4'),
      Option(text: '슬픔의 실체를 지적으로 규명하기', nextNodeKey: 'book_sad_6_1'),
      Option(text: '나만의 기록으로 마음을 단단히 굳히기', nextNodeKey: 'book_sad_6_3'),
    ],
  ),
  'book_sad_5_5': QuestionNode(
    question: '당신의 영혼이 지금 가장 갈구하는 풍경은 어디인가요?',
    options: [
      Option(text: '모든 소음이 사라진 침묵의 숲', nextNodeKey: 'book_sad_6_3'),
      Option(text: '현실을 잊게 할 압도적인 환상의 세계', nextNodeKey: 'book_sad_6_4'),
      Option(text: '언어 밖의 울림이 있는 예술의 갤러리', nextNodeKey: 'book_sad_6_5'),
      Option(text: '진실을 직면하는 차가운 지성의 도서관', nextNodeKey: 'book_sad_6_1'),
      Option(text: '함께 눈물 흘리는 공감의 영화관', nextNodeKey: 'book_sad_6_2'),
    ],
  ),

  // ==================== depth 6: 요약·공감 확인 ====================
  'book_sad_6_1': QuestionNode(
    question: '슬픔의 회피하지 않고 그 본질을 명확히 마주하여 이해하고 싶은 상태군요.',
    options: [
      Option(text: '묵직한 실존 철학을 읽을래요', nextNodeKey: 'book_sad_7_1'),
      Option(text: '우울의 다양함을 다룬 인문학이 궁금해요', nextNodeKey: 'book_sad_7_6'),
      Option(text: '이론과 실천이 조화로운 해결책을 원해요', nextNodeKey: 'book_sad_7_7'),
      Option(text: '지적으로 환기되는 에세이가 필요해요', nextNodeKey: 'book_sad_7_8'),
      Option(text: '기록하며 슬픔을 승화할래요', nextNodeKey: 'book_sad_7_9'),
    ],
  ),
  'book_sad_6_2': QuestionNode(
    question: '타인의 온기를 느끼며 깊은 공감과 위로를 얻고 싶은 상태군요.',
    options: [
      Option(text: '눈물이 흐르는 서사 소설을 볼래요', nextNodeKey: 'book_sad_7_2'),
      Option(text: '대화 같은 다정한 에세이를 읽을래요', nextNodeKey: 'book_sad_7_4'),
      Option(text: '예술로 치유하는 위로를 원해요', nextNodeKey: 'book_sad_7_10'),
      Option(text: '현실을 잊을 장르 소설에 빠질래요', nextNodeKey: 'book_sad_7_8'),
      Option(text: '마음을 울리는 그림책을 볼래요', nextNodeKey: 'book_sad_7_5'),
    ],
  ),
  'book_sad_6_3': QuestionNode(
    question: '슬픔을 억지로 털어내기보다 고요하게 머물며 수용하고 싶은 상태군요.',
    options: [
      Option(text: '평온을 주는 동양의 사유를 볼래요', nextNodeKey: 'book_sad_7_3'),
      Option(text: '고독을 빚어낸 예술가의 기록이요', nextNodeKey: 'book_sad_7_6'),
      Option(text: '울림을 주는 사진과 그림을 볼래요', nextNodeKey: 'book_sad_7_5'),
      Option(text: '마음을 정리하는 필사를 할래요', nextNodeKey: 'book_sad_7_9'),
      Option(text: '본질을 묻는 묵직한 사색을 원해요', nextNodeKey: 'book_sad_7_1'),
    ],
  ),
  'book_sad_6_4': QuestionNode(
    question: '슬픔에 지쳐 어떤 요구도 받지 않고 가만히 기댈 곳이 필요한 상태군요.',
    options: [
      Option(text: '부드러운 위로의 짧은 글을 볼래요', nextNodeKey: 'book_sad_7_4'),
      Option(text: '기분 전환을 위한 경쾌한 문학이요', nextNodeKey: 'book_sad_7_8'),
      Option(text: '시선이 머무는 이미지를 감상할래요', nextNodeKey: 'book_sad_7_5'),
      Option(text: '마음의 짐을 덜어낼 명쾌한 조언을 들을래요', nextNodeKey: 'book_sad_7_7'),
      Option(text: '아껴 읽고 싶은 서정적인 시요', nextNodeKey: 'book_sad_7_3'),
    ],
  ),
  'book_sad_6_5': QuestionNode(
    question: '슬픔조차 느끼기 힘들 만큼 소진되어 순수한 안식이 필요한 상태군요.',
    options: [
      Option(text: '마음을 만져줄 그림책에 기댈래요', nextNodeKey: 'book_sad_7_5'),
      Option(text: '순수한 감각을 깨우는 예술을 볼래요', nextNodeKey: 'book_sad_7_10'),
      Option(text: '작은 실천으로 일상의 루틴을 만들고 싶어요', nextNodeKey: 'book_sad_7_9'),
      Option(text: '상실을 딛고 일어선 기록을 읽을래요', nextNodeKey: 'book_sad_7_2'),
      Option(text: '어떤 요구도 없는 힐링 에세이를 볼래요', nextNodeKey: 'book_sad_7_4'),
    ],
  ),

  // ==================== depth 7: 최종 결과 ====================
  'book_sad_7_1': QuestionNode(
    question: '우울의 깊이를 온전히 느끼며 내면의 본질을 탐구하려는 당신에게 묵직한 문장을 제안합니다.',
    options: [
      Option(
        text: '실존주의 철학의 정수',
        nextNodeKey: 'end',
        bookTags: ['실존', '철학', '우울', '성찰'],
      ),
      Option(
        text: '인간의 심연을 다룬 정통 고전 소설',
        nextNodeKey: 'end',
        bookTags: ['심리', '내면', '문학', '깊이'],
      ),
      Option(
        text: '고독의 가치를 일깨우는 철학 에세이',
        nextNodeKey: 'end',
        bookTags: ['고독', '성찰', '사색', '인문'],
      ),
      Option(
        text: '슬픔을 논리적으로 해부하는 정신분석학',
        nextNodeKey: 'end',
        bookTags: ['정신분석', '통찰', '심리', '분석'],
      ),
      Option(
        text: '존재에 대한 근본적인 철학적 사유',
        nextNodeKey: 'end',
        bookTags: ['철학', '존재', '사유', '근본'],
      ),
    ],
  ),
  'book_sad_7_2': QuestionNode(
    question: '슬픈 마음 한가운데서 당신의 손을 잡아줄 공감과 치유의 기록들을 제안합니다.',
    options: [
      Option(
        text: '아름다운 멜랑콜리 문학선',
        nextNodeKey: 'end',
        bookTags: ['멜랑콜리', '문학', '감성', '탐구'],
      ),
      Option(
        text: '상실을 딛고 일어선 예술가의 회고록',
        nextNodeKey: 'end',
        bookTags: ['회고록', '상실', '자전', '치유'],
      ),
      Option(
        text: '슬픔을 견뎌낸 이들의 다정한 소설',
        nextNodeKey: 'end',
        bookTags: ['슬픔', '감정', '문학', '공감'],
      ),
      Option(
        text: '인간의 감정을 따뜻하게 대변하는 심리서',
        nextNodeKey: 'end',
        bookTags: ['감정', '이해', '공감', '심리'],
      ),
      Option(
        text: '비슷한 아픔을 통과한 이의 진솔한 산문',
        nextNodeKey: 'end',
        bookTags: ['경험', '에세이', '공감', '진솔'],
      ),
    ],
  ),
  'book_sad_7_3': QuestionNode(
    question: '슬픔과 함께 고요히 머물며 비움의 평온을 얻고 싶은 당신을 위한 문장들입니다.',
    options: [
      Option(
        text: '마음을 가라앉히는 동양의 선 사유',
        nextNodeKey: 'end',
        bookTags: ['선불교', '명상', '동양', '철학'],
      ),
      Option(
        text: '느리게 읽히는 서정적인 현대 시집',
        nextNodeKey: 'end',
        bookTags: ['서정', '시', '느림', '감성'],
      ),
      Option(
        text: '마음의 쉼표가 되는 담담한 생활 수필',
        nextNodeKey: 'end',
        bookTags: ['휴식', '에세이', '편안', '잔잔'],
      ),
      Option(
        text: '침묵과 고독을 예찬하는 철학서',
        nextNodeKey: 'end',
        bookTags: ['침묵', '고독', '철학', '사색'],
      ),
      Option(
        text: '있는 그대로의 풍경을 담은 자연 산문',
        nextNodeKey: 'end',
        bookTags: ['수용', '자연', '담담', '관조'],
      ),
    ],
  ),
  'book_sad_7_4': QuestionNode(
    question: '어떤 조건 없이 당신을 안아줄 따뜻하고 안전한 안식처 같은 책들입니다.',
    options: [
      Option(
        text: '부드러운 위로를 건네는 짧은 글귀',
        nextNodeKey: 'end',
        bookTags: ['가벼움', '위로', '부담', '다정'],
      ),
      Option(
        text: '포근한 온기가 느껴지는 힐링 소설',
        nextNodeKey: 'end',
        bookTags: ['힐링', '따뜻', '소설', '포근'],
      ),
      Option(
        text: '마음의 긴장을 풀어주는 다정한 산문집',
        nextNodeKey: 'end',
        bookTags: ['부드러움', '에세이', '편안', '온화'],
      ),
      Option(
        text: '아무것도 묻지 않는 휴식 같은 책',
        nextNodeKey: 'end',
        bookTags: ['휴식', '평온', '치유', '여유'],
      ),
      Option(
        text: '마음이 몽글해지는 일러스트 에세이',
        nextNodeKey: 'end',
        bookTags: ['그림', '짧음', '시각', '감각'],
      ),
    ],
  ),
  'book_sad_7_5': QuestionNode(
    question: '글자조차 버거운 당신을 위해 활자 너머의 감각으로 위로를 전하는 책들입니다.',
    options: [
      Option(
        text: '말 없이 마음을 울리는 무언의 그림책',
        nextNodeKey: 'end',
        bookTags: ['그림책', '무언', '직관', '안심'],
      ),
      Option(
        text: '광활한 우주와 대자연의 풍경 사진집',
        nextNodeKey: 'end',
        bookTags: ['사진', '자연', '시각', '평온'],
      ),
      Option(
        text: '여백 가득한 미니멀 디자인 북',
        nextNodeKey: 'end',
        bookTags: ['물성', '디자인', '여백', '예쁜'],
      ),
      Option(
        text: '한 페이지씩 아껴 읽는 짧은 명언집',
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
  'book_sad_7_6': QuestionNode(
    question: '우울함의 입체적인 면모를 탐구하며 새로운 시각을 조명하는 인문적 제안입니다.',
    options: [
      Option(
        text: '우울의 역사를 다룬 깊이 있는 인문서',
        nextNodeKey: 'end',
        bookTags: ['역사', '문화', '인문', '분석'],
      ),
      Option(
        text: '슬픔을 예술로 승화시킨 거장들의 비화',
        nextNodeKey: 'end',
        bookTags: ['예술', '표현', '창작', '감성'],
      ),
      Option(
        text: '우울을 정면으로 응시하는 현대 문학 소설',
        nextNodeKey: 'end',
        bookTags: ['소설', '문학', '깊은', '인간'],
      ),
      Option(
        text: '사회적 우울의 맥락을 짚는 사회 비평',
        nextNodeKey: 'end',
        bookTags: ['사회', '비평', '맥락', '이해'],
      ),
      Option(
        text: '고독을 창조의 원천으로 바꾼 이들의 기록',
        nextNodeKey: 'end',
        bookTags: ['고독', '창의', '기록', '성찰'],
      ),
    ],
  ),
  'book_sad_7_7': QuestionNode(
    question: '깊은 성찰을 원하지만 무겁지 않게 접근하고 싶은 당신을 위한 균형 잡힌 가이드입니다.',
    options: [
      Option(
        text: '심리 이론과 자가 치료의 조화로운 제안',
        nextNodeKey: 'end',
        bookTags: ['통합', '원인', '해결', '가이드'],
      ),
      Option(
        text: '슬픔의 본질을 쉽고 명쾌하게 풀어낸 책',
        nextNodeKey: 'end',
        bookTags: ['본질', '가벼움', '접근', '탐구'],
      ),
      Option(
        text: '이해를 돕는 풍부한 사례가 담긴 심리서',
        nextNodeKey: 'end',
        bookTags: ['사례', '심리', '이해', '다양'],
      ),
      Option(
        text: '과학적 이해와 명상이 어우러진 가이드',
        nextNodeKey: 'end',
        bookTags: ['과학', '명상', '조화', '안정'],
      ),
      Option(
        text: '일상에서 실천하는 회복 탄력성 지혜',
        nextNodeKey: 'end',
        bookTags: ['실천', '회복', '지혜', '변화'],
      ),
    ],
  ),
  'book_sad_7_8': QuestionNode(
    question: '지금 당장 생각의 환기가 필요한 당신에게 선사하는 기분 전환의 이야기들입니다.',
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
        text: '몽환적이고 신비로운 분위기의 판타지',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '신비', '몰입'],
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
    ],
  ),
  'book_sad_7_9': QuestionNode(
    question: '읽는 것보다 직접 무언가를 기록하며 마음을 추스르고 싶은 당신을 위한 실천들입니다.',
    options: [
      Option(
        text: '나의 슬픔을 쏟아내는 감정 워크북',
        nextNodeKey: 'end',
        bookTags: ['기록', '워크북', '실천', '치유'],
      ),
      Option(
        text: '마음을 비워내고 일상을 세우는 정리법',
        nextNodeKey: 'end',
        bookTags: ['정리', '비움', '단순', '실용'],
      ),
      Option(
        text: '무념무상에 빠져드는 세밀한 컬러링 북',
        nextNodeKey: 'end',
        bookTags: ['미술', '집중', '놀이', '무념'],
      ),
      Option(
        text: '좋은 문장을 손끝으로 새기는 필사 노트',
        nextNodeKey: 'end',
        bookTags: ['필사', '몰입', '단순', '안정'],
      ),
      Option(
        text: '오감을 깨우는 나를 돌보는 루틴 가이드',
        nextNodeKey: 'end',
        bookTags: ['루틴', '건강', '회복', '돌봄'],
      ),
    ],
  ),
  'book_sad_7_10': QuestionNode(
    question: '나만의 방식으로 슬픔을 조각하고 위로를 발견하고 싶은 당신을 위한 독창적 제안입니다.',
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
        text: '독특한 디자인의 팝업북과 놀이 책',
        nextNodeKey: 'end',
        bookTags: ['입체', '디자인', '놀이', '흥미'],
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
    ],
  ),
};
