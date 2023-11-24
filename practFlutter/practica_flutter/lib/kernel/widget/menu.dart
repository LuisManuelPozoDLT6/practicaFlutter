import 'package:flutter/material.dart';
import 'package:practica_flutter/config/navigation/home_navigation.dart';
import 'package:practica_flutter/kernel/widget/custom_bottom_navigation.dart';

class Menu extends StatefulWidget{
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: IndexedStack(
        index: _selectIndex,
        children: const [HomeNavigation()]
      ),
      bottomNavigationBar: CustomBottomNavigationTab(selectedIndex: _selectIndex, onItemTapped: _onItemTapped),
    );
  }
}