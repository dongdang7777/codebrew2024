import "package:flutter/material.dart";

class UsersList extends StatelessWidget {
  const UsersList({super.key});
  
  @override
  Future<Widget> _buildUsersList(String id)async {
    List<Map<String,dynamic>> temp=await GetUsers().getFriends(id);
    List<Widget> k=temp.map((final x){
      return UserTitle(
        text: x['name'], 
        onTap:(){
        }
      );
    }).toList();
    return Column(
        children:k ,
    );
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _buildUsersList("BLfiGQYFbnUv6AG7kxgdcjIBxrz2"), 
      builder: 
    )
  }
}