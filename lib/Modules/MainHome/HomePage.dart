import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_coffee_ui/Modules/UserHome/userhomeview.dart';
import 'package:flutter_coffee_ui/Modules/cart/animation.dart';

import '../Favuriote/UserFavorite.dart';
import '../Userid/UserIdview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  void bottomnavbar(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    const UserHome(),
    const UserFavorite(),
    const animation(),
    const UserId(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: bottomnavbar,
          //backgroundColor: Colors.transparent,
          selectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.cart_fill,
                ),
                label: 'cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          ]),
    );
  }
}
