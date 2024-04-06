
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:codebrew2024/services/api.dart';

class GetUsers{
  final FirebaseFirestore _firestore=FirebaseFirestore.instance;
  
  Future<List<Map<String, dynamic>>> getFriends(String id) async{
    List<Map<String,dynamic>> res=[];
    Map<String,dynamic>? user=await Api.getUser(id);
    if (user==null) throw Exception( "No user found");
    for (String x in user['friends']){
        Map<String,dynamic>? cur=await Api.getUser(x);
        if (cur!=null){
          res.add(cur);
        }
    }
    return res;
  }
}