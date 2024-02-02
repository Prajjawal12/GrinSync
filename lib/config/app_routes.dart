import 'package:social_media_app/pages/edit_profile.dart';
import 'package:social_media_app/pages/home_page.dart';
import 'package:social_media_app/pages/login_page.dart';
import 'package:social_media_app/pages/main_page.dart';
import 'package:social_media_app/pages/nearby_page.dart';

class AppRoutes {
  static final pages = {
    login: (context) => LoginPage(),
    home: (context) => HomePage(),
    main: (context) => MainPage(),
    editProfile: (context) => EditProfile(),
    location: (context) => NearbyPage(),
  };

  static const login = '/login';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const location = '/location';
}
