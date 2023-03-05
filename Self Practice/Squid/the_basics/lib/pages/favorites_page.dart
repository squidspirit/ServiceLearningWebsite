import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_basics/my_app_state.dart';
import 'package:the_basics/widgets/favorite_word_pair.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text('You have ${appState.favorites.length} favorites:'),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: constraints.maxHeight / 2,
              width: constraints.maxWidth / 1.5,
              // child: AnimatedList(
              //   itemBuilder: (context, index, animation) {
              //     return 
              //   },
              // ),
              child: SingleChildScrollView(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    for (var favoritePair in appState.favorites)
                      FavoriteWordPair(favoritePair: favoritePair)
                  ],
                ),
              ),
            ),
          ],
        );
      }
    );
  }
}
