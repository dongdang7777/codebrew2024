import 'package:flutter/material.dart';

class ChatBottomBar extends StatefulWidget{
  @override
  _ChatBottomBar createState() => _ChatBottomBar();
}

class _ChatBottomBar extends State<ChatBottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.map),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.chat),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {},
          ),
        ],
      ),
    );
  }
}