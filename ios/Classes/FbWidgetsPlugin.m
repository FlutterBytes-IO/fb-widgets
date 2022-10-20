#import "FbWidgetsPlugin.h"
#if __has_include(<fb_widgets/fb_widgets-Swift.h>)
#import <fb_widgets/fb_widgets-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "fb_widgets-Swift.h"
#endif

@implementation FbWidgetsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFbWidgetsPlugin registerWithRegistrar:registrar];
}
@end
