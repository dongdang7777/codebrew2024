import 'package:codebrew2024/screen/map_page.dart';
import 'package:flutter/material.dart';
import 'package:codebrew2024/screen/friendlist_page.dart';
import 'package:codebrew2024/screen/profile_screen.dart';

class BottomBar extends StatefulWidget{
  @override
  _BottomBar createState() => _BottomBar();
}

class _BottomBar extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.map),
              onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MapPage(),
              ),
            );
          },
            ),
            IconButton(
              icon: const Icon(Icons.chat),
              onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => friendlistpage(),
              ),
            );
          },
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => profile_screen(),
               ),
             );
           },
          ),
        ],
      ),
    );
  }
}