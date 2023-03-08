import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:like_button/like_button.dart';
import 'package:flutter/src/widgets/implicit_animations.dart';
import './BigCard.dart';
import './MyAppState.dart';

class MyHomePage extends StatelessWidget {
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
      //backgroundColor: Color(0xFF1f1f1f),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color(0xFF1a1a1a),
          ),
          height: 180,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          //color: Color(0xFF1a1a1a),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text('hello world'),
              BigCard(card: card),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  LikeButton(
                    size: 25,
                    isLiked: isLiked,
                    likeBuilder: (isLiked) {
                      final color =
                          isLiked ? Color(0xFFff4060) : Color(0xFFFFFFFF);
                      return Icon(
                          isLiked ? Icons.favorite : Icons.favorite_border,
                          color: color,
                          size: 25);
                    },
                    circleColor: CircleColor(
                        start: Color(0xFFff4060), end: Color(0xFFff4060)),
                    bubblesColor: BubblesColor(
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
                  SizedBox(width: 10),
                  // ElevatedButton.icon(
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: Color(0xFF1a1a1a),
                  //     foregroundColor: Color(0xff3f3f3f),
                  //   ),
                  //   onPressed: () {
                  //     appState.toggleFavorite();
                  //   },
                  //   icon: Icon(
                  //     icon,
                  //     color: Color(0xFFff4060),
                  //   ),
                  //   label: Text(
                  //     'Like',
                  //     style: TextStyle(
                  //       color: Color(0xFFFFFFFF),
                  //     ),
                  //   ),
                  //   onHover: (bool onH){
                  //     //print(onH);
                  //   },
                  // ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.all(0),
                    ),
                    onPressed: () {
                      this.isLiked = false;
                      appState.getNext();
                      appState.listCur();
                    },
                    child: AnimatedContainer(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: isLiked ? Color(0xFF00ba7c) : Color(0xFFf91880),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 6),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
