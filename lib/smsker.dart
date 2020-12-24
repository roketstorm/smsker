import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class Smsker {
  static const MethodChannel _channel = const MethodChannel('smsker');

  /// Send SMS [message] to [phone].
  /// 
  /// ```dart
  /// sendSms(phone: "123123123", message: "Hi!");
  /// ```
  static Future<String> sendSms(
      {@required String phone, @required String message}) async {
    final String phoneSent = await _channel
        .invokeMethod('sendSms', {'phone': phone, 'message': message});
    return phoneSent;
  }
}
