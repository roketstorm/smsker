
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class Smsker {
  static const MethodChannel _channel =
      const MethodChannel('smsker');

  static Future<String> sendSms({@required String phone, @required String message}) async {
    final String phoneSent = await _channel.invokeMethod('sendSms', [phone, message]);
    return phoneSent;
  }
}
