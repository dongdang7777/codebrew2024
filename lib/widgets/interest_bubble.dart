import 'package:flutter/material.dart';

class interest_bubble extends StatelessWidget {
  final String hobby;
  interest_bubble(String s, { required this.hobby});
  @override

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:[
        Row(
          children: [
            SizedBox(
              width: 80,
              height: 55,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0), 
                margin: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black), 
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                      hobby,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        color: Colors.black, 
                        fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ]
    );
  }
}