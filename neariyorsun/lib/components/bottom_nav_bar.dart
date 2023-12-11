import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neariyorsun/riverpod_management.dart';

import '../sabitler/ext.dart';

class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context , WidgetRef ref) {
    var watch = ref.watch(bottomNavBarRiverpod);
    var read = ref.read(bottomNavBarRiverpod);
    return BottomNavigationBar(
      backgroundColor: renk("#E0B0FF"),
      selectedItemColor: Colors.deepPurpleAccent,
        items: read.items,
        currentIndex: watch.currentIndex,
        onTap: (index) => read.setCurrentIndex(index),
      type: BottomNavigationBarType.fixed,
    );
  }
}

