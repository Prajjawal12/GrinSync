import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_media_app/components/bottom_navigation_item.dart';

import 'package:social_media_app/pages/home_page.dart';
import 'package:social_media_app/pages/profile_page.dart';
import 'package:social_media_app/styles/app_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

enum Menus { home, favorite, add, messages, user }

class _MainPageState extends State<MainPage> {
  Menus currentIndex = Menus.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex.index],
      bottomNavigationBar: _MyBottomNavigation(
        currentIndex: currentIndex,
        onTap: (value) => setState(() {
          currentIndex = value;
        }),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset('assets/svg/ic_home.svg'),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset('assets/svg/ic_favorite.svg'),
      //       label: 'Favourite',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset('assets/svg/ic_add.svg'),
      //       label: 'Add Post',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset('assets/svg/ic_messages.svg'),
      //       label: 'Message',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset('assets/svg/ic_user.svg'),
      //       label: 'User',
      //     ),
      //   ],
      //   currentIndex: currentIndex,
      //   onTap: (index) {
      //     setState(() {
      //       currentIndex = index;
      //     });
      //   },
      //   type: BottomNavigationBarType.fixed,
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   backgroundColor: Colors.amberAccent,
      // ),
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

class _MyBottomNavigation extends StatelessWidget {
  final Menus currentIndex;
  final ValueChanged<Menus> onTap;

  const _MyBottomNavigation({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            height: 70,
            margin: const EdgeInsets.all(24),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: BottomNavigationItem(
                      onPressed: () => onTap(Menus.home),
                      icon: 'assets/svg/ic_home.svg',
                      current: currentIndex,
                      name: Menus.home),
                ),
                Expanded(
                  child: BottomNavigationItem(
                    onPressed: () => onTap(Menus.favorite),
                    icon: 'assets/svg/ic_favorite.svg',
                    current: currentIndex,
                    name: Menus.favorite,
                  ),
                ),
                Spacer(),
                Expanded(
                  child: BottomNavigationItem(
                    onPressed: () => onTap(Menus.messages),
                    icon: 'assets/svg/ic_messages.svg',
                    current: currentIndex,
                    name: Menus.messages,
                  ),
                ),
                Expanded(
                  child: BottomNavigationItem(
                    onPressed: () => onTap(Menus.user),
                    icon: 'assets/svg/ic_user.svg',
                    current: currentIndex,
                    name: Menus.user,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          child: GestureDetector(
            onTap: () => onTap(Menus.add),
            child: Container(
              width: 64,
              height: 64,
              padding: const EdgeInsets.all(18),
              decoration: const BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                'assets/svg/ic_add.svg',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
