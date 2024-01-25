import 'package:flutter/material.dart';
import 'package:social_media_app/components/toolbar.dart';
import 'package:social_media_app/components/user_avatar.dart';
import 'package:social_media_app/styles/app_text.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(
        title: 'Profile',
        actions: [
          PopupMenuButton<ProfileMenu>(onSelected: (value) {
            switch (value) {
              case ProfileMenu.edit:
                Navigator.of(context).pushNamed('/edit_profile');
                break;
              case ProfileMenu.logout:
                print('logout');
                break;
              default:
            }
          }, itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Text('Edit'),
                value: ProfileMenu.edit,
              ),
              PopupMenuItem(
                child: Text('Log Out'),
                value: ProfileMenu.logout,
              ),
            ];
          })
        ],
      ),
      body: Column(
        children: [
          UserAvatar(size: 90),
          SizedBox(
            height: 24,
          ),
          Text(
            'Professor',
            style: AppText.header2,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Madagascar',
            style: AppText.subtitle3,
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '473',
                    style: AppText.header2,
                  ),
                  Text('Followers'),
                ],
              ),
              Column(
                children: [
                  Text(
                    '119',
                    style: AppText.header2,
                  ),
                  Text('Posts')
                ],
              ),
              Column(
                children: [
                  Text(
                    '860',
                    style: AppText.header2,
                  ),
                  Text('Following')
                ],
              )
            ],
          ),
          Divider(
            thickness: 1,
            height: 24,
          )
        ],
      ),
    );
  }
}
