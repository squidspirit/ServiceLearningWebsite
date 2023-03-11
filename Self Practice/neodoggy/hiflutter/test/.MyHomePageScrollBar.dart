import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:like_button/like_button.dart';
import 'package:flutter/src/widgets/implicit_animations.dart';
import './BigCard.dart';
import './MyAppState.dart';
import 'NavBar.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({
    super.key,
    required this.title
  });

  final String title;
  final ScrollController _firstController = ScrollController();
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var card = appState.current;
    IconData icon;
    if (appState.favorites.contains(card)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: const Text('ServiceSite_LOGO'),
        backgroundColor: Color(0xFF1f1f1f),
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Builder(builder: (BuildContext context) {
                  return IconButton(
                      onPressed: () {},
                      tooltip: 'Show Favourites',
                      icon: Icon(Icons.favorite));
                }),
                SizedBox(width: 10),
                Icon(Icons.search),
                SizedBox(width: 10),
                Icon(Icons.more_vert),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        height: 180,
        padding: EdgeInsets.only(left: 50),
        child: Scrollbar(
          thumbVisibility: true,
          controller: _firstController,
          child: ListView.builder(
            controller: _firstController,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFF1a1a1a),
                  ),
                  width: 400,
                  height: 180,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      BigCard(card: card),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(width: 10),
                          LikeButton(
                            size: 25,
                            isLiked: isLiked,
                            likeBuilder: (isLiked) {
                              final color = isLiked
                                  ? Color(0xFFff4060)
                                  : Color(0xFFFFFFFF);
                              return Icon(
                                  isLiked
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: color,
                                  size: 25);
                            },
                            circleColor: const CircleColor(
                                start: Color(0xFFff4060),
                                end: Color(0xFFff4060)),
                            bubblesColor: const BubblesColor(
                              dotPrimaryColor: Color(0xFFff4060),
                              dotSecondaryColor: Color(0xFFff4060),
                            ),
                            onTap: (isLiked) async {
                              this.isLiked = !isLiked;
                              this.isLiked
                                  ? appState.addFavorite()
                                  : appState.delFavorite();
                              return !isLiked;
                            },
                          ),
                          Spacer(),
                          //SizedBox(width: 10),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size.zero,
                              padding: EdgeInsets.all(0),
                            ),
                            onPressed: () {
                              this.isLiked = false;
                              appState.getNext();
                              //appState.listCur();
                            },
                            child: AnimatedContainer(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: isLiked
                                    ? Color(0xFF00ba7c)
                                    : Color(0xFFff4060),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 6),
                              duration: Duration(milliseconds: 300),
                              child: Center(
                                child: Text(
                                  'Next',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
