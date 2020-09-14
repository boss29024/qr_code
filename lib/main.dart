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
            child: Image.asset(
              'assets/banner.jpg',
            ),
            padding: EdgeInsets.all(30),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  _buildScan(),
                  SizedBox(
                    width: 100,
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

  _buildScan() => Expanded(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/ic_scan_qrcode.png',
            width: 110,
            height: 110,
          ),
          SizedBox(
            height: 15,
          ),
          RaisedButton(
            onPressed: () {},
            child: Text("SCAN"),
            textColor: Colors.white,
            color: Colors.blue,
          )
        ],
      ));

  _buildGenerator() => Expanded(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/ic_generate_qrcode.png',
            width: 110,
            height: 110,
          ),
          SizedBox(
            height: 15,
          ),
          RaisedButton(
            onPressed: () {},
            child: Text("GENERATOR"),
            textColor: Colors.white,
            color: Colors.tealAccent[700],
          )
        ],
      ));
}
