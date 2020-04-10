import 'package:csit/caold.dart';
import 'package:flutter/material.dart';

import 'nmold.dart';

class OLD extends StatefulWidget {
  @override
  _OLDState createState() => _OLDState();
}

class _OLDState extends State<OLD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Old questions"),
        ),
        body: Container(
            child: Column(
              children: <Widget>[
                FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>CAOLD()));
                  },
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Image(
                            fit: BoxFit.contain,
                            image: AssetImage("assets/image/ca2.JPG"),
                            height: 200,
                          ),
                        ),
                        Expanded(
                          child: Text("Computer Architecture",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>NMOLD()));
                  },
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Image(
                            fit: BoxFit.contain,
                            image: AssetImage("assets/image/nm.jpeg"),
                            height: 200,
                          ),
                        ),
                        Expanded(
                          child: Text("Numerical Method",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
    );
  }
}
