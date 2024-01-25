import 'package:flutter/material.dart';
import 'package:social_media_app/config/app_routes.dart';
import 'package:social_media_app/config/app_strings.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Spacer(),
                const Text(
                  AppStrings.helloWelcome,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Urbanist'),
                ),
                SizedBox(
                  height: 15,
                ),
                const Text(
                  AppStrings.loginToContinue,
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
                TextField(
                  decoration: InputDecoration(
                    hintText: AppStrings.username,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: AppStrings.password,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      print('clicked');
                    },
                    style: TextButton.styleFrom(foregroundColor: Colors.white),
                    child: const Text(AppStrings.forgotPassword),
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: 250,
                  child: SizedBox(
                    height: 47,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context)
                        //     .push(MaterialPageRoute(builder: (context) {
                        //   return HomePage();
                        // }));
                        Navigator.of(context)
                            .pushReplacementNamed(AppRoutes.main);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      child: const Text(
                        'Log In',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  AppStrings.orSignInWith,
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  onPressed: () {
                    print('Google Is Clicked');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/google.png',
                        width: 22,
                        height: 22,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      const Text(AppStrings.loginWithGoogle)
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/facebook.png',
                        width: 22,
                        height: 22,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      const Text(AppStrings.loginWithFacebook)
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Don\'t have an account? ',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.amber),
                      ),
                      style:
                          TextButton.styleFrom(foregroundColor: Colors.amber),
                    )
                  ],
                ),
                Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
