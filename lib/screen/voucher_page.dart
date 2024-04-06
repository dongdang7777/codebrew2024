import 'package:flutter/material.dart';

class Voucher_page extends StatefulWidget{
  @override
  _Voucher_page createState() => _Voucher_page();
}

class _Voucher_page extends State<Voucher_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fwend'),
        ),
        body: Container(
          color: Colors.white,
          child: Row(
            children: [
              // Background
              Expanded(
                child: Container(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 300,
                height: 00,
                child: Image.asset(
                  'images/voucher.png',
                  width: 296,
                  height: 223,
                ),
              ),
              SizedBox(
                width: 300,
                height: 300,
                child: Image.asset(
                  'images/voucher.png',
                  width: 296,
                  height: 223,
                ),
              ),
            ],
          ),
        ),
      );
    
  }
}
