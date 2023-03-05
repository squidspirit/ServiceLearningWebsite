import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class MyAppState extends ChangeNotifier {

  var currentWordPair = WordPair.random();

  void nextState() {
    currentWordPair = WordPair.random();
    notifyListeners();
  }


  var favorites = <WordPair>[];
  var favoriteIcon = Icons.favorite_border;

  bool toggleFavorite(WordPair wordPair) {
    final bool existed = favorites.remove(wordPair);
    if (!existed) {
      favoriteIcon = Icons.favorite;
      favorites.add(wordPair);
    }
    else {
      favoriteIcon = Icons.favorite_border;
    }
    notifyListeners();
    return !existed;
  }

  IconData getFavoriteIcon() {
    if (favorites.contains(currentWordPair)) {
      return Icons.favorite;
    } else {
      return Icons.favorite_border;
    }
  }
}