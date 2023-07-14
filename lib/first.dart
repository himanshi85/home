import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class hpp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "himanshi",
            style: TextStyle(
                color: Colors.grey, fontSize: 30, fontWeight: FontWeight.w400),
          )),
          backgroundColor: Colors.brown,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,

            decoration: BoxDecoration(
                color: Colors.cyan,
                shape: BoxShape.rectangle,
                borderRadius:BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.black, width:3),
                boxShadow:[BoxShadow(color: Colors.deepPurple,blurRadius: 6, blurStyle: BlurStyle.outer)],

                gradient: RadialGradient(
                    colors: [Colors.deepOrange, Colors.white, Colors.green])

            ),

            // child: Center(
            //   child: Container(
            //       child: Center(
            //     child: Text("himanshi", style: TextStyle(color: Colors.black)),
            //   ),
            //           height: 200,
            //            width: 200,
            //            color:Colors.blue,
            //
            //   ),
            // ),
          ),
        ));
  }
}
