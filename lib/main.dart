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
        body: const Column(
          children: [
            Text('Hello, Welcome Back!'),
            Text('Login To Continue'),
            TextField(
              decoration: InputDecoration(hintText: 'Username'),
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Password'),
            ),
          ],
        ),
      ),
    );
  }
}
