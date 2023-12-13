import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neariyorsun/view/hesabim/sayfa_1.dart';
import 'package:neariyorsun/view/hesabim/sayfa_2.dart';

import '../../sabitler/ext.dart';

class Hesabim extends StatefulWidget {
  @override
  _HesabimState createState() => _HesabimState();
}

class _HesabimState extends State<Hesabim> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: renk("E0B0FF"),
              title: Center(
                child: Text(
                  "neArıyorsun'a Hoşgeldiniz",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.deepPurpleAccent),
                ),
              ),
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: "Giriş Yap",
                  ),
                  Tab(
                    text: "Üye Ol",
                  )
                ],
                indicatorColor: Colors.deepPurpleAccent,
              ),
            ),
            body: TabBarView(children: [
              Sayfa1(),
              Sayfa2()
            ],),
          )),
    );
  }
}
