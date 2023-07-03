#ifndef FLUTTER_PLUGIN_ACCOUNT_SAVER_AGAINST_UNINSTALL_PLUGIN_H_
#define FLUTTER_PLUGIN_ACCOUNT_SAVER_AGAINST_UNINSTALL_PLUGIN_H_

#include <flutter_linux/flutter_linux.h>

G_BEGIN_DECLS

#ifdef FLUTTER_PLUGIN_IMPL
#define FLUTTER_PLUGIN_EXPORT __attribute__((visibility("default")))
#else
#define FLUTTER_PLUGIN_EXPORT
#endif

typedef struct _AccountSaverAgainstUninstallPlugin AccountSaverAgainstUninstallPlugin;
typedef struct {
  GObjectClass parent_class;
} AccountSaverAgainstUninstallPluginClass;

FLUTTER_PLUGIN_EXPORT GType account_saver_against_uninstall_plugin_get_type();

FLUTTER_PLUGIN_EXPORT void account_saver_against_uninstall_plugin_register_with_registrar(
    FlPluginRegistrar* registrar);

G_END_DECLS

#endif  // FLUTTER_PLUGIN_ACCOUNT_SAVER_AGAINST_UNINSTALL_PLUGIN_H_
