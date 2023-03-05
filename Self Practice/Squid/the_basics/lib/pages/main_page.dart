import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_basics/my_app_state.dart';
import 'package:the_basics/widgets/big_card.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var wordPair = appState.currentWordPair;

    IconData favoriteIcon;
    favoriteIcon = appState.favorites.contains(wordPair)
      ? Icons.favorite : Icons.favorite_border;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BigCard(wordPair: wordPair),
          SizedBox(height: 20),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                icon: Icon(favoriteIcon),
                label: Text("Like"),
                onPressed: () {
                  appState.toggleFavorite(wordPair);
                }
              ),
              SizedBox(width: 20),
              ElevatedButton(
                child: Text("Next"),
                onPressed: () => appState.nextState(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}