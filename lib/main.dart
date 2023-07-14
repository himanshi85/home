// // // import 'package:flutter/cupertino.dart';
// // // import 'package:flutter/material.dart';
// // //
// // // void main() {
// // //   runApp(MaterialApp(
// // //     home: hp(),
// // //   ));
// // // }
// // //
// // // class hp extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //           centerTitle: true,
// // //           title: Text(
// // //             "himanshi",
// // //             style: TextStyle(
// // //                 fontWeight: FontWeight.w900,
// // //                 backgroundColor: Colors.grey,
// // //                 color: Colors.amber),
// // //           ),
// // //           backgroundColor: Colors.grey),
// // //       body: Center(
// // //           child: Text(
// // //         "himanshi patel",
// // //         style: TextStyle(
// // //           color:CupertinoColors.darkBackgroundGray,
// // //           fontWeight: FontWeight.w900,fontSize: 50
// // //         ),
// // //       )),
// // //       backgroundColor: Colors.blueGrey,
// // //     );
// // //   }
// // // }
// //
// // // import 'package:flutter/cupertino.dart';
// // // import 'package:flutter/material.dart';
// // //
// // // void main() {
// // //   runApp(MaterialApp(home: hp(),));
// // // }
// // //
// // // class hp extends StatelessWidget {
// // //
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(appBar: AppBar(centerTitle: true,
// // //         title: Text("himanshi", style: TextStyle(fontSize: 50,
// // //           color: CupertinoColors.darkBackgroundGray,
// // //           backgroundColor: Colors.grey,)
// // //           ,),backgroundColor: Colors.blueGrey,
// // //     ),backgroundColor: Colors.orangeAccent,
// // //
// // //       body: Center(child:Text("Himanshi Patel", style: TextStyle(backgroundColor:Colors.grey,fontSize: 36,color: CupertinoColors.darkBackgroundGray ),) ),
// // //
// // //     );
// // //   }
// // // }
// // //
// // //
// // //
// // //
// // //
// // //
// //
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// //
// // void main() {
// //   runApp(MaterialApp(
// //     home: hp(),
// //   ));
// // }
// //
// // class hp extends StatelessWidget {
// //   Color aaa = Colors.red;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Center(
// //           child: Container(
// //         decoration: BoxDecoration(
// //
// //             shape: BoxShape.circle,
// //             // borderRadius: BorderRadius.all(Radius.circular(20)),
// //             // gradient: LinearGradient(
// //             //     colors: [Colors.blue, Colors.orangeAccent, Colors.cyanAccent]),
// //             color: Colors.green,
// //             // border: Border.all(
// //             //   color: Colors.black,
// //             //   width: 3,
// //             // ),
// //
// //
// //             border: Border(right: BorderSide(color: Colors.red,width: 4))
// //             // boxShadow: [
// //             //   BoxShadow(color: Colors.deepPurpleAccent, blurRadius: 60)
// //             // ]
// //
// //         ),
// //         // padding: EdgeInsets.all(10),
// //         // height: 50,
// //         // width: 50,        // main
// //         // child: Container(margin: EdgeInsets.all(10),
// //         //   // child
// //         //
// //         //   color: Colors.yellow,
// //         // ),
// //         width: 200,
// //         height: 200,
// //       )),
// //     );
// //   }
// // }
//
//
//
//

//
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home/cal.dart';
import 'package:home/caly.dart';
import 'package:home/loginpage.dart';
import 'package:home/ludo.dart';
import 'package:home/puzzle.dart';
import 'package:home/second.dart';
import 'package:home/staticview.dart';
import 'package:home/third.dart';
import 'package:home/tic12.dart';
import 'package:home/ticcomputer.dart';
import 'package:home/tictoc.dart';

import 'calculator.dart';
import 'demo.dart';
import 'demodesign.dart';
import 'design.dart';
import 'employeemanag.dart';
import 'first.dart';
import 'fourth.dart';
import 'hima.dart';
import 'himanshi.dart';
import 'homepage.dart';
import 'listview.dart';

void main() {
  runApp(MaterialApp(
    home: login1(),
    debugShowCheckedModeBanner: false,
  ));
}

class cal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 250,
        width: 250,
        color: Colors.red,
        margin: EdgeInsets.all(15),
        child: Container(
          color: Colors.white,
          height: 250,
          width: 250,
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.pink, shape: BoxShape.circle),
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.pink, shape: BoxShape.circle),
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.pink, shape: BoxShape.circle),
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.pink, shape: BoxShape.circle),
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
