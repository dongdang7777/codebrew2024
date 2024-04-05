import 'package:flutter/material.dart';
import 'package:codebrew2024/widgets/chat_profile.dart';
import 'package:codebrew2024/screen/settings_page.dart';
import 'package:codebrew2024/screen/main_page.dart';
import 'package:codebrew2024/widgets/chatbox_buttonbar.dart';

class ChatboxPage extends StatefulWidget {
  @override
  _ChatboxPageState createState() => _ChatboxPageState();
}

class _ChatboxPageState extends State<ChatboxPage> {
  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // This ensures you go back to the previous screen
          },
        ),
        title: Text('Back to Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingPage()),
              );
            },
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffF75C03),
              Color(0xffFF9F1C),
              Color(0xffFBBC05),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: ListView(
          children: <Widget>[
            chatProfile(),
          ],
        ),
      ),
      //bottomNavigationBar: chatbox_buttonbar(), 
    );
  }
}
