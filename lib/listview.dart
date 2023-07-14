import 'package:flutter/material.dart';

class lv extends StatelessWidget {
  const lv({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
         // scrollDirection: Axis.vertical,
        children: [



          Container(


            height: 200,
            width: 200,
            decoration: BoxDecoration(color: Colors.deepPurpleAccent,border: Border.all(color: Colors.black, width: 2)),




          ),

          Container(


            height: 200,
            width: 200,
            decoration: BoxDecoration(color: Colors.greenAccent, border: Border.all(color: Colors.black, width: 2)),




          ),
          Container(


            height: 200,
            width: 200,
            decoration: BoxDecoration(color: Colors.greenAccent, border: Border.all(color: Colors.black, width: 2)),




          ),
          Container(


            height: 200,
            width: 200,
            decoration: BoxDecoration(color: Colors.green, border: Border.all(color: Colors.black, width: 2)),




          ),
          Container(


            height: 200,
            width: 200,
            decoration: BoxDecoration(color: Colors.deepPurple, border: Border.all(color: Colors.black, width: 2)),




          ),
          Container(


            height: 200,
            width: 200,
            decoration: BoxDecoration(color: Colors.pinkAccent, border: Border.all(color: Colors.black, width: 2)),




          ),
          Container(


            height: 200,
            width: 200,
            decoration: BoxDecoration(color: Colors.teal, border: Border.all(color: Colors.black, width: 2)),




          ),
          Container(


            height: 200,
            width: 200,
            decoration: BoxDecoration(color: Colors.orange, border: Border.all(color: Colors.black, width: 2)),




          ),

        ],

      ),
    );
  }
}
