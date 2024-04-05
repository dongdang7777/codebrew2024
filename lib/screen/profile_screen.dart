import 'package:flutter/material.dart';
import 'package:codebrew2024/screen/settings_page.dart';
import 'package:codebrew2024/widgets/interest_bubble.dart';
import 'package:codebrew2024/widgets/bottom_navigation.dart';

class profile_screen extends StatefulWidget{
  @override
  _profile_screen createState() => _profile_screen();
}


class _profile_screen extends State<profile_screen> {
String gender = 'female';
String pronoun = 'She/her';
String mbti = 'Infj';
String companyuni = 'Unimelb';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.settings),
            onPressed:() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingPage(),
                ),
              );
            },
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                Color(0xffF75C03),
                Color(0xffFF9F1C),
                Color(0xffFBBC05),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              ),
            ),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 400,
                  width: 300,
                  child: Card(
                    margin: EdgeInsets.all(25.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(25),
                          child: ClipOval(
                            child: Image.asset(
                              'images/selfpic.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                          const Text(
                                'User 101',
                                textAlign:  TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                          TextButton(
                                onPressed: (){},
                                child: Text('Score'),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: ElevatedButton(
                              onPressed: (){}, 
                              child: Text('Follow'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffFBBC05),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                            ),
                          ),
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(gender, style: TextStyle(fontWeight:FontWeight.w700),),
                              Text(pronoun, style: TextStyle(fontWeight:FontWeight.w700),),
                              Text(mbti, style: TextStyle(fontWeight:FontWeight.w700),),
                              Text(companyuni, style: TextStyle(fontWeight:FontWeight.w700),),
                            ]
                          ),
                        ),
                      ],
                    )
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: 270,
                  child: Card(margin: EdgeInsets.all(25.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20, top: 10),
                            child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Interest',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ]
                            ),
                          ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                interest_bubble(hobby: 'music', 'music'),
                                interest_bubble(hobby: 'art', 'art'),
                                interest_bubble(hobby: 'sport', 'sport'),
                              ]
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                interest_bubble(hobby: 'music', 'music'),
                                interest_bubble(hobby: 'art', 'art'),
                                interest_bubble(hobby: 'sport', 'sport'),
                              ]
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                interest_bubble(hobby: 'music', 'music'),
                                interest_bubble(hobby: 'art', 'art'),
                                interest_bubble(hobby: 'sport', 'sport'),
                          ]
                        ),
                      ],
                     ),
                  ),
                )
              ],
            )
          ),
         ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}