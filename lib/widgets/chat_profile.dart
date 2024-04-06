import 'package:flutter/material.dart';

class chatProfile extends StatefulWidget {
  @override
  _chatProfile createState() => _chatProfile();
}

class _chatProfile extends State<chatProfile> {
  String name = 'Rachel';
  String pronoun = '(She/her)';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 300,
      child: Card(
        margin: const EdgeInsets.all(25),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Row(
            mainAxisSize: MainAxisSize.min, 
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: <Widget>[
              ClipOval(
                child: Image.asset(
                  'images/selfpic.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0), 
                child: Text(
                  name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.only(left: 12.0, top: 20), 
                child: Text(
                  '($pronoun)',
                  style: const TextStyle(
                    color: Color(0xff2b2b2b),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],      
          ),
        ),
      ),
    ); 
  }
}  