import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:neariyorsun/riverpod_management.dart';

import '../../components/bottom_nav_bar.dart';


class BaseScaffold extends ConsumerWidget {
  const BaseScaffold({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context , WidgetRef ref) {
    var watch = ref.watch(bottomNavBarRiverpod);
    return Scaffold(
      bottomNavigationBar:BottomNavBar() ,
      body: watch.body(),
    );
  }
}
