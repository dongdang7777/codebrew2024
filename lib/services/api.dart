import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:codebrew2024/services/db.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // For using json.decode

class Api{
  static Future<Map<String,dynamic>> getNearby(String userId) async {
    final response = await http.post(
      Uri.parse('https://us-central1-test-8a935.cloudfunctions.net/app/api/nearby'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'id': userId,
      }),
    );

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, then parse the JSON.
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception('Failed to load data');
    }
  }


  static Future<Map<String,dynamic>> getHeuristic(String user1Id,String user2Id) async {
    final response = await http.post(
      Uri.parse('https://us-central1-test-8a935.cloudfunctions.net/app/api/suggest'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'id1': user1Id,
        'id2': user2Id,
      }),
    );

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, then parse the JSON.
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception('Failed to load data');
    }
  }
  
  static  Future<Map<String, dynamic>?> getUser(String id )async {
    final docRef =Database.db.collection("users").doc(id);
    final response =await docRef.get();
    Map<String,dynamic> ? data=response.data();
    return data;
  }
}