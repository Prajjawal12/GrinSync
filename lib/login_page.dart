import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              Spacer(),
              const Text(
                'Hello, Welcome Back!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Urbanist'),
              ),
              SizedBox(
                height: 16,
              ),
              const Text(
                'Login To Continue',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 68,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Username',
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
                  hintText: 'Password',
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
                  child: const Text('Forgot Password?'),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    print("Login clicked");
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text(
                    'Log In',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Or sign in with',
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
                    const Text('Login With Google')
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 48,
                child: ElevatedButton(
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
                      const Text('Login with Facebook')
                    ],
                  ),
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
                    style: TextButton.styleFrom(foregroundColor: Colors.amber),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
