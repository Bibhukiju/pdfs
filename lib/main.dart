import 'package:csit/ca.dart';
import 'package:csit/cg.dart';
import 'package:flutter/material.dart';
import 'dsa.dart';
import 'nm.dart';
import 'old.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
    '/': (context) => MyApp(),
    'dsa':(context)=>DSA(),
    'cg':(context)=>CG(),
    'ca':(context)=>CA(),
    'nm':(context)=>NM(),
    'old':(context)=>OLD(),
  },
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Container myContains(String name, String img, Color col, String short) =>
        Container(
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '$short'.toLowerCase());
            },
            child: Container(
                width: 200,
                decoration: BoxDecoration(
                    color: col, borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: Image(image:AssetImage("assets/image/$img"),),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "$name",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
            ),
          ),
        );
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "Hello Students",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("Your \nBoookself",
                          style: TextStyle(fontSize: 30),
                        ),
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.indigo[200],
                          backgroundImage: AssetImage("assets/image/read.png"),
                        )
                          ],
                    ),
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.indigo[200],
                        borderRadius: BorderRadius.circular(30)),
                  )),
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        myContains("Data structure and alogorithm", "dsa2.jpg",
                            Colors.white, "dsa"),
                        SizedBox(
                          width: 10,
                        ),
                        myContains("Numerical Method", "nm.jpeg", Colors.white, "nm"),
                        SizedBox(
                          width: 10,
                        ),
                        myContains("Computer Graphics", "cg.jpg" , Colors.white, "cg"),
                        SizedBox(
                          width: 10,
                        ),
                        myContains("Computer Architecture", "ca2.JPG", Colors.white, "ca"),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Text("For additional study",
                style: TextStyle(fontSize: 20),
              ),
              Divider(color: Colors.black,
                endIndent: 100,
              ),
              Expanded(
                flex: 3,
                child: Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        myContains("Old questions", "old.jpg",
                            Colors.white, "old"),
                        SizedBox(
                          width: 10,
                        ),
                        myContains("Channels to follow", "yt.png", Colors.white, "short"),
                        SizedBox(
                          width: 10,
                        ),
                        myContains("About us", "avatar.png", Colors.white, "About"),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
