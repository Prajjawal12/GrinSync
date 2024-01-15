import 'package:flutter/material.dart';
import 'package:social_media_app/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Text(
          'Some Title',
          style: TextStyle(color: Colors.white),
        ),
        actions: [Icon(Icons.location_on_outlined)],
      ),
      body: ListView(
        children: mockUsersFromServer(),
      ),
    );
  }

  Widget _userItem() {
    return Row(
      children: [
        Image.asset(
          'assets/temp/dummy_profile.jpeg',
          width: 40,
          height: 40,
        ),
        SizedBox(
          width: 16,
        ),
        Text(
          'Professor Ding Dong',
          style: TextStyle(color: Colors.pink),
        ),
      ],
    );
  }

  List<Widget> mockUsersFromServer() {
    List<Widget> users = [];
    for (var i = 0; i < 10; i++) {
      users.add(_userItem());
    }
    return users;
  }
}