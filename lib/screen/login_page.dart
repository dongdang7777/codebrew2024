import 'package:flutter/material.dart';
import 'package:codebrew2024/widgets/login_button.dart';
import 'package:codebrew2024/widgets/login_button_fb.dart';
import 'package:codebrew2024/widgets/login_button_google.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/logo.png',
                  height: 150,
                  width: 150,
                  fit: BoxFit.contain,
                ),
                const Text(
                  'Welcome Back!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                  ),
                ),
                const Text(
                  'Log in to Fwend',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
                  width: 600,
                  height: 70,
                  child:  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Your email',
                      border: OutlineInputBorder(),
                    ),
                    controller: emailController,
                  ),
                ),
                
                Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                  width: 600,
                  height: 70,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                    controller: passwordController,
                  ),
                ),
                LoginButton(),
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: const Text(
                    'or continue with',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ),
                LoginButtonGoogle(),
                LoginButtonfb(),
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'New to Fwend? '),
                        TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(color: Color(0xffD3560D),
                          fontWeight: FontWeight.w900,), 
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                  child: const Text.rich(
                    TextSpan(
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'By signing in, you agree to our '),
                        TextSpan(
                          text: 'Terms and Services',
                          style: TextStyle(color: Color(0xff000000)),
                        ),
                        TextSpan(text: ' and '),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(color: Color(0xff000000)),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center, // This will center the text
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
