import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:qr_flutter/qr_flutter.dart';

import 'package:flutter/rendering.dart';

class GenerateQRCodePage extends StatefulWidget {
  String title;

  GenerateQRCodePage({this.title});

  @override
  _GenerateQRCodePageState createState() => _GenerateQRCodePageState();
}

class _GenerateQRCodePageState extends State<GenerateQRCodePage> {
  final _textController = TextEditingController();
  String _dataQRCode = "";

  @override
  void initState() {
    super.initState();

    _textController.addListener(Change);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(icon: Icon(Icons.share), onPressed: share),
        ],
      ),
      body: _buildContent(),
    );
  }

  void share() {
    // final channel = MethodChannel('cm.share/share');
    // channel.invokeListMethod('shareFile', 'image.png');
  }

  _buildContent() => Padding(
        padding: EdgeInsets.only(left: 30, right: 30, top: 40),
        child: Column(
          children: [
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                  helperText: 'Enter the text to create the qr code.'),
            ),
            SizedBox(
              height: 40,
            ),
            QrImage(
              backgroundColor: Colors.white,
              data: _dataQRCode,
              size: 150,
              onError: (exception) {
                print("Error QR Code: $exception");
              },
            ),
          ],
        ),
      );

  void Change() {
    setState(() {
      _dataQRCode = _textController.text;
    });
  }
}
