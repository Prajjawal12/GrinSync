import 'package:flutter/material.dart';
import 'package:social_media_app/styles/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({required this.user, super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
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
                user,
                style: AppText.subtitle3,
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Image.asset('assets/temp/post1.jpg'),
          SizedBox(
            height: 12,
          ),
          Text(
            'Post Content',
            style: AppText.subtitle3,
          )
        ],
      ),
    );
  }
}
