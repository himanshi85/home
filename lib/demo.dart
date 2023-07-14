import 'package:flutter/material.dart';

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade200,
          title: Container(
            margin: EdgeInsets.all(25),
            //padding: EdgeInsets.all(5),
            child: TextField(
              style: TextStyle(),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  hintText: "Search",
                  //prefix: Icon(Icons.people, color: Colors.black12),
                  suffix: Icon(Icons.close, color: Colors.black),
                  contentPadding: EdgeInsets.all(8)),
              autofocus: true,
            ),
          ),
          centerTitle: true,
          elevation: 50,
          actions: [
            Image.asset(
              width: 40,
              "image/img_12.png",
            )
          ],
        ),
        drawer: Drawer(
            backgroundColor: Colors.grey,
            child: Column(
              children: [
                CircleAvatar(child: Container(

                ),),
                ListTile(
                  tileColor: Colors.black12,
                  title: Text("APPFLOW",
                      style: TextStyle(color: Color(0xFFD7C0AE))),
                  subtitle: Text(""),
                  leading: Icon(Icons.power),
                  trailing: Icon(Icons.solar_power),
                  onTap: () {},
                ),
                ListTile(
                  tileColor: Colors.black12,
                  title: Text("APPFLOW",
                      style: TextStyle(color: Color(0xFFD7C0AE))),
                  subtitle: Text(""),
                  leading: Icon(Icons.power),
                  trailing: Icon(Icons.solar_power),
                  onTap: () {},
                ),
              ],
            )),
      ),
    );
  }
}
