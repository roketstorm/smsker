import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smsker/smsker.dart';

void main() {
  const MethodChannel channel = MethodChannel('smsker');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Smsker.platformVersion, '42');
  });
}
