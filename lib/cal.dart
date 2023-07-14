import 'package:flutter/material.dart';

class hbb extends StatefulWidget {
  const hbb({Key? key}) : super(key: key);

  @override
  State<hbb> createState() => _hbbState();
}

class _hbbState extends State<hbb> {

  String dis="";
  String firstdata="";
  String seconddata="";
  int cnt=0;


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: 300,
              child: Text("$dis", style: TextStyle(fontSize: 50)),

            ),
          ),

          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      print("pressed");
                      setState(() {
                        dis=dis+"1";

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
                      child: Text("1",
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
                      print("pressed");
                      setState(() {
                        dis=dis+"2";

                      });



                    },
                    child:
                    Container(

                      margin: EdgeInsets.all(3),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xFFB2B2B2),
                        shape: BoxShape.circle,
                      ),

                      child:Text("2",
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
                      print("pressed");
                      setState(() {
                        firstdata=dis;
                        dis="";
                        cnt=123;




                      });
                    },
                    child:
                    Container(

                      margin: EdgeInsets.all(3),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xFFB2B2B2),
                        shape: BoxShape.circle,
                      ),
                      child: Text("+",
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
                      print("pressed");
                      setState(() {

                        seconddata=dis;
                        dis="";

                        if(cnt==123){
                          int sum=int.parse(firstdata)+int.parse(seconddata);
                          dis="$sum";
                        }
                        if(cnt==345){
                          int sub=int.parse(firstdata)-int.parse(seconddata);
                          dis="$sub";
                        }
                      });

                    },
                    child:
                    Container(

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
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      print("pressed");
                      setState(() {
                        dis=dis+"3";

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
                      child: Text("3",
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
                      print("pressed");
                      setState(() {
                        dis=dis+"4";

                      });



                    },
                    child:
                    Container(

                      margin: EdgeInsets.all(3),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xFFB2B2B2),
                        shape: BoxShape.circle,
                      ),

                      child:Text("4",
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
                      print("pressed");
                      setState(() {
                        firstdata=dis;
                        dis="";
                        cnt=345;




                      });
                    },
                    child:
                    Container(

                      margin: EdgeInsets.all(3),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xFFB2B2B2),
                        shape: BoxShape.circle,
                      ),
                      child: Text("-",
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
                      print("pressed");
                      setState(() {

                        dis=dis+"5";

                      });

                    },
                    child:
                    Container(

                      margin: EdgeInsets.all(3),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xFFF49D1A),
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
              ],
            ),
          ),


        ],
      ),


    );
  }
}
