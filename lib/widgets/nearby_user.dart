import "package:flutter/material.dart";


class NearbyUser extends StatelessWidget {
    
  final String name;
  final String pronouns;
  final String compatibility;
  

  const NearbyUser({super.key,required this.name,required this.pronouns,required this.compatibility});
  
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
                leading: Image.asset('images/selfpic.png'),
                title:  Text(
                  this.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              subtitle:  Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                  this.pronouns    ,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                 const SizedBox(width: 6), // Space between the text and the number
                  Text(
                    this.compatibility,
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF34C759), // Hex color code for green
                    ),
                  ),
                ],
              ),
    );
  }
}