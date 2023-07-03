import 'package:flutter_test/flutter_test.dart';
import 'package:account_saver_against_uninstall/account_saver_against_uninstall.dart';
import 'package:account_saver_against_uninstall/account_saver_against_uninstall_platform_interface.dart';
import 'package:account_saver_against_uninstall/account_saver_against_uninstall_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAccountSaverAgainstUninstallPlatform
    with MockPlatformInterfaceMixin
    implements AccountSaverAgainstUninstallPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AccountSaverAgainstUninstallPlatform initialPlatform = AccountSaverAgainstUninstallPlatform.instance;

  test('$MethodChannelAccountSaverAgainstUninstall is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAccountSaverAgainstUninstall>());
  });

  test('getPlatformVersion', () async {
    AccountSaverAgainstUninstall accountSaverAgainstUninstallPlugin = AccountSaverAgainstUninstall();
    MockAccountSaverAgainstUninstallPlatform fakePlatform = MockAccountSaverAgainstUninstallPlatform();
    AccountSaverAgainstUninstallPlatform.instance = fakePlatform;

    expect(await accountSaverAgainstUninstallPlugin.getPlatformVersion(), '42');
  });
}
