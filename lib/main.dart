import 'package:codebrew2024/screen/friend_page.dart';
import 'package:codebrew2024/widgets/chat_profile.dart';
import 'package:codebrew2024/widgets/chatbox_buttonbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:codebrew2024/screen/login_page.dart';
import 'package:codebrew2024/screen/profile_screen.dart';
import 'package:codebrew2024/screen/friendlist_page.dart';
import 'package:codebrew2024/screen/chatpage.dart';
import 'package:codebrew2024/screen/map_page.dart';
import 'package:codebrew2024/screen/voucher_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: StreamBuilder(
        stream:FirebaseAuth.instance.authStateChanges(),
        builder:(context,snapshot){
          if (snapshot.connectionState==ConnectionState.active){
            if (snapshot.hasData){
                return (FriendPage()); 
            }else if (snapshot.hasError){
          }
          }else if (snapshot.connectionState==ConnectionState.waiting){
            return const Center(
              child: CircularProgressIndicator(
                color:Colors.black,
              )
            );
          }
          return LoginPage();
        }
      )

    );
  }
}