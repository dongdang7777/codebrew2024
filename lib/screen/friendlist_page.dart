import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';  // Ensure you import Cupertino widgets
import 'package:codebrew2024/widgets/bottom_navigation.dart';
 // Ensure you import rendering.dart
class friendlistpage extends StatefulWidget {
  @override
  _friendlistpageState createState() => _friendlistpageState();
}

class _friendlistpageState extends State<friendlistpage> {
  String? _selectedOption; // Variable to hold the selected option
  final List<String> _options = ['Descending', 'Ascending'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.5),
        title: Padding(
          padding: const EdgeInsets.only(top:25),
          child: SizedBox(
            width: 175, // Adjust the width as needed
            height: 100, // Adjust the height as needed
            child: Image.asset(
              'images/Fwend.png',
              fit: BoxFit.contain, // Ensures the image maintains its aspect ratio
            ),
          ),
        ),
        centerTitle: true,
      ),
      //contacts
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 2, right: 16, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //contacts
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 24, right: 2, top: 10, bottom: 5), // Adjusted top padding here
                      child: 
                      Text(
                        "Contacts",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      ),
                    DropdownButton<String>(
                      value: _selectedOption,
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedOption = newValue;
                        });
                      },
                      items: _options.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            'Sorted by $value',
                            ),
                        );
                      }).toList(),
                      underline: Container(), // Removes underline
                      icon: Icon(Icons.sort_rounded, color: Colors.black), // Dropdown icon with color
                    ),
                  ],
                ),
              ),
            ),
            //searchcontacts
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
              child: CupertinoSearchTextField(
                backgroundColor: Colors.grey[200],
                placeholder: "Search Contacts",
              ),
            ),
            // More widgets can be added here for contacts list or other UI elements
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Column(
                children: List.generate(6, (index) { // Example to generate 10 list items
                  return Column(
                    children: <Widget>[
                      ListTile(
                        leading: Image.asset('images/selfpic.png'), // Replace with your leading widget
                        title: Text('Nickname ${index + 1}'), // Example title
                        subtitle: Text('Hi hows your day'), // Example subtitle
                        trailing: Icon(Icons.message), // Replace with your trailing widget
                    
                        onTap: () {
                      // Handle the tap event
                        },
                      ),
                      if (index < 5)
                      Divider(
                        height: 1,
                        thickness: 1,
                        indent: 8,
                        endIndent: 8,
                        color: Color(0xFFE6E6E6),
                      ),
                    ]
                  );
                }),
              ),
            ),
            // End of list
           
          ],
        ),
      ),

      bottomNavigationBar: BottomBar(),
    );
  }
}
