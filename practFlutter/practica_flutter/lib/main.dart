import 'package:flutter/material.dart';
import 'package:practica_flutter/kernel/widget/menu.dart';
import 'package:practica_flutter/kernel/widget/splash.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => const Splash(),
        '/menu' : (context) => const Menu()
      },
    );
  }
}
