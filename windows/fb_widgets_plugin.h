#ifndef FLUTTER_PLUGIN_FB_WIDGETS_PLUGIN_H_
#define FLUTTER_PLUGIN_FB_WIDGETS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace fb_widgets {

class FbWidgetsPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FbWidgetsPlugin();

  virtual ~FbWidgetsPlugin();

  // Disallow copy and assign.
  FbWidgetsPlugin(const FbWidgetsPlugin&) = delete;
  FbWidgetsPlugin& operator=(const FbWidgetsPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace fb_widgets

#endif  // FLUTTER_PLUGIN_FB_WIDGETS_PLUGIN_H_
