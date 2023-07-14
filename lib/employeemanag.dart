import 'package:flutter/material.dart';

class em extends StatefulWidget {
  const em({Key? key}) : super(key: key);

  @override
  State<em> createState() => _emState();
}

class _emState extends State<em> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:

      Row(
        children: [
          Expanded(

            child: Column(
              children: [
                
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                           //first
                            Expanded(
                              child: Row(
                                children: [

                                  Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child:
                                          Container(
                                            decoration: BoxDecoration(border: Border.all(color: Colors.black87)),
                                            //margin: EdgeInsets.all(5),
                                            child:
                                            Row(
                                              children: [

                                                Image(image:(AssetImage("image/img_13.png")),),
                                                Center(child: Text("APPFLOW", style: TextStyle(color: Color(0xFF3C6255 ), fontWeight: FontWeight.bold,fontSize: 20 ),)),


                                              ],
                                            ),

                                            //decoration: BoxDecoration(color: Colors.black),

                                          ),
                                        ),

                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),




                            //second
                            Expanded(
                              flex: 7,

                              child: Container(
                                //decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                                margin: EdgeInsets.all(25),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child:
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child:
                                                  Container(
                                                    child:
                                                    Row(
                                                      children: [
                                                        //Image(image:(AssetImage("image/img_2.png")),),
                                                        //Text("hello"),

                                                      ],
                                                    ),

                                                    //decoration: BoxDecoration(color: Colors.black),

                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child:
                                                  Container(
                                                    child:
                                                    Row(
                                                      children: [
                                                        Image(image:(AssetImage("image/img_2.png")),),
                                                        Text("Overview"),

                                                      ],
                                                    ),

                                                    //decoration: BoxDecoration(color: Colors.black),

                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),

                                          Expanded(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child:
                                                  Container(
                                                    child:
                                                    Row(
                                                      children: [
                                                        Image(image:(AssetImage("image/img_3.png")),fit: BoxFit.cover,),
                                                        Text("Employee"),

                                                      ],
                                                    ),


                                                    //decoration: BoxDecoration(color: Colors.black),

                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                          Expanded(

                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child:
                                                  Container(
                                                    child:
                                                    Row(
                                                      children: [
                                                        Image(image:(AssetImage("image/img_4.png")),),
                                                        Text("Attendance"),

                                                      ],
                                                    ),


                                                    //decoration: BoxDecoration(color: Colors.black),

                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                          Expanded(

                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child:
                                                  Container(
                                                    child:
                                                    Row(
                                                      children: [
                                                        Image(image:(AssetImage("image/img_5.png")),),
                                                        Text("Tasks"),

                                                      ],
                                                    ),


                                                    //decoration: BoxDecoration(color: Colors.black),

                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                          Expanded(

                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child:
                                                  Container(
                                                    child:
                                                    Row(
                                                      children: [
                                                        Image(image:(AssetImage("image/img_6.png")),),
                                                        Text("Payroll"),

                                                      ],
                                                    ),


                                                    //decoration: BoxDecoration(color: Colors.black),

                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                          Expanded(

                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child:
                                                  Container(
                                                    child:
                                                    Row(
                                                      children: [
                                                        Image(image:(AssetImage("image/img_7.png")),),
                                                        Text("Training"),

                                                      ],
                                                    ),


                                                    //decoration: BoxDecoration(color: Colors.black),

                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                          Expanded(

                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child:
                                                  Container(
                                                    child:
                                                    Row(
                                                      children: [
                                                        Image(image:(AssetImage("image/img_8.png")),),
                                                        Text("Calender"),

                                                      ],
                                                    ),


                                                    //decoration: BoxDecoration(color: Colors.black),

                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                          Expanded(

                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child:
                                                  Container(
                                                    child:
                                                    Row(
                                                      children: [
                                                        Image(image:(AssetImage("image/img_9.png")),),
                                                        Text("Chat"),

                                                      ],
                                                    ),


                                                    //decoration: BoxDecoration(color: Colors.black),

                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                          Expanded(

                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child:
                                                  Container(
                                                    child:
                                                    Row(
                                                      children: [
                                                        //Image(image:(AssetImage("image/img_9.png")),),
                                                        //Text("hello"),

                                                      ],
                                                    ),


                                                    //decoration: BoxDecoration(color: Colors.black),

                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),


                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
















                            //third
                            Expanded(
                              child:
                              Container(
                                decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                                 //margin: EdgeInsets.all(15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [



                                    Expanded(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child:
                                            Container(
                                              child:
                                              Row(mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Image(image:(AssetImage("image/img_10.png")),),
                                                  Text("hello"),

                                                ],
                                              ),

                                              //decoration: BoxDecoration(color: Colors.black),

                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child:
                                            Container(
                                              child:
                                              Row(
                                                children: [
                                                  //Image(image:(AssetImage("image/img_2.png")),),
                                                  //Text("hello"),

                                                ],
                                              ),

                                              //decoration: BoxDecoration(color: Colors.black),

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
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
              child:
              Column(
                children: [
                  Expanded(
                    child: Container(
            decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black87)),
          ),
                  ),
                  
                  Expanded(
                    flex: 8,
                    child: Container(
            decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black87)),
          ),
                  ),

                ],
              ))
        ],
      )  ,
    );
  }
}
////