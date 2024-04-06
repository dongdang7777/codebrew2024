import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:codebrew2024/resources/get_users.dart';
import 'package:codebrew2024/screen/chatpage.dart';
import 'package:codebrew2024/widgets/user_title.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';  // Ensure you import Cupertino widgets
import 'package:codebrew2024/widgets/bottom_navigation.dart';
import 'package:codebrew2024/screen/chatpage.dart';
 // Ensure you import rendering.dart
class friendlistpage extends StatefulWidget {
  @override
  _friendlistpageState createState() => _friendlistpageState();
}

class _friendlistpageState extends State<friendlistpage> {
  String? _selectedOption; // Variable to hold the selected option
  final List<String> _options = ['Descending', 'Ascending'];
  
  
  Future<List<Widget>> _buildUsersList(String id)async {
    List<Map<String,dynamic>> temp=await GetUsers().getFriends(id);
    List<Widget> k=temp.map((final x){
      return UserTitle(
        text: x['name'], 
        onTap:(){
        }
      );
    }).toList();
    return k;
  }

  String getUserId(){
    String? t=FirebaseAuth.instance.currentUser?.uid;
    return "BLfiGQYFbnUv6AG7kxgdcjIBxrz2";
  }

  @override
  Widget build(BuildContext context){
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
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SafeArea(
                child: Container(
                  width: double.infinity,
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
                child:FutureBuilder<List<Widget>>(
                  future:_buildUsersList("BLfiGQYFbnUv6AG7kxgdcjIBxrz2"),
                  builder: (context, AsyncSnapshot<dynamic> snapshot){
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    // While waiting for future to resolve
                    return Container(width:double.infinity,child: CircularProgressIndicator()); // Display loading indicator
                  } else if (snapshot.hasError) {
                    // If future throws an error
                    return Text('Error: ${snapshot.error}');
                  } else {
                    // If future completes successfully
                    return Column(
                      children: snapshot.data!,
                    );
                  }
                  },
                ) ,

              ),
              // End of list
             
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomBar(),
    );
  }
}
