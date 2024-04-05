import 'package:flutter/material.dart';

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