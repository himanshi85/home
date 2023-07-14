import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class hb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 400,
        width: 400,
        color: Colors.red,
        padding:EdgeInsets.all(30),
        child: Container(
          height: 400,
          width: 400,
          color: Colors.white,
          padding: EdgeInsets.all(30),

          child: Row(
            children: [
              Container(color: Colors.pinkAccent,
              height:100,
              width: 100,

              ),
              Container(color: Colors.pinkAccent,
              height:100,
              width: 100,

              ),
            ],
          ),
        ),
      ),
    );
  }
}
