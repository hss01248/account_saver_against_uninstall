import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'account_saver_against_uninstall_method_channel.dart';

abstract class AccountSaverAgainstUninstallPlatform extends PlatformInterface {
  /// Constructs a AccountSaverAgainstUninstallPlatform.
  AccountSaverAgainstUninstallPlatform() : super(token: _token);

  static final Object _token = Object();

  static AccountSaverAgainstUninstallPlatform _instance = MethodChannelAccountSaverAgainstUninstall();

  /// The default instance of [AccountSaverAgainstUninstallPlatform] to use.
  ///
  /// Defaults to [MethodChannelAccountSaverAgainstUninstall].
  static AccountSaverAgainstUninstallPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AccountSaverAgainstUninstallPlatform] when
  /// they register themselves.
  static set instance(AccountSaverAgainstUninstallPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
