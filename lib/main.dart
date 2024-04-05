import 'package:codebrew2024/screen/chatbox_page.dart';
import 'package:codebrew2024/widgets/chat_profile.dart';
import 'package:codebrew2024/widgets/chatbox_buttonbar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:codebrew2024/screen/login_page.dart';
import 'package:codebrew2024/screen/profile_screen.dart';
import 'package:codebrew2024/screen/friendlist_page.dart';
import 'package:codebrew2024/screen/chatpage.dart';


void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}