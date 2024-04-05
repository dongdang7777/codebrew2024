import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:codebrew2024/services/db.dart';

class User{
  final String id;
  final num age;
  final String gender;
  final hobbies=[];
  final String mbti;
  final String name;
  final num x;
  final num y;

  static get(String id) async{
    final docRef = Database.db.collection('users').doc(id);
    DocumentSnapshot snapshot =await docRef.get();
    final data=snapshot.data();
  }
  User({required this.id}) async{
 
  }


}