import 'package:flutter/material.dart';
import 'package:inventory_app/page/detailBarang.dart';
import 'package:inventory_app/page/halamanUtama.dart';
import 'package:inventory_app/page/loginPage.dart';
import 'package:inventory_app/page/registerPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Invent APP',
      home: DetailBarang(),
    );
  }
}
