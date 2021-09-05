import 'package:flutter/material.dart';
import 'package:inventory_app/page/detail/detailBarang.dart';
import 'package:inventory_app/page/detail/detailBarangDipinjam.dart';
import 'package:inventory_app/page/detail/detailProsesBarang.dart';
import 'package:inventory_app/page/detail/detailRekap.dart';
import 'package:inventory_app/page/halamanUtama.dart';
import 'package:inventory_app/page/loginPage.dart';
import 'package:inventory_app/page/registerPage.dart';
import 'package:flutter/services.dart';
import 'package:inventory_app/page/rekapData.dart';
import 'package:inventory_app/page/user/editUser.dart';
import 'package:inventory_app/page/user/userPage.dart';

ThemeData _baseTheme = ThemeData(
  canvasColor: Colors.white,
);
Future<void> main() async {
  // Untuk Lock Orientation
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Invent APP',
      home: HalamanUtama(),
      theme: _baseTheme,
    );
  }
}
