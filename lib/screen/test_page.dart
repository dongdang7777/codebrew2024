import "package:codebrew2024/services/api.dart";
import "package:flutter/material.dart";

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      body: ElevatedButton(
        onPressed: ()async {
          Map<String,dynamic>? temp= await Api.getUser("BLfiGQYFbnUv6AG7kxgdcjIBxrz2");
        },
        child:Text("Click me"),
      ),
    );
  }
}