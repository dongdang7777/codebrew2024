import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods{
  FirebaseAuth _auth= FirebaseAuth.instance;
  
  Future<String> login ({
    required String email,
    required String password,
  })async{
    String res="An error has occured";
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      res="success";
    }catch(e){
      res=e.toString();
    }
    return res;
    
  }

}
