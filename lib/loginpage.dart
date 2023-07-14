import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'demo.dart';

class login1 extends StatelessWidget {
  TextEditingController name = TextEditingController();
  TextEditingController namep = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("image/img_16.png",), fit: BoxFit.fill)),
         
        child: Column(
          children: [

            
            SizedBox(
              height: 40,
              width: 40,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [






                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("image/img_13.png"), )),

                ),





                Container(
                  alignment: Alignment.centerLeft,
                  //padding: EdgeInsets.all(10),
                  child:
                  Text("APPFLOW",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.bold)),
                ),

              ],
            ),
            

            // Container(
            //   alignment: Alignment.center,
            //   margin: EdgeInsets.all(10),
            //   child: Text("Login",
            //       style: TextStyle(
            //           color: Colors.black,
            //           fontSize: 23,
            //           fontWeight: FontWeight.bold)),
            // ),
            SizedBox(
              height: 60,
              width: 60,
            ),
            

            
            
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Username",
                    prefix: Icon(Icons.people_alt_outlined),
                    suffix: Icon(Icons.arrow_forward),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24)),
                        hintText: " User name",
                ),
                controller: name,
                autofocus: true,
              ),
            ),
            

            
            
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Password",
                    prefix: Icon(Icons.password),
                  suffix: Icon(Icons.arrow_forward),

                  border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24)),
                        hintText: " Password",

                ),
                controller: namep,
                autofocus: true,
              ),
            ),
            
            
            Container(
              padding:EdgeInsets.all(8) ,
              child: TextButton(onPressed: () {

              }, child: Text("Forget Password")),
            ),
            

            
            
            Container(
              //margin:EdgeInsets.all(10),
              //padding: EdgeInsets.all(8),


              //padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
              child:
              ElevatedButton(onPressed: () {
                print("ElevatedButton is pressed");
                print(name.text);


                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                  return  demo();
                },));


              }, child: Text("Login")),
            ),
            
            

            

            Container(

              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                Text("Does not have Account?", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),),
                TextButton(onPressed: () {

                }, child: Text("Sign in", style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),)),

              ],
              ),
            ),






          ],
        ),
      ),
    );
  }
}






