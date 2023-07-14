

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class hh extends StatelessWidget {
  const hh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 700,
        width: 700,
        color: Colors.grey,
        padding: EdgeInsets.all(30),
        child: Container(
          height: 700,
          width: 700,
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height:150,
                width: 150,
                decoration:BoxDecoration(color: Colors.white, shape: BoxShape.rectangle,) ,),
              Container(
                height: 150,
                width: 150,
                decoration:BoxDecoration(color: Colors.white, shape: BoxShape.rectangle,) ,),
              Container(
                height: 150,
                width: 150,
                decoration:BoxDecoration(color: Colors.white, shape: BoxShape.rectangle,) ,),

            ],
          ),
        ),
      ),
      
    ) ;
  }
}
