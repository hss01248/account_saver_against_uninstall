
import 'account_saver_against_uninstall_platform_interface.dart';

class AccountSaverAgainstUninstall {
  Future<String?> getPlatformVersion() {
    return AccountSaverAgainstUninstallPlatform.instance.getPlatformVersion();
  }
}
