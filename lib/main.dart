import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inventory_app/page/loginPage.dart';

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
      home: LoginPage(),
      theme: _baseTheme,
    );
  }
}
