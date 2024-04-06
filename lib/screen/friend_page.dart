import "package:cloud_firestore/cloud_firestore.dart";
import "package:codebrew2024/resources/get_users.dart";
import "package:codebrew2024/screen/chatpage.dart";
import "package:codebrew2024/widgets/user_title.dart";
import "package:flutter/material.dart";

class FriendPage extends StatefulWidget {
  const FriendPage({super.key});

  @override
  State<FriendPage> createState() => _FriendPage();
}

class _FriendPage extends State<FriendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:_buildUserList()
    );
  }

  Widget _buildUserList(){
    return StreamBuilder(
      stream:GetUsers().getUsersStream(), 
      builder: (context,snapshot){
        if (snapshot.hasError){
          return const Text("Error");
        }

        if (snapshot.connectionState==ConnectionState.waiting){
          return const Text("Loading");
        }
        return ListView(
          children:snapshot.data!.map<Widget> ((userData)=>_buildUserListItem(userData,context)).toList(),
        );
      },
    );
  }
  Widget _buildUserListItem(Map<String,dynamic> userData,BuildContext context){

    return UserTitle(
      text: userData['name'],
      onTap:(){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>ChatPage()));
      },
      
    );
  }
}