import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:social_media_app/pages/home_page.dart';
import 'package:social_media_app/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/ic_home.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/ic_favorite.svg'),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/ic_add.svg'),
            label: 'Add Post',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/ic_messages.svg'),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/ic_user.svg'),
            label: 'User',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.amberAccent,
      ),
    );
  }
}

final pages = [
  HomePage(),
  Center(child: Text('Favorites')),
  Center(
    child: Text('Add Post'),
  ),
  Center(
    child: Text('Messages'),
  ),
  Center(
    child: ProfilePage(),
  ),
];
