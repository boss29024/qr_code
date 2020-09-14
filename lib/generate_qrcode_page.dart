import 'package:flutter/material.dart';

class GenerateQRCodePage extends StatefulWidget {
  String title;

  GenerateQRCodePage({this.title});

  @override
  _GenerateQRCodePageState createState() => _GenerateQRCodePageState();
}

class _GenerateQRCodePageState extends State<GenerateQRCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [IconButton(icon: Icon(Icons.share), onPressed: share)],
      ),
    );
  }

  void share() {}
}
