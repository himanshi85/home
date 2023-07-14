import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class des extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.cyan, border: Border.all(color: Colors.black, width: 2)),
                  ),
                ),


                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [

                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(color: Colors.deepPurpleAccent, border: Border.all(color: Colors.black, width: 2)),
                              ),
                            ),

                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(color: Colors.deepPurpleAccent, border: Border.all(color: Colors.black, width: 2)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(color: Colors.tealAccent, border: Border.all(color: Colors.black, width: 2)),
                        ),
                      )
                    ],
                  ),
                ),


                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.pinkAccent, border: Border.all(color: Colors.black, width: 2)),
                  ),
                ),

              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: Colors.amberAccent, border: Border.all(color: Colors.black, width: 2)),
            ),
          )
        ],
      ),
    );
  }
}
