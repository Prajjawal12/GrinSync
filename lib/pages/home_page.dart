import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_media_app/components/post_item.dart';
import 'package:social_media_app/components/toolbar.dart';
import 'package:social_media_app/config/app_routes.dart';

class HomePage extends StatelessWidget {
  final List<String> users = [];
  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: ToolBar(
        title: 'GrinSync',
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.location);
            },
            icon: SvgPicture.asset('assets/svg/ic_location.svg'),
          ),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(user: users[index]);
        },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 26,
          );
        },
      ),
    );
  }

  mockUsersFromServer() {
    for (var i = 0; i < 10; i++) {
      users.add('User number $i');
    }
  }
}
