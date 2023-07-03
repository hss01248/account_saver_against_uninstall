#ifndef FLUTTER_PLUGIN_ACCOUNT_SAVER_AGAINST_UNINSTALL_PLUGIN_H_
#define FLUTTER_PLUGIN_ACCOUNT_SAVER_AGAINST_UNINSTALL_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace account_saver_against_uninstall {

class AccountSaverAgainstUninstallPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  AccountSaverAgainstUninstallPlugin();

  virtual ~AccountSaverAgainstUninstallPlugin();

  // Disallow copy and assign.
  AccountSaverAgainstUninstallPlugin(const AccountSaverAgainstUninstallPlugin&) = delete;
  AccountSaverAgainstUninstallPlugin& operator=(const AccountSaverAgainstUninstallPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace account_saver_against_uninstall

#endif  // FLUTTER_PLUGIN_ACCOUNT_SAVER_AGAINST_UNINSTALL_PLUGIN_H_
