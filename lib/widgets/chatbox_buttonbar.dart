import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chatbox_buttonbar extends StatefulWidget {
  @override
  _chatbox_buttonbar createState() => _chatbox_buttonbar();
}

class _chatbox_buttonbar extends State<chatbox_buttonbar> {
  final TextEditingController messageController = TextEditingController();

  List<String> messages = [];

  void sendMessage() {
    final String text = messageController.text;
   if (text.isNotEmpty) {
      setState(() {
        messages.add(text); 
        messageController.clear(); 
        }
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          TextField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              labelText: 'Message',
              contentPadding: EdgeInsets.only(right: 20, left: 20),
            ),
            controller: messageController,
            ),
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.mic),
          ),
          IconButton(
            onPressed: (){
              sendMessage();
            }, 
            icon: const Icon(Icons.send),
          ),  
          ],
        ),
      );
  }   
}