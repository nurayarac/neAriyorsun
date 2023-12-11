
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KategoriCard extends StatelessWidget {
  final String kategoriAdi;
  final IconData icon;
  final VoidCallback onPressed;

  const KategoriCard({
    Key? key,
    required this.kategoriAdi,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(kategoriAdi),
        trailing: Icon(icon),
        onTap: onPressed,
      ),
    );
  }
}