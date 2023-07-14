import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cal1 extends StatefulWidget {
  @override
  State<cal1> createState() => _State();
}

class _State extends State<cal1> {
  String dis = "";
  double fd = 0;
  double sd = 0;
  int cnt = 0;
  double temp=0;
  void getvalue(String s) {
    setState(() {
      dis = dis + s;
    });
  }

  void equal(String op) {
    setState(() {
      double temp = fd;
      // print("====$temp");
      fd = double.parse(dis);
      // print("====$fd");
      if (cnt == 1) {
        fd = fd + temp;
      } else if (cnt == 2) {
        fd = temp - fd;
      } else if (cnt == 3) {
        fd = fd * temp;
      } else if (cnt == 4) {
        fd = temp / fd;
      } else if (cnt == 5) {
        fd = temp % fd;
      }
      dis = "";
      if (op == "+") {
        cnt = 1;
      } else if (op == "-") {
        cnt = 2;
      } else if (op == "*") {
        cnt = 3;
      } else if (op == "/") {
        cnt = 4;
      } else if (op == "%") {
        cnt = 5;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculator",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.grey,
      ),
      //backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child:
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.black),
              alignment: Alignment.bottomRight,
              child: Text(
                "$dis",
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),

          ),

          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //first
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                dis = "";

                                 temp=0;

                                fd = 0;
                                sd = 0;
                                cnt = 0;
                              });
                            },
                            child: Container(
                              //  height: 100,
                              // width: 100,
                              margin: EdgeInsets.all(3),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFFB2B2B2),
                                shape: BoxShape.circle,
                              ),
                              child: Text("AC",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                dis = dis.substring(0, dis.length - 1);
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.all(3),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFFB2B2B2),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.backspace_outlined),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              equal("%");
                            },
                            child: Container(
                              margin: EdgeInsets.all(3),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFFB2B2B2),
                                shape: BoxShape.circle,
                              ),
                              child: Text("%",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              equal("/");
                            },
                            child: Container(
                              margin: EdgeInsets.all(3),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFFF49D1A),
                                shape: BoxShape.circle,
                              ),
                              child: Text("/",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //second
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              getvalue("7");
                            },
                            child: Container(
                              margin: EdgeInsets.all(3),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFF3D3C42),
                                shape: BoxShape.circle,
                              ),
                              child: Text("7",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              getvalue("8");
                            },
                            child: Container(
                              margin: EdgeInsets.all(3),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFF3D3C42),
                                shape: BoxShape.circle,
                              ),
                              child: Text("8",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              getvalue("9");
                            },
                            child: Container(
                              margin: EdgeInsets.all(3),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFF3D3C42),
                                shape: BoxShape.circle,
                              ),
                              child: Text("9",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              equal("*");
                            },
                            child: Container(
                              margin: EdgeInsets.all(3),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFFF49D1A),
                                shape: BoxShape.circle,
                              ),
                              child: Text("*",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //third
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              getvalue("4");
                            },
                            child: Container(
                              margin: EdgeInsets.all(3),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFF3D3C42),
                                shape: BoxShape.circle,
                              ),
                              child: Text("4",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              getvalue("5");
                            },
                            child: Container(
                              margin: EdgeInsets.all(3),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFF3D3C42),
                                shape: BoxShape.circle,
                              ),
                              child: Text("5",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              getvalue("6");
                            },
                            child: Container(
                              margin: EdgeInsets.all(3),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFF3D3C42),
                                shape: BoxShape.circle,
                              ),
                              child: Text("6",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              equal("-");
                            },
                            child: Container(
                              margin: EdgeInsets.all(3),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFFF49D1A),
                                shape: BoxShape.circle,
                              ),
                              child: Text("-",
                                  style: TextStyle(
                                      fontSize: 50,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //fourth
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              getvalue("1");
                            },
                            child: Container(
                              margin: EdgeInsets.all(3),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFF3D3C42),
                                shape: BoxShape.circle,
                              ),
                              child: Text("1",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              getvalue("2");
                            },
                            child: Container(
                              margin: EdgeInsets.all(3),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFF3D3C42),
                                shape: BoxShape.circle,
                              ),
                              child: Text("2",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              getvalue("3");
                            },
                            child: Container(
                              margin: EdgeInsets.all(3),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFF3D3C42),
                                shape: BoxShape.circle,
                              ),
                              child: Text("3",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              equal("+");
                            },
                            child: Container(
                              margin: EdgeInsets.all(3),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFFF49D1A),
                                shape: BoxShape.circle,
                              ),
                              child: Text("+",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //fifth
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: () {
                              getvalue("0");
                            },
                            child: Container(
                              margin: EdgeInsets.all(10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color(0xFF3D3C42),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Text("0",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              getvalue(".");
                            },
                            child: Container(
                              margin: EdgeInsets.all(3),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFF3D3C42),
                                shape: BoxShape.circle,
                              ),
                              child: Text(".",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                sd = double.parse(dis);
                                dis = "";

                                if (cnt == 1) {
                                  dis = "${(fd) + (sd)}";
                                }
                                else if (cnt == 2) {
                                  dis = "${(fd) - (sd)}";
                                } else if (cnt == 3) {
                                  dis = "${(fd) * (sd)}";
                                } else if (cnt == 4) {
                                  dis = "${(fd) / (sd)}";
                                } else if (cnt == 5) {
                                  dis = "${(fd) % (sd)}";
                                }
                                cnt=0;

                              });
                            },
                            child: Container(
                              margin: EdgeInsets.all(3),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFFF49D1A),
                                shape: BoxShape.circle,
                              ),
                              child: Text("=",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
