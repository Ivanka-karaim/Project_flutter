import 'package:flutter/material.dart';

class AppModel  extends ChangeNotifier{
  final List<String> _imageUrlsSaved = [
    'assets/images/my.jpg',
    'assets/images/my1.jpg',
  ];

  List<String> get imageUrlsSaved => _imageUrlsSaved;

  void changeListImage(str, index){
    index? _imageUrlsSaved.remove(str): _imageUrlsSaved.add(str);
    notifyListeners();
  }
}