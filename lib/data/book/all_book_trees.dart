// 모든 감정별 책 트리를 하나로 합치는 파일
import '../../question_tree.dart' as qt;
import 'sad_tree.dart';
import 'empty_tree.dart';
import 'tired_tree.dart';
import 'burnout_tree.dart';
import 'excited_tree.dart';
import 'happy_tree.dart';
import 'anxious_tree.dart';
import 'worried_tree.dart';
import 'bored_tree.dart';
import 'normal_tree.dart';

// 모든 책 추천 트리를 하나로 합침
final Map<String, qt.QuestionNode> allBookTrees = {
  // Root 노드
  'book_root': qt.QuestionNode(
    question: '오늘의 감정은 어떠신가요?',
    options: [
      qt.Option(text: '우울', nextNodeKey: 'book_sad_2_1'),
      qt.Option(text: '공허', nextNodeKey: 'book_empty_2_1'),
      qt.Option(text: '피로', nextNodeKey: 'book_tired_2_1'),
      qt.Option(text: '번아웃', nextNodeKey: 'book_burnout_2_1'),
      qt.Option(text: '설렘', nextNodeKey: 'book_excited_2_1'),
      qt.Option(text: '즐거움', nextNodeKey: 'book_happy_2_1'),
      qt.Option(text: '불안', nextNodeKey: 'book_anxious_2_1'),
      qt.Option(text: '고민', nextNodeKey: 'book_worried_2_1'),
      qt.Option(text: '심심', nextNodeKey: 'book_bored_2_1'),
      qt.Option(text: '평범', nextNodeKey: 'book_normal_2_1'),
    ],
  ),

  // 각 감정별 트리 합치기
  ...bookSadTree,
  ...bookEmptyTree,
  ...bookTiredTree,
  ...bookBurnoutTree,
  ...bookExcitedTree,
  ...bookHappyTree,
  ...bookAnxiousTree,
  ...bookWorriedTree,
  ...bookBoredTree,
  ...bookNormalTree,
};

