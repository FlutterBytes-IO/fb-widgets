#include "include/fb_widgets/fb_widgets_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "fb_widgets_plugin.h"

void FbWidgetsPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  fb_widgets::FbWidgetsPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
