#include "include/account_saver_against_uninstall/account_saver_against_uninstall_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "account_saver_against_uninstall_plugin.h"

void AccountSaverAgainstUninstallPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  account_saver_against_uninstall::AccountSaverAgainstUninstallPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
