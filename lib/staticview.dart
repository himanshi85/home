import 'package:flutter/material.dart';

class stat extends StatelessWidget {
  const stat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          

      children: [

         Container(
          height: 200,
          width: 200,
          margin:EdgeInsets.all(50) ,
          
          decoration: BoxDecoration(color: Colors.deepPurpleAccent, border: Border.all(color: Colors.black, width: 2,)
          ),
           alignment: Alignment.topCenter,
           child: Text("first", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, )),
        ),
         Container(
          height: 200,
          width: 200,
           margin:EdgeInsets.all(200) ,
          decoration: BoxDecoration(color: Colors.pinkAccent, border: Border.all(color: Colors.black, width: 2,)
          ),
           alignment: Alignment.centerLeft,
           child: Text("Second", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, )),
        ),
         Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(color: Colors.
              amberAccent, border: Border.all(color: Colors.black, width: 2,)
          ),
           alignment: Alignment.topCenter,
           child: Text("Third", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, )),
        ),
         Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(color: Colors.
              tealAccent, border: Border.all(color: Colors.black, width: 2,)
          ),
           alignment: Alignment.topCenter,
           child: Text("Fourth", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, )),
        ),
         Container(
          height: 200,
          width: 200,
           margin:EdgeInsets.all(90) ,
          decoration: BoxDecoration(color: Colors.
              orangeAccent, border: Border.all(color: Colors.black, width: 2,)
          ),
           alignment: Alignment.topCenter,
           child: Text("fifth", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, )),
        ),



             ],
    ));
  }
}
