import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var title;
  var subjects;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            child: new RaisedButton(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Image(
                      image: NetworkImage(
                          "https://th.bing.com/th/id/OIP.Sq3PRG52bENOG7ZgMoKiKwHaE8?w=300&h=200&c=7&o=5&dpr=1.25&pid=1.7"),
                    ),
                  ),
                  new Text("Next"),
                ],
              ),
              onPressed: () {
                setState(() {
                  title = "Old";
                  subjects = "assets/pdfs/ca.pdf";
                });
              },
            ),
          ),
          Container(
            color: Colors.green,
            margin: EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    title = "DSA";
                    subjects = "assets/pdfs/nmold.pdf";
                  });
                },
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Image(
                          image: NetworkImage(
                              "https://th.bing.com/th/id/OIP.Iw7Wpap-18_r9sHEmHxB7wAAAA?w=172&h=245&c=7&o=5&dpr=1.25&pid=1.7"),
                        ),
                      ),
                      new Text("Next"),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
