import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'account_saver_against_uninstall_platform_interface.dart';

/// An implementation of [AccountSaverAgainstUninstallPlatform] that uses method channels.
class MethodChannelAccountSaverAgainstUninstall extends AccountSaverAgainstUninstallPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('account_saver_against_uninstall');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
