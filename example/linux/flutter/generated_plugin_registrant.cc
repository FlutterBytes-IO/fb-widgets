//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <fb_widgets/fb_widgets_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) fb_widgets_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FbWidgetsPlugin");
  fb_widgets_plugin_register_with_registrar(fb_widgets_registrar);
}
