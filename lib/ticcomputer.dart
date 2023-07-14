import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class hll extends StatefulWidget {
  const hll({Key? key}) : super(key: key);

  @override
  State<hll> createState() => _hllState();
}


class _hllState extends State<hll> {
  @override

  List<String> l = ["", "", "", "", "", "", "", "", ""];
  List<String> a=[""];
  int cnt = 0;
  int flag=0;
  bool dis = false;
  bool draw = true;


  void tie(){

    setState(() {
      if(cnt==9){
        {
          draw=false;
          dis=true;


          a[0]="Draw";


        }
      }
    }
    );
  }


  void eveno(int n){
    setState(() {
      if(flag==0) {
        if (l[n] == "") {
          // if (cnt % 2 == 0) {
          l[n] = "o";


          win();

          cnt++;
          tie();




        }
          // }

          // else {
            while(true) {
              int r = Random().nextInt(9);
              if (l[r] == "") {
                l[r] = "x";



                break;
              }
              win();

              cnt++;
              tie();

            }

        }

    });
  }

  void win() {
    setState(() {
      if ((l[0] == "o" && l[1] == "o" && l[2] == "o") ||
          (l[3] == "o" && l[4] == "o" && l[5] == "o") ||
          (l[6] == "o" && l[7] == "o" && l[8] == "o") ||
          (l[0] == "o" && l[4] == "o" && l[8] == "o") ||
          (l[2] == "o" && l[4] == "o" && l[6] == "o") ||
          (l[0] == "o" && l[3] == "o" && l[6] == "o") ||
          (l[1] == "o" && l[4] == "o" && l[7] == "o") ||
          (l[2] == "o" && l[5] == "o" && l[8] == "o")
      ) {
        dis=true;
        draw=true;

        a[0]="1st Player Win";

        flag=1;

      }
      //for 2nd player
      if ((l[0] == "x" && l[1] == "x" && l[2] == "x") ||
          (l[3] == "x" && l[4] == "x" && l[5] == "x") ||
          (l[6] == "x" && l[7] == "x" && l[8] == "x") ||
          (l[0] == "x" && l[4] == "x" && l[8] == "x") ||
          (l[2] == "x" && l[4] == "x" && l[6] == "x") ||
          (l[0] == "x" && l[3] == "x" && l[6] == "x") ||
          (l[1] == "x" && l[4] == "x" && l[7] == "x") ||
          (l[2] == "x" && l[5] == "x" && l[8] == "x")
      ) {
        draw=true;
        
        dis=true;
        a[0]="2nd Player Win";
        flag=1;


      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Color(0xFFD7C0AE),
      ),
      body: dis?
      Stack(
        children: [Container(
          width: double.infinity,
          height: double.infinity,

          child:
          draw?Lottie.asset("celebration/131561-fb-celebration.json"):
          Container()
        ), Center(
          child:
          Column(
            children: [
              Expanded(
                child: Row(

                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [


                    Expanded(
                      child: InkWell(
                        onTap: () {

                        },
                        child:
                        Container(

                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Color(0xFFF9F5EB),
                              border:
                              Border.all(color: Colors.black87, width: 4)),
                          child: Center(
                              child: Text(a[0],
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 20, fontWeight: FontWeight.bold))),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            l=["", "", "", "", "", "", "",  "", ""];
                            //cnt=0;
                            a[0]="";
                            flag=0;
                            dis=false;



                          });
                        },
                        child: Container(

                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Color(0xFFF9F5EB),
                              border:
                              Border.all(color: Colors.black87, width: 4)),
                          child: Center(
                            child: Icon(Icons.refresh, size: 40),
                          ),
                        ),
                      ),
                    ),
                  ],



                ),
              ),
              
              Expanded(
                child: Row(

                ),
              ),
            ],
          ),
        ),],
      ):
      Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: Colors.white,
            //border: Border.all(color: Colors.black87, width: 3)
        ),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        //print("press");
                        eveno(0);


                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFEFF5F5),
                            border: Border(
                                bottom:
                                BorderSide(color: Colors.black87, width: 4),
                                right:
                                BorderSide(color: Colors.black, width: 4))),
                        child: Center(
                            child: Text(l[0],
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 50))),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        eveno(1);

                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFEFF5F5),
                            border: Border(
                              right:
                              BorderSide(color: Colors.black87, width: 4),
                              bottom:
                              BorderSide(color: Colors.black87, width: 4),
                            )),
                        child: Center(
                            child: Text(l[1],
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 50))),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        eveno(2);


                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFEFF5F5),
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.black87, width: 4))),
                        child: Center(
                            child: Text(l[2],
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 50))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        eveno(3);

                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFEFF5F5),
                            border: Border(
                              right:
                              BorderSide(color: Colors.black87, width: 4),
                              bottom:
                              BorderSide(color: Colors.black87, width: 4),
                            )),
                        child: Center(
                            child: Text(l[3],
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 50))),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        eveno(4);

                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFEFF5F5),
                            border: Border(
                              right:
                              BorderSide(color: Colors.black87, width: 4),
                              bottom:
                              BorderSide(color: Colors.black87, width: 4),
                            )),
                        child: Center(
                            child: Text(l[4],
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 50))),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        eveno(5);

                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFEFF5F5),
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.black87, width: 4))),
                        child: Center(
                            child: Text(l[5],
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 50))),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        eveno(6);

                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFEFF5F5),
                            border: Border(
                                right: BorderSide(
                                    color: Colors.black87, width: 4))),
                        child: Center(
                            child: Text(l[6],
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 50))),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        eveno(7);


                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFEFF5F5),
                            border: Border(
                                right: BorderSide(
                                    color: Colors.black87, width: 4))),
                        child: Center(
                            child: Text(l[7],
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 50))),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        eveno(8);


                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFEFF5F5),
                        ),
                        child: Center(
                            child: Text(l[8],
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 50))),
                      ),
                    ),
                  ),
                ],
              ),
            ),




          ],
        ),
      ),
    );
  }
}
