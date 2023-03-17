import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class MainAppState extends ChangeNotifier {
  bool hasUsn = false;
  bool hasPsw = false;
  var current = WordPair.random();
  var favorites = [];
  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }
  // void listCur(){
  //   print('--');
  //   for(WordPair s in favorites){
  //     print(s);
  //   }
  // }
  void addFavorite() {
    if (!favorites.contains(current)) {
      favorites.add(current);
    }
    notifyListeners();
  }
  void delFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    }
    notifyListeners();
  }
  void inU() {
    hasUsn = true;
    notifyListeners();
  }
  void inP() {
    hasPsw = true;
    notifyListeners();
  }
}
