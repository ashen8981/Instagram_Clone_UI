import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/account.dart';
import 'package:instagram_clone_ui/pages/home.dart';
import 'package:instagram_clone_ui/pages/reels.dart';
import 'package:instagram_clone_ui/pages/search.dart';
import 'package:instagram_clone_ui/pages/shop.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //navigate around the bottom navigation bar
  int _selectedIndex = 0;
  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  //different pages navigate to
  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _navigateBottomBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home',),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call),label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shop),label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'account')
        ],
      ),
    );
  }
}
