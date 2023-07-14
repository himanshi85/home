import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController names = TextEditingController();

    return Scaffold(
      body: Column(children: [
        Container(
          margin: EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
                labelText: "name ",
                prefix: Icon(Icons.people),
                //prefixIcon: Icon(Icons.circle),
                suffix: Icon(Icons.arrow_back),
                hintText: "enter your name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                )),
            controller: name,
            autofocus: true,
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
                labelText: "number",
                prefix: Icon(Icons.people),
                //prefixIcon: Icon(Icons.circle),
                suffix: Icon(Icons.arrow_back),
                hintText: "enter number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                )
            ),
            controller: names,
            autofocus: true,
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {
                  print("ElevatedButton is pressed");
                  //print(name.text);
                 //names.text =name.text;
                 int a=int.parse(name.text);
                 int b=int.parse(names.text);
                 int c=a+b;
                 print(c);

                 },
                child: Text("sum")),
            ElevatedButton(
                onPressed: () {
                  print("ElevatedButton is pressed");
                  //print(name.text);
                 //names.text =name.text;
                 int a=int.parse(name.text);
                 int b=int.parse(names.text);
                 int c=a-b;
                  print(c);
                 },
                child: Text("subtraction")),
            ElevatedButton(
                onPressed: () {
                  print("ElevatedButton is pressed");
                  //print(name.text);
                 //names.text =name.text;
                 int a=int.parse(name.text);
                 int b=int.parse(names.text);
                 int c=a*b;
                  print(c);


                },
                child: Text("multiply")),
            ElevatedButton(
                onPressed: () {
                  print("ElevatedButton is pressed");
                  //print(name.text);
                 //names.text =name.text;
                 double a=double.parse(name.text);
                 double b=double.parse(names.text);
                 double c=(a/b);
                  print(c);


                },
                child: Text("divison")),
          ],
        ),
        // ElevatedButton.icon(
        //     onPressed: () {
        //       print("ElevatedButtonicon is pressed");
        //     },
        //     icon: Icon(Icons.ad_units_sharp),
        //     label: Text(" submit ")),
        // IconButton(
        //     onPressed: () {
        //       print(" IconButton is pressed");
        //     },
        //     icon: Icon(Icons.emoji_people)),
        // TextButton(
        //     onPressed: () {
        //       print("TextButton is pressed");
        //     },
        //     child: Text("edit"))
      ]


      ),
    );
  }
}
