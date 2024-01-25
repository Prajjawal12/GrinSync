import 'package:flutter/material.dart';
import 'package:social_media_app/components/app_text_field.dart';
import 'package:social_media_app/components/toolbar.dart';
import 'package:social_media_app/components/user_avatar.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ToolBar(title: 'Edit Profile'),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            UserAvatar(size: 120),
            AppTextField(hint: 'First Name'),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: 'Last Name'),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: 'Phone Number'),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: 'Location')
          ],
        ),
      ),
    );
  }
}
