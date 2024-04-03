import 'package:cmp_walkthrough/Screens/cart.dart';
import 'package:cmp_walkthrough/Screens/favourite.dart';
import 'package:cmp_walkthrough/Screens/home_page.dart';
import 'package:cmp_walkthrough/Screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:cmp_walkthrough/ExternalPackages/CurvedNavBar/curved_nav_bar_pkg.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  // List of your screens
  final List<Widget> _screens = [
    HomePage(),
    const Favourite(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        height: 50.0,
        items: const <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite_outline,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_cart,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          ),
        ],
        color: Colors.deepPurple,
        buttonBackgroundColor: Colors.deepPurple,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
