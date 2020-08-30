import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smsker/smsker.dart';

void main() {
  const MethodChannel channel = MethodChannel('smsker');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {});

  tearDown(() {});

  test('sendSms', () async {});
}
