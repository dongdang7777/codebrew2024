
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class UserTitle extends StatelessWidget {
  final String text;
  final void Function()?onTap;

  const UserTitle({super.key,required this.text,required this.onTap});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:this.onTap,
      child: Container(
        decoration: BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child:Row(
          children: [
            Text(
              text,
            )
          ],
        ),
      ),
    );
  }
}