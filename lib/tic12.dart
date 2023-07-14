import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:home/ticcomputer.dart';
import 'package:home/tictoc.dart';

class tic extends StatefulWidget {
  const tic({Key? key}) : super(key: key);

  @override
  State<tic> createState() => _ticState();
}

class _ticState extends State<tic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(
        child: Text(
          "tic tac toe",
          style: TextStyle(
              fontSize: 30, color: Colors.black87, fontWeight: FontWeight.bold),
        ),
      ),
          backgroundColor:Color(0xFFD7C0AE)),
      body:
      
      Container(

        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("image/vecteezy_light-beige-paper-texture-background-kraft-paper-horizontal__476.jpg"), fit: BoxFit.fill)),
        child: 
        Expanded(
          child: Column(
            children: [
              Expanded(child: Row()),
              Expanded(child: Row()),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return hll();

                    }
                    )
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(25),

                          child:
                          Neumorphic(
                            style: NeumorphicStyle(
                                shape: NeumorphicShape.convex,
                                boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(10),
                                ),
                                depth: 8,
                                lightSource: LightSource.topLeft,
                                color:Color(0xFFECCCB2)),
                            child: Center(
                                child: Text(
                                  "Computer",
                                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight:FontWeight.bold),
                                )),
                          ),
                          //alignment: Alignment.center,
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return hl();

                            }
                            )
                            );

                          },
                          child: Container(
                            margin: EdgeInsets.all(25),

                            child:
                            Neumorphic(
                              style: NeumorphicStyle(
                                  shape: NeumorphicShape.convex,
                                  boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(10),
                                  ),
                                  depth: 8,
                                  lightSource: LightSource.topLeft,
                                  color:Color(0xFFECCCB2)),
                              child: Center(
                                  child: Text(
                                    "2 player",
                                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight:FontWeight.bold ),

                                  )),
                            ),
                            //alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(child: Row()),
              Expanded(child: Row()),
            ],
          ),
        ),
      ),
    );
  }
}
