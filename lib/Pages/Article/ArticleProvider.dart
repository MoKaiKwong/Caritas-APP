import '../../Models/Db/DbHelper.dart';

class ArticleProvider {
  Future<Article> getArticle(int id) async {
    // TODO: to be implemented 根据文章 id 获取文章详细内容
    Map data = {
      "Title": "致全体女性.md",
      "Path": "03 - 第一性",
      "Question": "这是一份送给女性全体的礼物，这里面铺了一条通向领袖资格的路。  ",
      "ZhiHu": "",
      "Author": "#Anonymity ",
      "Tags": "03 - 第一性",
      "Links":
          " [[爱]]  [[女权挑战]] [[女性之难]] [[致全体女性]] [[否定女权的父亲]] [[女舰长]] [[女性公平]] [[实质进展]] [[女权与女权主义]] [[要的是啥 - 女人]] [[质疑女权]] [[支持女权]] [[反女权的女性]] [[女权的历史趋势]]",
      "LastUpdate": "*2/07/2021* ",
      "Content":
          "  # 致全体女性    \n*这是一份送给女性全体的礼物，这里面铺了一条通向领袖资格的路。 * \n\n> Author: #Anonymity \nLast update: *2/07/2021* \nLinks: [[爱]]  [[女权挑战]] [[女性之难]] [[致全体女性]] [[否定女权的父亲]] [[女舰长]] [[女性公平]] [[实质进展]] [[女权与女权主义]] [[要的是啥 - 女人]] [[质疑女权]] [[支持女权]] [[反女权的女性]] [[女权的历史趋势]]\nhttps://zhihu.com/collection/369876193\nhttps://zhihu.com/collection/378738313\nhttps://zhihu.com/collection/304176992\nTags:  #方法实践SOP  \n沙海拾金：[[唯物论.jpg]]\n\n\n\n这是一个宏大的题目，在它的规模面前，我的力量微不足道。\n\n  \n\n但那又怎么样？\n\n  \n\n走得一步，就是一步，做得一分就是一分。\n\n  \n\n我相信会有越来越多的女性成熟起来，看到这是唯一真正永久解决问题的正确道路，懂得将重心转向推动女性领袖的养成研究和共同培育中来。\n\n  \n\n当你们自己群起投入这条路，我这个堂吉柯德奈何不了的风车巨人，对你们不过是纸糊的小丑而已。\n\n  \n\n女性要作为始祖要始开创自己的家族，女性要作为领袖开创自己的事业，的确是格外艰难，但这绝不是别寻捷径的理由。\n\n  \n\n你们不要去在意那些蠢蛋的冷嘲热讽，你们远比他们以为的强大，甚至，也远比你们自己所以为的更强大。\n\n  \n\n道路漫长且困难，只意味着你们更加需要拼命的学习，要加倍的努力，要加倍的摒弃侥幸。\n\n  \n\n**你们真正的问题是自卑，是自弃、是自卑与自弃之下的意图侥幸，而根本不是有任何意义上的意志、智力和能力的不如。**\n\n  \n\n我这几十年所见所闻，女性作为一个整体，无论是勇气、意志、努力和忍耐要远远的比男性成熟且强大。那些所谓的“格外困难”，相对于你们所拥有的能力而言，根本不难。\n\n  \n\n只要你们能摆脱被人强加的自卑幻觉，停止浪费精力在错误的方向上。\n\n  \n\n  \n\n我非常焦急的希望你们不要再把精力分散到其实最终无效的做法上。\n\n  \n\n无论用肉体的暴力还是用语言的暴力，只要用武力获得“胜利”，都只会证明对方缺少的只是更大的武力，启动无限的暴力竞赛。暴力竞赛中真正胜利的只有暴力，所有的参与者都是输家。这不可能通向任何真正稳定而不可抗拒的改变。\n\n  \n\n堂堂正正的去赢得你们的权柄，你们完全可以。"
    };
    return Article(
        id: id,
        title: data['Title'],
        question: data['Question'],
        content: data["Content"],
        author: data["Author"],
        lastUpdate: data["LastUpdate"],
        zhihuLink: '');
  }
}
