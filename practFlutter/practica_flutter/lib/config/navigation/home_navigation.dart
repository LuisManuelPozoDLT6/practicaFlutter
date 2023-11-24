import 'package:flutter/material.dart';
import 'package:practica_flutter/modules/home.dart';

class HomeNavigation extends StatelessWidget{
  const HomeNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home':(context) => Home()
      },
    );
  }

}