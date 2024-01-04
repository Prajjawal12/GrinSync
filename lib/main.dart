import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade900,
        body: Column(
          children: [
            const Text('Hello, Welcome Back!'),
            const Text('Login To Continue'),
            const TextField(
              decoration: InputDecoration(hintText: 'Username'),
            ),
            const TextField(
              decoration: InputDecoration(hintText: 'Password'),
            ),
            TextButton(
              onPressed: () {
                print('clicked');
              },
              child: const Text('Forgot Password?'),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
              ),
              onPressed: () {
                print("Login clicked");
              },
              child: const Text('Log In'),
            ),
            SizedBox(
              height: 30,
            ),
            Text('Or sign in with'),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent)),
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
                  Image.asset(
                    'assets/images/facebook.png',
                    width: 22,
                    height: 22,
                  )
                ],
              ),
            ),
            Row(
              children: [
                Text('Don\'t have an account? '),
                TextButton(onPressed: () {}, child: Text('Sign Up'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
