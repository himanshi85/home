import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class hm extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(


              color: Colors.pinkAccent,

            ),
          ),
          Expanded(
            flex: 3,
            child: Container(

              color: Colors.yellow,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(

              color: Colors.brown,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(

              color: Colors.cyan,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(

              color: Colors.green,
            ),
          ),

        ],

      ),
    );
  }
}
