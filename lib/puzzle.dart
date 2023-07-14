import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class pp extends StatefulWidget {
  const pp({Key? key}) : super(key: key);

  @override
  State<pp> createState() => _ppState();
}

class _ppState extends State<pp> {
  @override
  List<String> l = ["1", "2", "3", "4", "5", "6", "7", "", "8"];
  List a = [""];
  int flag = 0;

  void win() {
    setState(() {
      if (l[0] == "1" &&
          l[1] == "2" &&
          l[2] == "3" &&
          l[3] == "4" &&
          l[4] == "5" &&
          l[5] == "6" &&
          l[6] == "7" &&
          l[7] == "8") {
        a[0] = "Win";
        flag = 1;
      }
    });
  }

  void reset() {
    setState(() {
      l = [];
      for (int i = 0; i < 9; i++) {
        while (true) {
          int r = Random().nextInt(9);

          if (!l.contains("$r")) {
            l.add("$r");
            break;
          }

        }
      }

      for (int i = 0; i < 9; i++) {
        if (l[i]=="0") {
          l[i] = "";
          break;
        }
      }

       a[0]="";
      flag=0;

    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Puzzle",
          style: TextStyle(
              fontSize: 30, color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFFDAE5D0),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        if (flag == 0) {
                          if (l[0] != "") {
                            if (l[1] == "") {
                              l[1] = l[0];
                              l[0] = "";
                            } else if (l[3] == "") {
                              l[3] = l[0];
                              l[0] = "";
                            }
                          }
                        }
                      });
                      win();
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      //decoration: BoxDecoration(color: Colors.white),

                      child: Neumorphic(
                        style: NeumorphicStyle(
                            border: NeumorphicBorder(
                              isEnabled: true,
                              color: Color(0xFF863A6F),
                              width: 1.8,
                            ),
                            shape: NeumorphicShape.convex,
                            boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(20),
                            ),
                            depth: 8,
                            lightSource: LightSource.topLeft,
                            color: Color(0xFFF0D9E7)),
                        child: Center(
                            child: Text(
                          l[0],
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )),
                      ),
                      //alignment: Alignment.center,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        if (flag == 0) {
                          if (l[1] != "") {
                            if (l[0] == "") {
                              l[0] = l[1];
                              l[1] = "";
                            } else if (l[4] == "") {
                              l[4] = l[1];
                              l[1] = "";
                            } else if (l[2] == "") {
                              l[2] = l[1];
                              l[1] = "";
                            }
                          }
                        }
                      });
                      win();
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Neumorphic(
                        style: NeumorphicStyle(
                            border: NeumorphicBorder(
                              isEnabled: true,
                              color: Color(0xFF863A6F),
                              width: 1.8,
                            ),
                            shape: NeumorphicShape.convex,
                            boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(20),
                            ),
                            depth: 8,
                            lightSource: LightSource.topLeft,
                            color: Color(0xFFF0D9E7)),
                        child: Center(
                            child: Text(
                          l[1],
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )),
                      ),
                      //alignment: Alignment.center,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        if (flag == 0) {
                          if (l[2] != "") {
                            if (l[5] == "") {
                              l[5] = l[2];
                              l[2] = "";
                            } else if (l[1] == "") {
                              l[1] = l[2];
                              l[2] = "";
                            }
                          }
                        }
                      });
                      win();
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Neumorphic(
                        style: NeumorphicStyle(
                            border: NeumorphicBorder(
                              isEnabled: true,
                              color: Color(0xFF863A6F),
                              width: 1.8,
                            ),
                            shape: NeumorphicShape.convex,
                            boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(20),
                            ),
                            depth: 8,
                            lightSource: LightSource.topLeft,
                            color: Color(0xFFF0D9E7)),
                        child: Center(
                            child: Text(
                          l[2],
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )),
                      ),
                      //alignment: Alignment.center,
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
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        if (flag == 0) {
                          if (l[3] != "") {
                            if (l[0] == "") {
                              l[0] = l[3];
                              l[3] = "";
                            } else if (l[4] == "") {
                              l[4] = l[3];
                              l[3] = "";
                            } else if (l[6] == "") {
                              l[6] = l[3];
                              l[3] = "";
                            }
                          }
                        }
                      });
                      win();
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Neumorphic(
                        style: NeumorphicStyle(
                            border: NeumorphicBorder(
                              isEnabled: true,
                              color: Color(0xFF863A6F),
                              width: 1.8,
                            ),
                            shape: NeumorphicShape.convex,
                            boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(20),
                            ),
                            depth: 8,
                            lightSource: LightSource.topLeft,
                            color: Color(0xFFF0D9E7)),
                        child: Center(
                            child: Text(
                          l[3],
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )),
                      ),
                      //alignment: Alignment.center,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        if (flag == 0) {
                          if (l[4] != "") {
                            if (l[1] == "") {
                              l[1] = l[4];
                              l[4] = "";
                            } else if (l[3] == "") {
                              l[3] = l[4];
                              l[4] = "";
                            } else if (l[5] == "") {
                              l[5] = l[4];
                              l[4] = "";
                            } else if (l[7] == "") {
                              l[7] = l[4];
                              l[4] = "";
                            }
                          }
                        }
                      });
                      win();
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Neumorphic(
                        style: NeumorphicStyle(
                            border: NeumorphicBorder(
                              isEnabled: true,
                              color: Color(0xFF863A6F),
                              width: 1.8,
                            ),
                            shape: NeumorphicShape.convex,
                            boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(20),
                            ),
                            depth: 8,
                            lightSource: LightSource.topLeft,
                            color: Color(0xFFF0D9E7)),
                        child: Center(
                            child: Text(
                          l[4],
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )),
                      ),
                      //alignment: Alignment.center,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        if (flag == 0) {
                          if (l[5] != "") {
                            if (l[2] == "") {
                              l[2] = l[5];
                              l[5] = "";
                            } else if (l[4] == "") {
                              l[4] = l[5];
                              l[5] = "";
                            } else if (l[8] == "") {
                              l[8] = l[5];
                              l[5] = "";
                            }
                          }
                        }
                      });
                      win();
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Neumorphic(
                        style: NeumorphicStyle(
                            border: NeumorphicBorder(
                              isEnabled: true,
                              color: Color(0xFF863A6F),
                              width: 1.8,
                            ),
                            shape: NeumorphicShape.convex,
                            boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(20),
                            ),
                            depth: 8,
                            lightSource: LightSource.topLeft,
                            color: Color(0xFFF0D9E7)),
                        child: Center(
                            child: Text(
                          l[5],
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )),
                      ),
                      //alignment: Alignment.center,
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
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        if (flag == 0) {
                          if (l[6] != "") {
                            if (l[3] == "") {
                              l[3] = l[6];
                              l[6] = "";
                            } else if (l[7] == "") {
                              l[7] = l[6];
                              l[6] = "";
                            }
                          }
                        }
                      });
                      win();
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Neumorphic(
                        style: NeumorphicStyle(
                            border: NeumorphicBorder(
                              isEnabled: true,
                              color: Color(0xFF863A6F),
                              width: 1.8,
                            ),
                            shape: NeumorphicShape.convex,
                            boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(20),
                            ),
                            depth: 8,
                            lightSource: LightSource.topLeft,
                            color: Color(0xFFF0D9E7)),
                        child: Center(
                            child: Text(
                          l[6],
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )),
                      ),
                      //alignment: Alignment.center,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        if (flag == 0) {
                          if (l[7] != "") {
                            if (l[4] == "") {
                              l[4] = l[7];
                              l[7] = "";
                            } else if (l[6] == "") {
                              l[6] = l[7];
                              l[7] = "";
                            } else if (l[8] == "") {
                              l[8] = l[7];
                              l[7] = "";
                            }
                          }
                        }
                      });
                      win();
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Neumorphic(
                        style: NeumorphicStyle(
                            border: NeumorphicBorder(
                              isEnabled: true,
                              color: Color(0xFF863A6F),
                              width: 1.8,
                            ),
                            shape: NeumorphicShape.convex,
                            boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(20),
                            ),
                            depth: 8,
                            lightSource: LightSource.topLeft,
                            color: Color(0xFFF0D9E7)),
                        child: Center(
                            child: Text(
                          l[7],
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )),
                      ),
                      //alignment: Alignment.center,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        if (flag == 0) {
                          if (l[8] != "") {
                            if (l[7] == "") {
                              l[7] = l[8];
                              l[8] = "";
                            } else if (l[5] == "") {
                              l[5] = l[8];
                              l[8] = "";
                            }
                          }
                        }
                      });
                      win();
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Neumorphic(
                        style: NeumorphicStyle(
                            border: NeumorphicBorder(
                              isEnabled: true,
                              color: Color(0xFF863A6F),
                              width: 1.8,
                            ),
                            shape: NeumorphicShape.convex,
                            boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(20),
                            ),
                            depth: 8,
                            lightSource: LightSource.topLeft,
                            color: Color(0xFFF0D9E7)),
                        child: Center(
                            child: Text(
                          l[8],
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )),
                      ),
                      //alignment: Alignment.center,
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
                  flex: 2,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Neumorphic(
                        style: NeumorphicStyle(
                            border: NeumorphicBorder(
                              isEnabled: true,
                              color: Color(0xFF863A6F),
                              width: 1.8,
                            ),
                            shape: NeumorphicShape.convex,
                            boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(20),
                            ),
                            depth: 8,
                            lightSource: LightSource.topLeft,
                            color: Color(0xFFF0D9E7)),
                        child: Center(
                            child: Text(
                          a[0],
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )),
                      ),
                      //alignment: Alignment.center,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        //initState();
                        reset();
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Neumorphic(
                        style: NeumorphicStyle(
                            border: NeumorphicBorder(
                              isEnabled: true,
                              color: Color(0xFF863A6F),
                              width: 1.8,
                            ),
                            shape: NeumorphicShape.convex,
                            boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(20),
                            ),
                            depth: 8,
                            lightSource: LightSource.topLeft,
                            color: Color(0xFFF0D9E7)),
                        child: Center(
                            child: Icon(
                          Icons.refresh_rounded,
                          size: 40,
                        )),
                      ),
                      //alignment: Alignment.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
