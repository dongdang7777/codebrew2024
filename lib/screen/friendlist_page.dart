import 'package:flutter/material.dart';
import 'package:codebrew2024/widgets/bottom_navigation.dart';

class friendlistpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        ),
        body: Container(
          color: Colors.white, 
          child: Row(
            children: [
              Positioned.fill(
                child: Container(
                  color: Colors.white, 
                ),
              ),
              SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset(
                    'images/logo.png', 
                    width: 59, 
                    height: 64, 
                  ),
                ),
                SizedBox(
                  width:200,
                  height:50,
                  child: Image.asset(
                    'images/Fwend_slogan.png',
                    width: 157,
                    height:65,
                  ),
                ),



            ],
          ),
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}

