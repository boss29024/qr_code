import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final title = "My QR Code";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatelessWidget {
  String title;

  MyHomePage({this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Stack(
        children: [
          Padding(
            child: Image.asset('assets/dgb.png'),
            padding: EdgeInsets.all(20),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  _buildScan(),
                  SizedBox(
                    width: 30,
                  ),
                  _buildGenerator(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _buildScan() => Column(
        children: [
          Image.asset('assets/dgb.png'),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            onPressed: () {},
            child: Text("SCAN"),
          )
        ],
      );

  _buildGenerator() => Column(
        children: [
          Image.asset('assets/dgb.png'),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            onPressed: () {},
            child: Text("SCAN"),
          )
        ],
      );
}
