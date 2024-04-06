
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class UserTitle extends StatelessWidget {
  final String text;
  final void Function()?onTap;

  const UserTitle({super.key,required this.text,required this.onTap});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Image.asset('images/selfpic.png'), // Replace with your leading widget
          title: Text(this.text), // Example title
          subtitle: Text('Hi hows your day'), // Example subtitle
          trailing: Icon(Icons.message), // Replace with your trailing widget
      
          onTap: this.onTap,
        ),
        const Divider(
          height: 1,
          thickness: 1,
          indent: 8,
          endIndent: 8,
          color: Color(0xFFE6E6E6),
        ),
      ]
    );
  }
}