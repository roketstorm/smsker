
import 'dart:async';

import 'package:flutter/services.dart';

class Smsker {
  static const MethodChannel _channel =
      const MethodChannel('smsker');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
