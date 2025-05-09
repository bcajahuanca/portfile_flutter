import 'package:flutter/material.dart';
import 'package:portfolio_web/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      title: 'bcajahuanca',
      home: HomePage(),
    );
  }
}
