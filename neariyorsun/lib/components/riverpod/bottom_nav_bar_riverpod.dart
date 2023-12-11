import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neariyorsun/view/anasayfa/anasayfa.dart';
import 'package:neariyorsun/view/favoriler/favoriler.dart';
import 'package:neariyorsun/view/hesabim/hesabim.dart';
import 'package:neariyorsun/view/kategoriler/kategoriler.dart';

class BottomNavBarRiverpod extends ChangeNotifier{

  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home) , label: "Anasayfa"),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.equal_circle) , label: "Kategoriler"),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart), label: "Favoriler"),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled) , label: "Hesabım"),
  ];

  int currentIndex = 0;

  void setCurrentIndex(int index){
    currentIndex = index;
    notifyListeners();
  }
  Widget body(){
    switch(currentIndex){
      case 0:
        return Anasayfa();
      case 1:
        return Kategoriler();
      case 2 :
        return Favoriler();
      case 3 :
        return Hesabim();
      default:
        return Anasayfa();
    }
  }
}