#import "SmskerPlugin.h"
#if __has_include(<smsker/smsker-Swift.h>)
#import <smsker/smsker-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "smsker-Swift.h"
#endif

@implementation SmskerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSmskerPlugin registerWithRegistrar:registrar];
}
@end
