import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_basics/my_app_state.dart';

class FavoriteWordPair extends StatefulWidget {
  const FavoriteWordPair({
    super.key,
    required this.favoritePair,
  });

  final WordPair favoritePair;

  @override
  State<FavoriteWordPair> createState() => _FavoriteWordPairState();
}

class _FavoriteWordPairState extends State<FavoriteWordPair> {

  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {

    var appState = context.watch<MyAppState>();

    var theme = Theme.of(context);
    var style = theme.textTheme.displayLarge!.copyWith(
      fontSize: 30,
      color: theme.colorScheme.onSecondary,
    );

    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            color: theme.colorScheme.secondary,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: 8.0,
                bottom: 8.0,
              ),
              child: Text(
                widget.favoritePair.asLowerCase,
                style: style,
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.delete_outline),
            onPressed: () => appState.toggleFavorite(widget.favoritePair)
          ),
        ],
      ),
    );

    // return AnimatedOpacity(
    //   opacity: _opacity,
    //   duration: Duration(milliseconds: 100),
    //   onEnd: () {
    //     appState.toggleFavorite(widget.favoritePair);
    //   },
    //   child: Padding(
    //     padding: const EdgeInsets.only(
    //       left: 10,
    //       right: 10,
    //     ),
    //     child: Row(
    //       mainAxisSize: MainAxisSize.min,
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Card(
    //           color: theme.colorScheme.secondary,
    //           child: Padding(
    //             padding: const EdgeInsets.only(
    //               left: 16.0,
    //               right: 16.0,
    //               top: 8.0,
    //               bottom: 8.0,
    //             ),
    //             child: Text(
    //               widget.favoritePair.asLowerCase,
    //               style: style,
    //             ),
    //           ),
    //         ),
    //         IconButton(
    //           icon: Icon(Icons.delete_outline),
    //           onPressed: () {
    //             setState(() {
    //               _opacity = 0.0;
    //             });
    //           }
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}