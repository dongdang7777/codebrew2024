import 'package:codebrew2024/resources/get_users.dart';
import 'package:codebrew2024/services/api.dart';
import 'package:codebrew2024/widgets/nearby_user.dart';
import 'package:codebrew2024/widgets/user_title.dart';
import 'package:flutter/material.dart';
import 'package:codebrew2024/screen/friendlist_page.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}


class _MapPageState extends State<MapPage> {

  Future<List<Widget>> _buildUsersList(String id)async {
    List<Map<String,dynamic>> temp=await Api.getNearby(id);
    
    List<Widget> k=[];
    for (final x in temp){
      Map<String,dynamic>  heu=await Api.getHeuristic(id, x['id']);
      String per=heu['percentage'].toString()+"%";
      k.add(
        NearbyUser(name: x['name'], pronouns: x['pronoun'], compatibility:per)
      );
    }

    return k;
  }

  
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _showBottomSheet());
  }
  final bool _enabled = true;
  bool _selected = false;
  

  void _showBottomSheet() {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    barrierColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
    ),
    
    builder: (BuildContext context) {
      return Container(
        height: 325,
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 20,
              offset: const Offset(0, -2), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top:16,left:8,right:8,bottom:8),
          child: FutureBuilder<List<Widget>>(
                future: _buildUsersList("BLfiGQYFbnUv6AG7kxgdcjIBxrz2"),
                builder: (context,AsyncSnapshot<List<Widget>> snapshot){
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Container(
                      child: CircularProgressIndicator(),
                    );

                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    return Column(
                      children: snapshot.data!,
                    );
                  }
                }
            )
          ),  //1st card
      );
    },
  );
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.5),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed:() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => friendlistpage(),
              ),
            );
          },
      ),
      ),
      body: Stack(
        children: <Widget>[
          Image.asset(
            'images/map.jpg',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
