//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <account_saver_against_uninstall/account_saver_against_uninstall_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) account_saver_against_uninstall_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "AccountSaverAgainstUninstallPlugin");
  account_saver_against_uninstall_plugin_register_with_registrar(account_saver_against_uninstall_registrar);
}
