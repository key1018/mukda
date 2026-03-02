import '../../question_tree.dart';

final Map<String, QuestionNode> bookBurnoutTree = {
  // ==================== depth 2: 상황/맥락 (기존 유지) ====================
  'book_burnout_2_1': QuestionNode(
    question: '이 번아웃이 가장 선명하게 느껴지는 순간은 언제인가요?',
    options: [
      Option(text: '해야 할 일을 마주할 때', nextNodeKey: 'book_burnout_3_1'),
      Option(text: '아침에 하루를 시작할 때', nextNodeKey: 'book_burnout_3_2'),
      Option(text: '열심히 했는데 아무 의미가 없다고 느껴질 때', nextNodeKey: 'book_burnout_3_3'),
      Option(text: '계속 무언가를 요구받을 때', nextNodeKey: 'book_burnout_3_4'),
      Option(text: '특별한 순간 없이 늘', nextNodeKey: 'book_burnout_3_5'),
    ],
  ),

  // ==================== depth 3: 내적 독백 ====================
  'book_burnout_3_1': QuestionNode(
    question: '산더미 같은 일 앞에서 마음은 어떤 말을 내뱉나요?',
    options: [
      Option(text: '"더 이상 한 걸음도 뗄 수 없어"', nextNodeKey: 'book_burnout_4_3'),
      Option(text: '"다 내려놓고 어디론가 증발하고 싶어"', nextNodeKey: 'book_burnout_4_5'),
      Option(text: '"이걸 해서 대체 뭐가 달라지는데?"', nextNodeKey: 'book_burnout_4_1'),
      Option(text: '"나만 멈춰있는 것 같아 괴로워"', nextNodeKey: 'book_burnout_4_2'),
      Option(text: '"누구라도 좋으니 나를 좀 꺼내줘"', nextNodeKey: 'book_burnout_4_4'),
    ],
  ),
  'book_burnout_3_2': QuestionNode(
    question: '눈을 뜨자마자 당신을 짓누르는 생각은 무엇인가요?',
    options: [
      Option(text: '"또 하루를 버텨야 한다는 게 끔찍해"', nextNodeKey: 'book_burnout_4_4'),
      Option(text: '"이미 지쳐서 시작할 힘조차 없어"', nextNodeKey: 'book_burnout_4_1'),
      Option(text: '"언제까지 이런 삶을 반복해야 할까"', nextNodeKey: 'book_burnout_4_5'),
      Option(text: '"오늘 하루는 제발 아무 일도 없었으면"', nextNodeKey: 'book_burnout_4_2'),
      Option(text: '"침대 밖 세상이 너무 무겁게 느껴져"', nextNodeKey: 'book_burnout_4_3'),
    ],
  ),
  'book_burnout_3_3': QuestionNode(
    question: '노력이 무색해질 때, 가슴 속엔 어떤 목소리가 남나요?',
    options: [
      Option(text: '"애써봤자 아무도 알아주지 않아"', nextNodeKey: 'book_burnout_4_2'),
      Option(text: '"내가 쏟아부은 시간들이 너무 허무해"', nextNodeKey: 'book_burnout_4_4'),
      Option(text: '"이제 무엇을 위해 살아야 할지 모르겠어"', nextNodeKey: 'book_burnout_4_1'),
      Option(text: '"세상은 나 없이도 잘만 돌아가네"', nextNodeKey: 'book_burnout_4_3'),
      Option(text: '"그냥 모든 걸 포기하고 싶어"', nextNodeKey: 'book_burnout_4_5'),
    ],
  ),
  'book_burnout_3_4': QuestionNode(
    question: '주변의 요구들이 당신을 어떻게 할퀴고 지나가나요?',
    options: [
      Option(text: '"나를 배려하는 사람은 아무도 없어"', nextNodeKey: 'book_burnout_4_5'),
      Option(text: '"이제 더 이상 짜낼 에너지도 없어"', nextNodeKey: 'book_burnout_4_2'),
      Option(text: '"모두가 나를 이용만 하는 기분이야"', nextNodeKey: 'book_burnout_4_3'),
      Option(text: '"이러다 내가 정말 사라질 것 같아"', nextNodeKey: 'book_burnout_4_1'),
      Option(text: '"제발 나를 좀 가만히 내버려 둬"', nextNodeKey: 'book_burnout_4_4'),
    ],
  ),
  'book_burnout_3_5': QuestionNode(
    question: '늘 곁에 머무는 이 무력함은 어떤 느낌인가요?',
    options: [
      Option(text: '"감정이 아예 메말라버린 것 같아"', nextNodeKey: 'book_burnout_4_1'),
      Option(text: '"거울 속의 내가 너무 낯설어 보여"', nextNodeKey: 'book_burnout_4_3'),
      Option(text: '"삶의 색깔이 다 빠져나간 기분이야"', nextNodeKey: 'book_burnout_4_5'),
      Option(text: '"무엇을 해도 기쁘지도 슬프지도 않아"', nextNodeKey: 'book_burnout_4_2'),
      Option(text: '"그저 살아있으니까 숨을 쉬는 것뿐이야"', nextNodeKey: 'book_burnout_4_4'),
    ],
  ),

  // ==================== depth 4: 물리적 질감 ====================
  'book_burnout_4_1': QuestionNode(
    question: '지금 당신을 가장 힘들게 하는 소진의 감촉은 무엇인가요?',
    options: [
      Option(text: '한 줌의 재가 된 듯 푸석한 느낌', nextNodeKey: 'book_burnout_5_3'),
      Option(text: '무거운 늪에 빠져 허우적대는 느낌', nextNodeKey: 'book_burnout_5_5'),
      Option(text: '모든 감각이 마비된 듯 차가운 느낌', nextNodeKey: 'book_burnout_5_1'),
      Option(text: '심장이 텅 빈 구멍처럼 뚫린 느낌', nextNodeKey: 'book_burnout_5_4'),
      Option(text: '금방이라도 깨질 듯 팽팽한 느낌', nextNodeKey: 'book_burnout_5_2'),
    ],
  ),
  'book_burnout_4_2': QuestionNode(
    question: '당신의 번아웃은 어떤 무게로 당신을 누르고 있나요?',
    options: [
      Option(text: '어깨 위에 얹힌 묵직한 돌덩이', nextNodeKey: 'book_burnout_5_4'),
      Option(text: '온몸을 휘감은 끈적한 안개', nextNodeKey: 'book_burnout_5_1'),
      Option(text: '바닥을 알 수 없는 깊은 구덩이', nextNodeKey: 'book_burnout_5_5'),
      Option(text: '나를 가둔 좁고 답답한 벽', nextNodeKey: 'book_burnout_5_2'),
      Option(text: '바람 한 점 없는 숨 막히는 진공', nextNodeKey: 'book_burnout_5_3'),
    ],
  ),
  'book_burnout_4_3': QuestionNode(
    question: '지금 당신의 상태를 하나의 풍경으로 표현한다면?',
    options: [
      Option(text: '불이 다 꺼진 텅 빈 연극 무대', nextNodeKey: 'book_burnout_5_5'),
      Option(text: '풀 한 포기 자라지 않는 메마른 사막', nextNodeKey: 'book_burnout_5_2'),
      Option(text: '기름이 다 떨어진 멈춘 자동차', nextNodeKey: 'book_burnout_5_3'),
      Option(text: '거센 비바람이 지나간 폐허', nextNodeKey: 'book_burnout_5_1'),
      Option(text: '출구가 보이지 않는 긴 터널', nextNodeKey: 'book_burnout_5_4'),
    ],
  ),
  'book_burnout_4_4': QuestionNode(
    question: '소진된 마음이 당신의 일상을 어떻게 바꾸어 놓았나요?',
    options: [
      Option(text: '좋아하던 일조차 하기 싫어졌어요', nextNodeKey: 'book_burnout_5_2'),
      Option(text: '사람들을 만나는 게 너무 두려워요', nextNodeKey: 'book_burnout_5_4'),
      Option(text: '자꾸만 날 선 반응을 보이게 돼요', nextNodeKey: 'book_burnout_5_1'),
      Option(text: '하루 종일 멍하니 시간만 보내요', nextNodeKey: 'book_burnout_5_3'),
      Option(text: '잠을 자도 피로가 풀리지 않아요', nextNodeKey: 'book_burnout_5_5'),
    ],
  ),
  'book_burnout_4_5': QuestionNode(
    question: '지금 이 소진된 에너지를 어떻게든 표현해본다면?',
    options: [
      Option(text: '바닥을 드러낸 핸드폰 배터리', nextNodeKey: 'book_burnout_5_1'),
      Option(text: '뿌리째 흔들리는 오래된 나무', nextNodeKey: 'book_burnout_5_3'),
      Option(text: '물이 다 빠져나간 텅 빈 수영장', nextNodeKey: 'book_burnout_5_5'),
      Option(text: '끊어지기 직전의 팽팽한 실밥', nextNodeKey: 'book_burnout_5_2'),
      Option(text: '생기를 잃고 바랜 낡은 사진', nextNodeKey: 'book_burnout_5_4'),
    ],
  ),

  // ==================== depth 5: 에너지 및 욕구 측정 ====================
  'book_burnout_5_1': QuestionNode(
    question: '지금 당신의 마음속 배터리는 어느 정도 남아있나요?',
    options: [
      Option(text: '바닥이에요. 아무것도 하고 싶지 않아요', nextNodeKey: 'book_burnout_6_5'),
      Option(text: '글자보다는 그림이나 풍경이 편해요', nextNodeKey: 'book_burnout_6_4'),
      Option(text: '짧은 문장 정도는 읽을 수 있어요', nextNodeKey: 'book_burnout_6_1'),
      Option(text: '나를 돌아볼 의미를 찾고 싶어요', nextNodeKey: 'book_burnout_6_2'),
      Option(text: '다시 일어설 에너지를 얻고 싶어요', nextNodeKey: 'book_burnout_6_3'),
    ],
  ),
  'book_burnout_5_2': QuestionNode(
    question: '지금 이 지친 마음에 무엇을 허락해주고 싶나요?',
    options: [
      Option(text: '완전한 고요함과 휴식', nextNodeKey: 'book_burnout_6_4'),
      Option(text: '나를 이해하는 다정한 문장', nextNodeKey: 'book_burnout_6_1'),
      Option(text: '다시 시작할 수 있다는 희망', nextNodeKey: 'book_burnout_6_3'),
      Option(text: '세상의 시각에서 벗어난 나의 가치', nextNodeKey: 'book_burnout_6_2'),
      Option(text: '아무 생각 없이 머물 수 있는 쉼터', nextNodeKey: 'book_burnout_6_5'),
    ],
  ),
  'book_burnout_5_3': QuestionNode(
    question: '지금 당신이 감당할 수 있는 이야기의 무게는 어떤가요?',
    options: [
      Option(text: '설명이 필요 없는 시각적 감동', nextNodeKey: 'book_burnout_6_5'),
      Option(text: '천천히 쉬어가는 편안한 글', nextNodeKey: 'book_burnout_6_4'),
      Option(text: '나의 아픔을 객관적으로 분석하는 글', nextNodeKey: 'book_burnout_6_1'),
      Option(text: '삶의 가치를 일깨워주는 묵직한 글', nextNodeKey: 'book_burnout_6_2'),
      Option(text: '용기를 북돋아 주는 뜨거운 글', nextNodeKey: 'book_burnout_6_3'),
    ],
  ),
  'book_burnout_5_4': QuestionNode(
    question: '이 힘든 시간을 지나가기 위해 무엇이 가장 필요한가요?',
    options: [
      Option(
        text: '나만 아는 아픔에 대한 뜨거운 공감',
        nextNodeKey: 'book_burnout_6_1',
      ), // 7-6 연결
      Option(text: '현실의 무거움을 잊게 할 휴식', nextNodeKey: 'book_burnout_6_4'),
      Option(
        text: '무너진 일상을 세우는 작은 실천',
        nextNodeKey: 'book_burnout_6_3',
      ), // 7-9 연결 유도
      Option(text: '삶의 목적을 다시 묻는 질문', nextNodeKey: 'book_burnout_6_2'),
      Option(text: '말 없이 나를 지켜봐 줄 존재', nextNodeKey: 'book_burnout_6_5'),
    ],
  ),
  'book_burnout_5_5': QuestionNode(
    question: '지금 이 순간, 당신의 영혼이 가장 끌리는 곳은 어디인가요?',
    options: [
      Option(text: '아무도 나를 찾지 않는 깊은 숲', nextNodeKey: 'book_burnout_6_4'),
      Option(text: '나의 고통을 명쾌하게 설명해줄 강의실', nextNodeKey: 'book_burnout_6_1'),
      Option(text: '진짜 나를 발견하게 될 낯선 길', nextNodeKey: 'book_burnout_6_2'),
      Option(text: '어둠을 뚫고 빛이 내려오는 언덕', nextNodeKey: 'book_burnout_6_3'),
      Option(text: '색채와 선이 가득한 이름 없는 갤러리', nextNodeKey: 'book_burnout_6_5'),
    ],
  ),

  // ==================== depth 6: 요약 및 에너지 맞춤 처방 ====================
  'book_burnout_6_1': QuestionNode(
    question: '지금 당신은 나에게 왜 이런 일이 생겼는지 차분히 이해하고 싶은 상태군요.',
    options: [
      Option(text: '원인을 분석하는 심리서가 궁금해요', nextNodeKey: 'book_burnout_7_1'),
      Option(text: '가볍게 읽히는 위로가 필요해요', nextNodeKey: 'book_burnout_7_8'),
      Option(text: '원인 분석과 의미를 같이 찾고 싶어요', nextNodeKey: 'book_burnout_7_7'),
      Option(text: '나와 닮은 아픔을 겪은 기록이 궁금해요', nextNodeKey: 'book_burnout_7_6'),
      Option(text: '짧은 시나 사진으로 숨을 쉬고 싶어요', nextNodeKey: 'book_burnout_7_10'),
    ],
  ),
  'book_burnout_6_2': QuestionNode(
    question: '지금 당신은 무너진 일 속에서 삶의 진짜 의미를 다시 발견하고 싶은 상태군요.',
    options: [
      Option(text: '삶의 가치에 대한 철학적 제안을 받고싶어요', nextNodeKey: 'book_burnout_7_2'),
      Option(text: '의미와 원인을 동시에 탐구할래요', nextNodeKey: 'book_burnout_7_7'),
      Option(text: '나를 찾아 떠난 이들의 기록을 볼래요', nextNodeKey: 'book_burnout_7_6'),
      Option(text: '부담 없이 쉴 수 있는 이야기가 좋아요', nextNodeKey: 'book_burnout_7_4'),
      Option(text: '글을 쓰며 내 마음을 정리해보고 싶어요', nextNodeKey: 'book_burnout_7_9'),
    ],
  ),
  'book_burnout_6_3': QuestionNode(
    question: '지금 당신은 소진된 마음을 채우고 다시 일어설 희망을 찾는 상태군요.',
    options: [
      Option(text: '심리학과 재충전 가이드가 필요해요', nextNodeKey: 'book_burnout_7_3'),
      Option(text: '천천히 마음을 추스릴 시간이 필요해요', nextNodeKey: 'book_burnout_7_4'),
      Option(text: '무너진 루틴을 세우는 실천을 할래요', nextNodeKey: 'book_burnout_7_9'),
      Option(text: '쉽고 명쾌한 마음 테라피를 원해요', nextNodeKey: 'book_burnout_7_8'),
      Option(text: '압도적인 풍경이나 예술이 필요해요', nextNodeKey: 'book_burnout_7_10'),
    ],
  ),
  'book_burnout_6_4': QuestionNode(
    question: '지금 당신은 어떤 요구도 받지 않고 정서적으로 완전히 이완되고 싶은 상태군요.',
    options: [
      Option(text: '고요한 산책 같은 에세이가 필요해요', nextNodeKey: 'book_burnout_7_4'),
      Option(text: '글자 없이 눈이 즐거운 화집이 좋아요', nextNodeKey: 'book_burnout_7_5'),
      Option(text: '언어 너머의 위로를 주는 예술작품들', nextNodeKey: 'book_burnout_7_10'),
      Option(text: '가벼운 만화로 마음을 달래고 싶어요', nextNodeKey: 'book_burnout_7_8'),
      Option(text: '나만의 공간을 정리하는 가이드를 원해요', nextNodeKey: 'book_burnout_7_9'),
    ],
  ),
  'book_burnout_6_5': QuestionNode(
    question: '지금 당신은 에너지가 완전히 소진되어 무엇도 하기 버거운 상태군요.',
    options: [
      Option(text: '그저 곁에 두기만 해도 좋은 책을 원해요', nextNodeKey: 'book_burnout_7_5'),
      Option(text: '말 없는 울림을 주는 사진을 볼래요', nextNodeKey: 'book_burnout_7_10'),
      Option(text: '아주 짧고 다정한 위로를 읽고 싶어요', nextNodeKey: 'book_burnout_7_8'),
      Option(text: '현실을 잠시 잊게 할 동화를 읽을래요', nextNodeKey: 'book_burnout_7_10'),
      Option(text: '손끝의 단순한 감각에 집중하고 싶어요', nextNodeKey: 'book_burnout_7_9'),
    ],
  ),

  // ==================== depth 7: 최종 결과 (장르 분산) ====================
  'book_burnout_7_1': QuestionNode(
    question: '나를 소진시킨 원인을 객관적으로 분석하여 마음의 신호를 가만히 들여다봐요.',
    options: [
      Option(
        text: '번아웃의 심리학적 분석',
        nextNodeKey: 'end',
        bookTags: ['심리', '진단', '이해', '분석'],
      ),
      Option(
        text: '피로사회에 대한 인문적 고찰',
        nextNodeKey: 'end',
        bookTags: ['철학', '사회', '비판', '인문'],
      ),
      Option(
        text: '뇌과학으로 본 휴식의 기술',
        nextNodeKey: 'end',
        bookTags: ['뇌과학', '지식', '정보', '휴식'],
      ),
      Option(
        text: '감정 노동의 본질 연구',
        nextNodeKey: 'end',
        bookTags: ['노동', '감정', '연구', '분석'],
      ),
      Option(
        text: '현대인의 번아웃 보고서',
        nextNodeKey: 'end',
        bookTags: ['현대', '피로', '사회', '리포트'],
      ),
    ],
  ),
  'book_burnout_7_2': QuestionNode(
    question: '무너진 일상 속에서 존재의 이유를 묻고 있군요. 당신의 내면을 단단하게 지탱해 줄 철학적 사유들을 제안합니다.',
    options: [
      Option(
        text: '실존의 의미를 묻는 철학서',
        nextNodeKey: 'end',
        bookTags: ['철학', '실존', '의미', '본질'],
      ),
      Option(
        text: '흔들리지 않는 삶의 태도',
        nextNodeKey: 'end',
        bookTags: ['스토아', '태도', '단단한', '중심'],
      ),
      Option(
        text: '나를 찾아가는 정체성 인문학',
        nextNodeKey: 'end',
        bookTags: ['자아', '인문', '성찰', '정체성'],
      ),
      Option(
        text: '비움과 채움의 동양 철학',
        nextNodeKey: 'end',
        bookTags: ['지혜', '동양', '안정', '중용'],
      ),
      Option(
        text: '고통을 숙고하는 철학 에세이',
        nextNodeKey: 'end',
        bookTags: ['사색', '치유', '깊이', '철학'],
      ),
    ],
  ),
  'book_burnout_7_3': QuestionNode(
    question: '무너진 마음을 세우고 다시 숨을 고르고 나아갈 에너지를 전하는 이야기입니다.',
    options: [
      Option(
        text: '회복탄력성을 기르는 심리 수업',
        nextNodeKey: 'end',
        bookTags: ['회복', '탄력', '심리', '긍정'],
      ),
      Option(
        text: '에너지를 채우는 재충전 기술',
        nextNodeKey: 'end',
        bookTags: ['재충전', '관리', '에너지', '실용'],
      ),
      Option(
        text: '절망을 극복한 승리의 기록',
        nextNodeKey: 'end',
        bookTags: ['희망', '극복', '용기', '실화'],
      ),
      Option(
        text: '다시 일하기 위한 마인드셋',
        nextNodeKey: 'end',
        bookTags: ['동기', '열정', '태도', '도전'],
      ),
      Option(
        text: '넘어져도 괜찮다는 다정한 격려',
        nextNodeKey: 'end',
        bookTags: ['위로', '격려', '따뜻한', '치유'],
      ),
    ],
  ),
  'book_burnout_7_4': QuestionNode(
    question: '당신의 쉼을 방해하지 않는 고요하고 평온한 안식처 같은 책입니다.',
    options: [
      Option(
        text: '느리게 걷는 산책 같은 에세이',
        nextNodeKey: 'end',
        bookTags: ['휴식', '에세이', '느림', '평온'],
      ),
      Option(
        text: '무위의 즐거움을 다룬 수필',
        nextNodeKey: 'end',
        bookTags: ['무위', '쉼', '자유', '여유'],
      ),
      Option(
        text: '고요한 숲과 자연의 기록',
        nextNodeKey: 'end',
        bookTags: ['자연', '평화', '관찰', '치유'],
      ),
      Option(
        text: '마음의 쉼표가 되는 짧은 글',
        nextNodeKey: 'end',
        bookTags: ['쉼표', '짧은글', '가벼운', '위로'],
      ),
      Option(
        text: '다정한 문장으로 가득한 편지',
        nextNodeKey: 'end',
        bookTags: ['편지', '다정한', '포근', '감성'],
      ),
    ],
  ),
  'book_burnout_7_5': QuestionNode(
    question: '글자조차 무거운 당신을 위해 곁에 두기만 해도 안심되는 책들을 골랐어요.',
    options: [
      Option(
        text: '사진으로 보는 평온한 풍경',
        nextNodeKey: 'end',
        bookTags: ['사진', '풍경', '시각', '여행'],
      ),
      Option(
        text: '귀여운 그림이 가득한 화집',
        nextNodeKey: 'end',
        bookTags: ['그림', '귀여운', '포근', '시각'],
      ),
      Option(
        text: '한 페이지씩 천천히 보는 책',
        nextNodeKey: 'end',
        bookTags: ['짧은글', '부담', '여유', '가벼운'],
      ),
      Option(
        text: '언제든 덮어도 괜찮은 잡지',
        nextNodeKey: 'end',
        bookTags: ['잡지', '다양', '시각', '부담'],
      ),
      Option(
        text: '존재만으로 위로가 되는 소장본',
        nextNodeKey: 'end',
        bookTags: ['물성', '안심', '소장', '예쁜'],
      ),
    ],
  ),
  'book_burnout_7_6': QuestionNode(
    question: '남들은 모르는 당신만의 아픔을 공유하고 연대할 수 있는 기록입니다.',
    options: [
      Option(
        text: '번아웃 탈출 실화 에세이',
        nextNodeKey: 'end',
        bookTags: ['실화', '공감', '에세이', '치유'],
      ),
      Option(
        text: '예술가들의 고독과 슬럼프',
        nextNodeKey: 'end',
        bookTags: ['예술', '슬럼프', '창작', '고독'],
      ),
      Option(
        text: '번아웃을 철학적으로 견디는 법',
        nextNodeKey: 'end',
        bookTags: ['철학', '성찰', '사유', '인문'],
      ),
      Option(
        text: '사회적 번아웃을 다룬 소설',
        nextNodeKey: 'end',
        bookTags: ['소설', '사회', '비판', '공감'],
      ),
      Option(
        text: '나를 찾아 떠난 여행의 기록',
        nextNodeKey: 'end',
        bookTags: ['여행', '발견', '기록', '용기'],
      ),
    ],
  ),
  'book_burnout_7_7': QuestionNode(
    question: '머리와 가슴을 동시에 채워줄 원인 분석과 의미 탐구의 균형 잡힌 제안입니다.',
    options: [
      Option(
        text: '번아웃의 원인과 해결 가이드',
        nextNodeKey: 'end',
        bookTags: ['원인', '해결', '실용', '가이드'],
      ),
      Option(
        text: '이론과 실제 사례가 담긴 책',
        nextNodeKey: 'end',
        bookTags: ['사례', '이론', '통합', '분석'],
      ),
      Option(
        text: '심리학으로 푸는 인생의 의미',
        nextNodeKey: 'end',
        bookTags: ['심리', '의미', '인생', '탐구'],
      ),
      Option(
        text: '일의 기쁨과 슬픔에 관한 인문학',
        nextNodeKey: 'end',
        bookTags: ['노동', '인문', '기쁨', '성찰'],
      ),
      Option(
        text: '과학적 이해와 명상의 조화',
        nextNodeKey: 'end',
        bookTags: ['과학', '명상', '조화', '안정'],
      ),
    ],
  ),
  'book_burnout_7_8': QuestionNode(
    question: '부담 없이 쉽고 가볍게 지금 내 상태를 훑어볼 수 있는 책들입니다.',
    options: [
      Option(
        text: '만화로 배우는 심리 테라피',
        nextNodeKey: 'end',
        bookTags: ['만화', '쉬운', '심리', '테라피'],
      ),
      Option(
        text: '하루 5분 번아웃 체크 가이드',
        nextNodeKey: 'end',
        bookTags: ['가이드', '체크', '짧은글', '실용'],
      ),
      Option(
        text: '짧은 문장으로 된 마음 위로',
        nextNodeKey: 'end',
        bookTags: ['위로', '짧은글', '편안', '다정한'],
      ),
      Option(
        text: '부담 없이 읽는 현대 피로론',
        nextNodeKey: 'end',
        bookTags: ['사회', '피로', '쉬운', '에세이'],
      ),
      Option(
        text: '그림과 글이 있는 마음 쉼표',
        nextNodeKey: 'end',
        bookTags: ['그림', '쉼표', '가벼운', '위로'],
      ),
    ],
  ),
  'book_burnout_7_9': QuestionNode(
    question: '에너지를 되살리기 위한 작지만 실질적인 행동 지침들입니다.',
    options: [
      Option(
        text: '마음 챙김 필사 워크북',
        nextNodeKey: 'end',
        bookTags: ['필사', '워크북', '기록', '몰입'],
      ),
      Option(
        text: '수면과 식단을 바꾸는 루틴',
        nextNodeKey: 'end',
        bookTags: ['루틴', '건강', '생활', '실천'],
      ),
      Option(
        text: '단순한 손작업, 드로잉 북',
        nextNodeKey: 'end',
        bookTags: ['그림', '드로잉', '단순', '몰입'],
      ),
      Option(
        text: '디지털 디톡스 실천 가이드',
        nextNodeKey: 'end',
        bookTags: ['디톡스', '단절', '휴식', '실용'],
      ),
      Option(
        text: '오감을 깨우는 명상 가이드',
        nextNodeKey: 'end',
        bookTags: ['명상', '감각', '안정', '실용'],
      ),
    ],
  ),
  'book_burnout_7_10': QuestionNode(
    question: '설명 없이도 감각을 통해 마음을 어루만져줄 위로의 예술작품들입니다.',
    options: [
      Option(
        text: '말 없는 깊은 울림의 그림책',
        nextNodeKey: 'end',
        bookTags: ['그림책', '무언', '감동', '시각'],
      ),
      Option(
        text: '고요한 새벽을 닮은 사진집',
        nextNodeKey: 'end',
        bookTags: ['사진', '고요', '새벽', '풍경'],
      ),
      Option(
        text: '여백이 가득한 짧은 시집',
        nextNodeKey: 'end',
        bookTags: ['시', '여백', '짧은글', '서정'],
      ),
      Option(
        text: '몽환적인 환상 동화집',
        nextNodeKey: 'end',
        bookTags: ['판타지', '동화', '상상', '탈출'],
      ),
      Option(
        text: '표지만 봐도 안심되는 디자인북',
        nextNodeKey: 'end',
        bookTags: ['디자인', '물성', '예쁜', '소장'],
      ),
    ],
  ),
};
