
import 'package:codebrew2024/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import "package:flutter/material.dart";
import 'package:codebrew2024/services/api.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  print(Api.getUser("BLfiGQYFbnUv6AG7kxgdcjIBxrz2"));
}
