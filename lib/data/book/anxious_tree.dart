// 불안 감정 - 책 추천 질문 트리
import '../../question_tree.dart';

final Map<String, QuestionNode> bookAnxiousTree = {
  // ==================== depth 2: 상황/맥락 ====================
  'book_anxious_2_1': QuestionNode(
    question: '이 불안이 가장 크게 느껴지는 순간은 언제인가요?',
    options: [
      Option(text: '미래를 생각할 때', nextNodeKey: 'book_anxious_3_1'),
      Option(text: '중요한 결정을 앞두고 있을 때', nextNodeKey: 'book_anxious_3_2'),
      Option(text: '혼자 조용히 있을 때', nextNodeKey: 'book_anxious_3_3'),
      Option(text: '무언가 통제할 수 없다고 느낄 때', nextNodeKey: 'book_anxious_3_4'),
      Option(text: '특별한 순간 없이 계속', nextNodeKey: 'book_anxious_3_5'),
    ],
  ),

  // ==================== depth 3: 내적 독백 ====================
  'book_anxious_3_1': QuestionNode(
    question: '그 미래가 당신에게 어떤 목소리로 말을 거나요?',
    options: [
      Option(text: '"결국 다 망치고 말 거야"', nextNodeKey: 'book_anxious_4_3'),
      Option(text: '"준비되지 않은 나에게 재앙이 올 거야"', nextNodeKey: 'book_anxious_4_5'),
      Option(text: '"어떻게 해도 상황은 나빠질 거야"', nextNodeKey: 'book_anxious_4_1'),
      Option(text: '"나만 뒤처져서 영영 못 따라갈 거야"', nextNodeKey: 'book_anxious_4_2'),
      Option(text: '"지금 당장 무언가 하지 않으면 큰일 나"', nextNodeKey: 'book_anxious_4_4'),
    ],
  ),
  'book_anxious_3_2': QuestionNode(
    question: '결정을 앞둔 마음속에서 어떤 경고음이 들리나요?',
    options: [
      Option(text: '"돌이킬 수 없는 실수를 할 거야"', nextNodeKey: 'book_anxious_4_4'),
      Option(text: '"내가 모든 책임을 져야 해"', nextNodeKey: 'book_anxious_4_1'),
      Option(text: '"선택하지 않은 길이 정답이면 어떡하지"', nextNodeKey: 'book_anxious_4_5'),
      Option(text: '"사람들이 내 실패를 비웃을 거야"', nextNodeKey: 'book_anxious_4_2'),
      Option(text: '"확신이 생길 때까지 멈춰 있어야 해"', nextNodeKey: 'book_anxious_4_3'),
    ],
  ),
  'book_anxious_3_3': QuestionNode(
    question: '정적 속에서 당신을 괴롭히는 생각은 무엇인가요?',
    options: [
      Option(text: '"나만 빼고 세상이 바쁘게 돌아가"', nextNodeKey: 'book_anxious_4_2'),
      Option(text: '"이 고독이 영원히 끝나지 않을 거야"', nextNodeKey: 'book_anxious_4_4'),
      Option(text: '"과거의 실수들이 자꾸 되살아나"', nextNodeKey: 'book_anxious_4_1'),
      Option(text: '"내가 진짜 누구인지 모르겠어"', nextNodeKey: 'book_anxious_4_3'),
      Option(text: '"누군가에게 당장 연락해야 할 것 같아"', nextNodeKey: 'book_anxious_4_5'),
    ],
  ),
  'book_anxious_3_4': QuestionNode(
    question: '통제할 수 없는 상황이 당신을 어떻게 압박하나요?',
    options: [
      Option(text: '"무력하게 무너질 일만 남았어"', nextNodeKey: 'book_anxious_4_5'),
      Option(text: '"세상이 나를 공격하는 것 같아"', nextNodeKey: 'book_anxious_4_1'),
      Option(text: '"내 노력이 아무 의미 없어졌어"', nextNodeKey: 'book_anxious_4_3'),
      Option(text: '"어디로 숨어야 할지 모르겠어"', nextNodeKey: 'book_anxious_4_2'),
      Option(text: '"누군가 제발 대신 해결해줬으면"', nextNodeKey: 'book_anxious_4_4'),
    ],
  ),
  'book_anxious_3_5': QuestionNode(
    question: '이유 없이 계속되는 불안은 어떤 느낌인가요?',
    options: [
      Option(text: '"언제 터질지 모르는 시한폭탄 같아"', nextNodeKey: 'book_anxious_4_1'),
      Option(text: '"안개 속을 끝없이 걷는 기분이야"', nextNodeKey: 'book_anxious_4_3'),
      Option(text: '"심장이 쉴 틈 없이 두근거려"', nextNodeKey: 'book_anxious_4_5'),
      Option(text: '"신경이 곤두서서 잠들 수 없어"', nextNodeKey: 'book_anxious_4_2'),
      Option(text: '"그냥 모든 게 다 불편해"', nextNodeKey: 'book_anxious_4_4'),
    ],
  ),

  // ==================== depth 4: 물리적 질감 ====================
  'book_anxious_4_1': QuestionNode(
    question: '그 불안은 몸과 마음에 어떤 자국을 남기나요?',
    options: [
      Option(text: '심장을 빠르게 두드리는 팽팽한 떨림', nextNodeKey: 'book_anxious_5_3'),
      Option(text: '머릿속을 하얗게 비워버리는 차가운 마비', nextNodeKey: 'book_anxious_5_5'),
      Option(text: '온몸의 신경을 가시처럼 찌르는 날카로움', nextNodeKey: 'book_anxious_5_1'),
      Option(text: '목덜미를 꽉 조여오는 묵직한 압박감', nextNodeKey: 'book_anxious_5_4'),
      Option(text: '당장 도망치고 싶은 조급한 소동', nextNodeKey: 'book_anxious_5_2'),
    ],
  ),
  'book_anxious_4_2': QuestionNode(
    question: '불안이 당신을 잠식할 때의 감촉은 어떤가요?',
    options: [
      Option(text: '손끝이 차가워지는 서늘한 공포', nextNodeKey: 'book_anxious_5_4'),
      Option(text: '숨을 쉴 수 없을 만큼 좁아지는 방', nextNodeKey: 'book_anxious_5_1'),
      Option(text: '끝없이 떨어지는 어두운 심연', nextNodeKey: 'book_anxious_5_5'),
      Option(text: '끊임없이 윙윙대는 머릿속 소음', nextNodeKey: 'book_anxious_5_2'),
      Option(text: '온몸이 묶인 듯한 답답한 옥죄임', nextNodeKey: 'book_anxious_5_3'),
    ],
  ),
  'book_anxious_4_3': QuestionNode(
    question: '그 불안은 어떤 색깔의 파도로 밀려오나요?',
    options: [
      Option(text: '앞이 보이지 않는 탁한 회색', nextNodeKey: 'book_anxious_5_5'),
      Option(text: '경고등처럼 깜빡이는 빨간색', nextNodeKey: 'book_anxious_5_2'),
      Option(text: '날카롭게 빛나는 노란색', nextNodeKey: 'book_anxious_5_3'),
      Option(text: '깊이를 알 수 없는 검은색', nextNodeKey: 'book_anxious_5_1'),
      Option(text: '흐릿하게 번지는 보라색', nextNodeKey: 'book_anxious_5_4'),
    ],
  ),
  'book_anxious_4_4': QuestionNode(
    question: '불안이 당신의 일상을 어떻게 흔들어 놓나요?',
    options: [
      Option(text: '사소한 일에도 깜짝 놀라게 돼요', nextNodeKey: 'book_anxious_5_2'),
      Option(text: '아무것도 손에 잡히지 않아요', nextNodeKey: 'book_anxious_5_4'),
      Option(text: '자꾸만 최악의 상황을 가정해요', nextNodeKey: 'book_anxious_5_1'),
      Option(text: '잠시도 가만히 있을 수 없어요', nextNodeKey: 'book_anxious_5_3'),
      Option(text: '모든 자극이 아프게 느껴져요', nextNodeKey: 'book_anxious_5_5'),
    ],
  ),
  'book_anxious_4_5': QuestionNode(
    question: '지금 당신을 가장 괴롭히는 불안의 형태는 무엇인가요?',
    options: [
      Option(text: '가슴을 짓누르는 묵직한 돌덩이', nextNodeKey: 'book_anxious_5_1'),
      Option(text: '발밑이 꺼지는 듯한 아찔함', nextNodeKey: 'book_anxious_5_3'),
      Option(text: '끊임없이 엉키는 실타래', nextNodeKey: 'book_anxious_5_5'),
      Option(text: '언제 터질지 모르는 풍선', nextNodeKey: 'book_anxious_5_2'),
      Option(text: '나를 가둔 투명한 유리벽', nextNodeKey: 'book_anxious_5_4'),
    ],
  ),

  // ==================== depth 5: 욕구 및 에너지 측정 ====================
  'book_anxious_5_1': QuestionNode(
    question: '지금 이 불안을 다루기 위해 무엇이 가장 간절한가요?',
    options: [
      Option(text: '불안의 원인을 지적으로 분석하기', nextNodeKey: 'book_anxious_6_1'),
      Option(text: '당장 숨을 고를 수 있는 안정 찾기', nextNodeKey: 'book_anxious_6_2'),
      Option(text: '불안을 삶의 일부로 받아들이기', nextNodeKey: 'book_anxious_6_3'),
      Option(text: '현실에서 잠시 완전히 벗어나기', nextNodeKey: 'book_anxious_6_4'),
      Option(text: '아무 생각 없이 그저 머물기', nextNodeKey: 'book_anxious_6_5'),
    ],
  ),
  'book_anxious_5_2': QuestionNode(
    question: '지금 당신의 마음에 어떤 처방이 가장 필요할까요?',
    options: [
      Option(text: '정신이 번쩍 드는 명쾌한 분석', nextNodeKey: 'book_anxious_6_1'),
      Option(text: '포근하게 안아주는 다정한 위로', nextNodeKey: 'book_anxious_6_2'),
      Option(text: '시각적으로 편안해지는 그림과 사진', nextNodeKey: 'book_anxious_6_4'),
      Option(text: '불안을 이겨낼 구체적인 행동법', nextNodeKey: 'book_anxious_6_2'),
      Option(text: '글자조차 읽지 않아도 되는 쉼', nextNodeKey: 'book_anxious_6_5'),
    ],
  ),
  'book_anxious_5_3': QuestionNode(
    question: '지금 당신이 감당할 수 있는 책의 무게는 어느 정도인가요?',
    options: [
      Option(text: '원리를 파고드는 묵직한 지식', nextNodeKey: 'book_anxious_6_1'),
      Option(text: '몰입해서 읽을 수 있는 강렬한 서사', nextNodeKey: 'book_anxious_6_4'),
      Option(text: '천천히 곱씹는 지혜로운 문장', nextNodeKey: 'book_anxious_6_3'),
      Option(text: '부담 없이 넘기는 가벼운 일상', nextNodeKey: 'book_anxious_6_2'),
      Option(text: '한 줄로도 충분한 짧은 응원', nextNodeKey: 'book_anxious_6_5'),
    ],
  ),
  'book_anxious_5_4': QuestionNode(
    question: '어떤 책이 당신의 숨구멍이 되어줄 수 있을까요?',
    options: [
      Option(text: '불안의 메커니즘을 밝혀줄 과학', nextNodeKey: 'book_anxious_6_1'),
      Option(text: '삶의 태도를 바꿔줄 철학', nextNodeKey: 'book_anxious_6_3'),
      Option(text: '잠시 현실을 잊게 할 장르 소설', nextNodeKey: 'book_anxious_6_4'),
      Option(text: '따뜻한 온기를 전해줄 에세이', nextNodeKey: 'book_anxious_6_2'),
      Option(text: '말 없이 지켜봐 줄 그림책', nextNodeKey: 'book_anxious_6_5'),
    ],
  ),
  'book_anxious_5_5': QuestionNode(
    question: '지금 이 순간, 당신의 마음이 가장 끌리는 곳은 어디인가요?',
    options: [
      Option(text: '진실을 파헤치는 이성의 세계', nextNodeKey: 'book_anxious_6_1'),
      Option(text: '서로를 다독이는 공감의 세계', nextNodeKey: 'book_anxious_6_2'),
      Option(text: '시간이 멈춘 듯한 고요의 세계', nextNodeKey: 'book_anxious_6_3'),
      Option(text: '손에 땀을 쥐는 긴장의 세계', nextNodeKey: 'book_anxious_6_4'),
      Option(text: '아무것도 요구하지 않는 무의 세계', nextNodeKey: 'book_anxious_6_5'),
    ],
  ),

  // ==================== depth 6: 요약 및 뉘앙스 분기 ====================
  'book_anxious_6_1': QuestionNode(
    question: '불안의 뿌리를 명확히 이해하고 머리로 통제하고 싶은 상태군요.',
    options: [
      Option(text: '이 감정의 원리를 분석하고 싶어요', nextNodeKey: 'book_anxious_7_1'),
      Option(text: '분석보다는 당장 진정이 필요해요', nextNodeKey: 'book_anxious_7_2'),
      Option(text: '철학적인 해답을 찾아보고 싶어요', nextNodeKey: 'book_anxious_7_3'),
      Option(text: '다른 세계로 완전히 몰입할래요', nextNodeKey: 'book_anxious_7_8'),
      Option(text: '머리보다는 몸을 움직여서 정리할래요', nextNodeKey: 'book_anxious_7_9'),
    ],
  ),
  'book_anxious_6_2': QuestionNode(
    question: '불편한 떨림에서 벗어나 평온한 안정을 찾고 싶은 상태군요.',
    options: [
      Option(text: '실질적으로 진정할 방법이 필요해요', nextNodeKey: 'book_anxious_7_2'),
      Option(text: '다정한 문장으로 위로받고 싶어요', nextNodeKey: 'book_anxious_7_4'),
      Option(text: '불안과 함께 사는 법을 배울래요', nextNodeKey: 'book_anxious_7_3'),
      Option(text: '글자보다는 시각적인 쉼을 원해요', nextNodeKey: 'book_anxious_7_5'),
      Option(text: '직접 손을 움직이며 털어내고 싶어요', nextNodeKey: 'book_anxious_7_9'),
    ],
  ),
  'book_anxious_6_3': QuestionNode(
    question: '불안을 없애기보다 있는 그대로 받아들이고 공존하고 싶은 상태군요.',
    options: [
      Option(text: '삶의 불완전함을 긍정하고 싶어요', nextNodeKey: 'book_anxious_7_3'),
      Option(text: '불안의 실체를 지적으로 파악할래요', nextNodeKey: 'book_anxious_7_1'),
      Option(text: '따뜻한 안식처 같은 이야기가 필요해요', nextNodeKey: 'book_anxious_7_4'),
      Option(text: '불안의 다양한 이면을 알고 싶어요', nextNodeKey: 'book_anxious_7_6'),
      Option(text: '긴 문장은 읽기 조금 버거워요', nextNodeKey: 'book_anxious_7_10'),
    ],
  ),
  'book_anxious_6_4': QuestionNode(
    question: '불안에 지쳐 아무런 방해 없이 쉴 수 있는 안전한 공간이 필요한 상태군요.',
    options: [
      Option(text: '아무 조건 없는 따뜻한 품이 필요해요', nextNodeKey: 'book_anxious_7_4'),
      Option(text: '눈이 편안한 시각적 휴식을 원해요', nextNodeKey: 'book_anxious_7_5'),
      Option(text: '복잡한 현실을 잊을 이야기에 빠질래요', nextNodeKey: 'book_anxious_7_8'),
      Option(text: '부담 없는 짧은 돌봄이 필요해요', nextNodeKey: 'book_anxious_7_10'),
      Option(text: '이해와 안정이 섞인 가이드를 원해요', nextNodeKey: 'book_anxious_7_7'),
    ],
  ),
  'book_anxious_6_5': QuestionNode(
    question: '불안이 너무 커서 무엇이 필요한지조차 알기 어려운 상태군요.',
    options: [
      Option(text: '그저 숨구멍이 될 짧은 글을 원해요', nextNodeKey: 'book_anxious_7_10'),
      Option(text: '시선을 돌릴 화려한 색채가 필요해요', nextNodeKey: 'book_anxious_7_5'),
      Option(text: '원인부터 차근차근 짚어보고 싶어요', nextNodeKey: 'book_anxious_7_1'),
      Option(text: '강렬한 서사 속으로 도망치고 싶어요', nextNodeKey: 'book_anxious_7_8'),
      Option(text: '생각을 멈추고 작은 일부터 실천할래요', nextNodeKey: 'book_anxious_7_9'),
    ],
  ),

  // ==================== depth 7: 최종 결과 (장르 분산) ====================
  'book_anxious_7_1': QuestionNode(
    question: '불안을 지적으로 탐구하고 싶은 당신에게 명쾌한 분석을 제안합니다.',
    options: [
      Option(
        text: '불안의 원리를 다룬 심리학',
        nextNodeKey: 'end',
        bookTags: ['심리', '이해', '분석', '통찰'],
      ),
      Option(
        text: '뇌과학으로 푸는 불안의 비밀',
        nextNodeKey: 'end',
        bookTags: ['뇌과학', '과학', '정보', '명쾌'],
      ),
      Option(
        text: '감정을 객관적으로 보는 인문서',
        nextNodeKey: 'end',
        bookTags: ['인문', '성찰', '지식', '객관'],
      ),
      Option(
        text: '불안한 시대를 읽는 사회학',
        nextNodeKey: 'end',
        bookTags: ['사회', '시대', '비평', '거시'],
      ),
      Option(
        text: '정신분석으로 찾는 자아의 뿌리',
        nextNodeKey: 'end',
        bookTags: ['정신분석', '자아', '탐구', '깊이'],
      ),
    ],
  ),
  'book_anxious_7_2': QuestionNode(
    question: '당장 마음을 가라앉힐 실질적인 도구가 필요한 당신을 위한 가이드입니다.',
    options: [
      Option(
        text: '인지행동치료 자가 워크북',
        nextNodeKey: 'end',
        bookTags: ['치료', '실습', '실용', '변화'],
      ),
      Option(
        text: '불안을 다스리는 마음 습관',
        nextNodeKey: 'end',
        bookTags: ['습관', '성장', '실천', '도구'],
      ),
      Option(
        text: '평온을 찾는 호흡과 명상법',
        nextNodeKey: 'end',
        bookTags: ['명상', '호흡', '안정', '가이드'],
      ),
      Option(
        text: '스트레스를 낮추는 생활 수칙',
        nextNodeKey: 'end',
        bookTags: ['건강', '생활', '정보', '관리'],
      ),
      Option(
        text: '불안을 지혜로 바꾸는 기술',
        nextNodeKey: 'end',
        bookTags: ['지혜', '실천', '방법', '효과'],
      ),
    ],
  ),
  'book_anxious_7_3': QuestionNode(
    question: '불안과 함께 머물며 삶을 긍정하고 싶은 당신을 위한 지혜입니다.',
    options: [
      Option(
        text: '불안을 수용하는 명상 에세이',
        nextNodeKey: 'end',
        bookTags: ['수용', '마음챙김', '평온', '사색'],
      ),
      Option(
        text: '스토아 철학자의 단단한 마음',
        nextNodeKey: 'end',
        bookTags: ['철학', '고전', '단단', '수양'],
      ),
      Option(
        text: '불완전함을 사랑하는 법',
        nextNodeKey: 'end',
        bookTags: ['인문', '성찰', '위로', '수용'],
      ),
      Option(
        text: '실존적 불안을 다룬 철학서',
        nextNodeKey: 'end',
        bookTags: ['철학', '존재', '사유', '본질'],
      ),
      Option(
        text: '현재에 머무는 삶의 기술',
        nextNodeKey: 'end',
        bookTags: ['현재', '평화', '자유', '지혜'],
      ),
    ],
  ),
  'book_anxious_7_4': QuestionNode(
    question: '지친 마음을 안아줄 다정한 안식처가 필요한 당신을 위한 문장입니다.',
    options: [
      Option(
        text: '다정한 온기의 공감 에세이',
        nextNodeKey: 'end',
        bookTags: ['에세이', '위로', '다정한', '따뜻한'],
      ),
      Option(
        text: '포근한 휴식 같은 힐링 소설',
        nextNodeKey: 'end',
        bookTags: ['소설', '힐링', '포근', '안식'],
      ),
      Option(
        text: '마음을 어루만지는 산문집',
        nextNodeKey: 'end',
        bookTags: ['산문', '감성', '치유', '공감'],
      ),
      Option(
        text: '일상의 작은 평화를 찾는 기록',
        nextNodeKey: 'end',
        bookTags: ['일상', '행복', '잔잔한', '소박'],
      ),
      Option(
        text: '누군가의 따뜻한 응원 편지',
        nextNodeKey: 'end',
        bookTags: ['편지', '응원', '다정한', '감동'],
      ),
    ],
  ),
  'book_anxious_7_5': QuestionNode(
    question: '글자조차 버거운 당신을 위해 눈을 감듯 편안한 책들을 골랐습니다.',
    options: [
      Option(
        text: '포근한 일러스트 그림책',
        nextNodeKey: 'end',
        bookTags: ['그림책', '시각', '포근', '동화'],
      ),
      Option(
        text: '아름다운 자연 풍경 사진집',
        nextNodeKey: 'end',
        bookTags: ['사진', '풍경', '여행', '아름다운'],
      ),
      Option(
        text: '여백이 많은 짧은 문장집',
        nextNodeKey: 'end',
        bookTags: ['짧은글', '여백', '부담', '가벼운'],
      ),
      Option(
        text: '색채가 주는 위로, 아트북',
        nextNodeKey: 'end',
        bookTags: ['예술', '색채', '감각', '풍성'],
      ),
      Option(
        text: '곁에 두기만 해도 좋은 디자인북',
        nextNodeKey: 'end',
        bookTags: ['물성', '안심', '소장', '예쁜'],
      ),
    ],
  ),
  'book_anxious_7_6': QuestionNode(
    question: '불안의 입체적인 면모를 탐구하고 싶은 당신에게 새로운 시각을 제안합니다.',
    options: [
      Option(
        text: '불안의 역사를 다룬 인문서',
        nextNodeKey: 'end',
        bookTags: ['역사', '문화', '인문', '탐구'],
      ),
      Option(
        text: '예술가들이 불안을 다루는 법',
        nextNodeKey: 'end',
        bookTags: ['예술', '창작', '표현', '감성'],
      ),
      Option(
        text: '불안을 소재로 한 문학 소설',
        nextNodeKey: 'end',
        bookTags: ['소설', '문학', '깊이', '인간'],
      ),
      Option(
        text: '불안의 사회적 배경 분석',
        nextNodeKey: 'end',
        bookTags: ['사회', '비평', '맥락', '이해'],
      ),
      Option(
        text: '진솔한 불안 고백 에세이',
        nextNodeKey: 'end',
        bookTags: ['경험', '진솔', '공감', '기록'],
      ),
    ],
  ),
  'book_anxious_7_7': QuestionNode(
    question: '이해와 안정이 모두 필요한 당신을 위한 균형 잡힌 가이드입니다.',
    options: [
      Option(
        text: '원인 분석과 해결법 통합서',
        nextNodeKey: 'end',
        bookTags: ['통합', '원인', '해결', '실용'],
      ),
      Option(
        text: '심리 이론과 자가 치료 매뉴얼',
        nextNodeKey: 'end',
        bookTags: ['이론', '방법', '가이드', '종합'],
      ),
      Option(
        text: '과학적 이해와 명상의 조화',
        nextNodeKey: 'end',
        bookTags: ['과학', '명상', '조화', '안정'],
      ),
      Option(
        text: '불안을 지혜로 바꾸는 워크북',
        nextNodeKey: 'end',
        bookTags: ['지혜', '워크북', '실천', '훈련'],
      ),
      Option(
        text: '이해를 돕는 풍부한 사례집',
        nextNodeKey: 'end',
        bookTags: ['사례', '심리', '이해', '다양'],
      ),
    ],
  ),
  'book_anxious_7_8': QuestionNode(
    question: '현실의 소음에서 벗어나고 싶은 당신을 위한 강력한 몰입의 이야기입니다.',
    options: [
      Option(
        text: '밤새워 읽는 추리 소설',
        nextNodeKey: 'end',
        bookTags: ['추리', '몰입', '재미', '반전'],
      ),
      Option(
        text: '긴장감 넘치는 스릴러 소설',
        nextNodeKey: 'end',
        bookTags: ['스릴러', '긴장', '속도', '흡입'],
      ),
      Option(
        text: '세상의 비밀을 파헤치는 음모론',
        nextNodeKey: 'end',
        bookTags: ['음모론', '미스터리', '이면', '비밀'],
      ),
      Option(
        text: '낯선 세계의 판타지 소설',
        nextNodeKey: 'end',
        bookTags: ['판타지', '모험', '상상', '탈출'],
      ),
      Option(
        text: '현실을 잊게 돕는 동화',
        nextNodeKey: 'end',
        bookTags: ['동화', '순수', '신비', '짧은'],
      ),
    ],
  ),
  'book_anxious_7_9': QuestionNode(
    question: '생각을 멈추고 손을 움직이고 싶은 당신을 위한 실질적인 가이드입니다.',
    options: [
      Option(
        text: '감정을 쏟아내는 감정 워크북',
        nextNodeKey: 'end',
        bookTags: ['기록', '워크북', '실천', '치유'],
      ),
      Option(
        text: '머릿속을 비우는 정리 기술',
        nextNodeKey: 'end',
        bookTags: ['정리', '비움', '단순', '실용'],
      ),
      Option(
        text: '일상을 세우는 습관 루틴',
        nextNodeKey: 'end',
        bookTags: ['습관', '루틴', '활기', '변화'],
      ),
      Option(
        text: '몸을 돌보는 수면 가이드',
        nextNodeKey: 'end',
        bookTags: ['수면', '건강', '정보', '회복'],
      ),
      Option(
        text: '단순한 몰입, 필사 노트',
        nextNodeKey: 'end',
        bookTags: ['필사', '몰입', '단순', '안정'],
      ),
    ],
  ),
  'book_anxious_7_10': QuestionNode(
    question: '버거운 당신을 위한 섬세한 돌봄입니다. 곁에 두는 것만으로 숨구멍이 될 책들입니다.',
    options: [
      Option(
        text: '여백이 많은 짧은 시집',
        nextNodeKey: 'end',
        bookTags: ['시', '여백', '짧은글', '감성'],
      ),
      Option(
        text: '평온한 풍경의 사진집',
        nextNodeKey: 'end',
        bookTags: ['사진', '풍경', '아름다운', '시각'],
      ),
      Option(
        text: '짧은 대화의 따뜻한 그림책',
        nextNodeKey: 'end',
        bookTags: ['그림책', '포근', '동화', '위로'],
      ),
      Option(
        text: '설명이 필요 없는 아트북',
        nextNodeKey: 'end',
        bookTags: ['예술', '감각', '직관', '색채'],
      ),
      Option(
        text: '손끝에 집중하는 컬러링북',
        nextNodeKey: 'end',
        bookTags: ['미술', '놀이', '집중', '무념'],
      ),
    ],
  ),
};
