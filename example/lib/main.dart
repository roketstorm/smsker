import 'package:flutter/material.dart';
import 'package:smsker/smsker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  void _sendMessage() async {
    await Smsker.sendSms(phone: "123123123", message: "Hi!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Smsker example app'),
        ),
        body: Center(
          child: RaisedButton(
              child: Text("Send My SMS"),
              onPressed: () {
                _sendMessage();
              }),
        ),
      ),
    );
  }
}
