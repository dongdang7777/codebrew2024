import 'package:flutter/material.dart';
import 'package:codebrew2024/screen/friendlist_page.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
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
          child: ListView(
            children: <Widget>[
              //1st card
              ListTile(
                leading: Image.asset('images/selfpic.png'),
                title: const Text(
                  'Nickname',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              subtitle: const Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                  'Pronouns',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                 SizedBox(width: 6), // Space between the text and the number
                  Text(
                    '89%',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF34C759), // Hex color code for green
                    ),
                  ),
                ],
              ),
                enabled: _enabled,
                selected: _selected,
                onTap: () {
                  setState(() {
                    _selected = !_selected;
                  });
                },
              ),
              const Divider(
                height: 1,
                thickness: 1,
                indent: 8,
                endIndent: 8,
                color: Color(0xFFE6E6E6),
              ),
              //2nd card
              ListTile(
                leading: Image.asset('images/selfpic.png'),
                title: const Text(
                  'Nickname2',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              subtitle: const Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                  'Pronouns2',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                 SizedBox(width: 6), // Space between the text and the number
                  Text(
                    '75%',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 86, 199, 52), // Hex color code for green
                    ),
                  ),
                ],
              ),
                enabled: _enabled,
                selected: _selected,
                onTap: () {
                  setState(() {
                    _selected = !_selected;
                  });
                },
              ),
              const Divider(
                height: 1,
                thickness: 1,
                indent: 8,
                endIndent: 8,
                color: Color(0xFFE6E6E6),
              ),
              //3rd card
              ListTile(
                leading: Image.asset('images/selfpic.png'),
                title: const Text(
                  'Nickname3',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              subtitle: const Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                  'Pronouns3',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                 SizedBox(width: 6), // Space between the text and the number
                  Text(
                    '42%',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 199, 162, 52), // Hex color code for green
                    ),
                  ),
                ],
              ),
                enabled: _enabled,
                selected: _selected,
                onTap: () {
                  setState(() {
                    _selected = !_selected;
                  });
                },
              ),
              //divider
              const Divider(
                height: 1,
                thickness: 1,
                indent: 8,
                endIndent: 8,
                color: Color(0xFFE6E6E6),
              ),
              //4th Card
              ListTile(
                leading: Image.asset('images/selfpic.png'),
                title: const Text(
                  'Nickname4',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              subtitle: const Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                  'Pronouns4',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                 SizedBox(width: 6), // Space between the text and the number
                  Text(
                    '20%',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 199, 64, 52), // Hex color code for green
                    ),
                  ),
                ],
              ),
                enabled: _enabled,
                selected: _selected,
                onTap: () {
                  setState(() {
                    _selected = !_selected;
                  });
                },
              ),
            ],
          ),
        ),
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
