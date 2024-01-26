import 'package:flutter/material.dart';
import 'package:social_media_app/components/app_text_field.dart';
import 'package:social_media_app/components/toolbar.dart';
import 'package:social_media_app/components/user_avatar.dart';
import 'package:social_media_app/config/app_strings.dart';
import 'package:social_media_app/styles/app_colors.dart';

enum Gender { none, male, female, others }

class EditProfile extends StatefulWidget {
  EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(title: 'Edit Profile'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: UserAvatar(size: 120),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                      child: Icon(
                        Icons.edit,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: AppStrings.firstName),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: AppStrings.lastName),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: AppStrings.phoneNumber),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: AppStrings.location),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: 'Birthday'),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                      title: Text('Male'),
                      value: Gender.male,
                      visualDensity: const VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.maximumDensity),
                      contentPadding: EdgeInsets.zero,
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = Gender.male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile(
                      title: Text('Female'),
                      value: Gender.female,
                      visualDensity: const VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.maximumDensity),
                      groupValue: gender,
                      contentPadding: EdgeInsets.zero,
                      onChanged: (value) {
                        setState(() {
                          gender = Gender.female;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile(
                      title: Text('Other'),
                      value: Gender.others,
                      visualDensity: const VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.maximumDensity),
                      groupValue: gender,
                      contentPadding: EdgeInsets.zero,
                      onChanged: (value) {
                        setState(() {
                          gender = Gender.others;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
