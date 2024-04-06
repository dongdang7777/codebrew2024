import 'package:flutter/material.dart';

class LoginButtonGoogle extends StatefulWidget {
  @override
  _LoginButtonGoogle createState() => _LoginButtonGoogle();
}

class _LoginButtonGoogle extends State<LoginButtonGoogle> {
  String buttonText = 'Google';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            width: 600,  // Specify the width here
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  buttonText = 'Google'; // Only setting the text here
                });
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xffeeeeee)),
                elevation: MaterialStateProperty.all(0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min, // To keep the row's width minimal
                children: <Widget>[
                  Image.asset('images/google_button.png', width: 20), // Specify your image and size
                  SizedBox(width: 10), // Space between image and text
                  Text(
                    buttonText,
                    style: const TextStyle(
                      fontSize: 14, // Setting the font size
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
