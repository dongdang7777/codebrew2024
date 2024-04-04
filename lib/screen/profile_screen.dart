import 'package:flutter/material.dart';

class profile_screen extends StatefulWidget{
  @override
  _profile_screen createState() => _profile_screen();
}

class _profile_screen extends State<profile_screen> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Text(
          'profile page'
        ),
      ),
    );
  }
}