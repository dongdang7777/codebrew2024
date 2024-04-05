import 'package:flutter/material.dart';
import 'package:codebrew2024/screen/main_page.dart';
import 'package:codebrew2024/screen/settings_page.dart';

class LoginButton extends StatefulWidget {
  @override
  _LoginButton createState() => _LoginButton();
}

class _LoginButton extends State<LoginButton> {
  String buttonText = 'Log in';
  
  void login(){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SettingPage(),
        ),
      );
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity, // The Container takes full width of its parent
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xffF75C03),
                    Color(0xffFF9F1C),
                    Color(0xffFBBC05),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                // The border radius for a pill shape is typically half the height or more
                borderRadius: BorderRadius.circular(20), // Adjust as necessary
              ),
              child: ElevatedButton(
                onPressed: (){
                  login();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent, // Makes the button's background color transparent
                  foregroundColor: Colors.transparent,
                  shadowColor: Colors.transparent, // Removes the button's shadow
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10), // Padding for sizing the button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Match the Container's border radius
                  ),
                  // textStyle, and other styles can be added here
                ),
                child: Text(
                  buttonText,
                  style: TextStyle(
                    color: Colors.white, // Color for the text
                    fontSize: 16, // Add your desired font size
                    fontWeight: FontWeight.bold, // Add your desired font weight
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
