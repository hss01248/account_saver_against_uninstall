import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:account_saver_against_uninstall/account_saver_against_uninstall_method_channel.dart';

void main() {
  MethodChannelAccountSaverAgainstUninstall platform = MethodChannelAccountSaverAgainstUninstall();
  const MethodChannel channel = MethodChannel('account_saver_against_uninstall');

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
    expect(await platform.getPlatformVersion(), '42');
  });
}
