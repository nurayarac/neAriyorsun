import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neariyorsun/sabitler/ext.dart';

import 'kategori_card.dart';

class Kategoriler extends ConsumerWidget {

  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context ,WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        backgroundColor: renk("E0B0FF"),
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          child: GestureDetector(
            onTap: (){
            print("Ürün Ara")  ;
          },
            child: Icon(
              Icons.search,
              color: Colors.deepPurpleAccent,
            ),
          ),
        ),
        title: GestureDetector(
          onTap: (){

          },
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: "Ürün Ara",
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
        body: ListView(
          children: [
            KategoriCard(
                kategoriAdi: "Sweatshirt",
                icon: CupertinoIcons.chevron_forward,
                onPressed: (){
                },
            ),
            KategoriCard(
              kategoriAdi: "Pantolon",
              icon: CupertinoIcons.chevron_forward,
              onPressed: (){
              },
            ),
            KategoriCard(
              kategoriAdi: "Kazak",
              icon: CupertinoIcons.chevron_forward,
              onPressed: (){
              },
            ),
            KategoriCard(
              kategoriAdi: "Elbise",
              icon: CupertinoIcons.chevron_forward,
              onPressed: (){
              },
            ),
            KategoriCard(
              kategoriAdi: "Mont",
              icon: CupertinoIcons.chevron_forward,
              onPressed: (){
              },
            ),
            KategoriCard(
              kategoriAdi: "Çanta",
              icon: CupertinoIcons.chevron_forward,
              onPressed: (){
              },
            ),
            KategoriCard(
              kategoriAdi: "Ayakkabı",
              icon: CupertinoIcons.chevron_forward,
              onPressed: (){
              },
            ),
          ],
        ),
      ),
    );
  }
}
