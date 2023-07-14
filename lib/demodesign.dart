import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class dd extends StatelessWidget {
  //const desi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        width: 200,
        child: Neumorphic(
          style: NeumorphicStyle(
              shape: NeumorphicShape.convex,
              boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(10),
              ),
              depth: 8,
              lightSource: LightSource.topLeft,
              color: Colors.yellow),
          child: Center(
              child: Text(
            "himanshi patel",
            style: TextStyle(color: Colors.white),
          )),
        ),
        //alignment: Alignment.center,
      ),
    );
  }
}
