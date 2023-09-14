// Autogenerated from Pigeon (v9.2.5), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import "AccountSaverPigeon.h"
#import <Flutter/Flutter.h>

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSArray *wrapResult(id result, FlutterError *error) {
  if (error) {
    return @[
      error.code ?: [NSNull null], error.message ?: [NSNull null], error.details ?: [NSNull null]
    ];
  }
  return @[ result ?: [NSNull null] ];
}
static id GetNullableObjectAtIndex(NSArray *array, NSInteger key) {
  id result = array[key];
  return (result == [NSNull null]) ? nil : result;
}

NSObject<FlutterMessageCodec> *FLTIAccountSaverGetCodec(void) {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  sSharedObject = [FlutterStandardMessageCodec sharedInstance];
  return sSharedObject;
}

void FLTIAccountSaverSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<FLTIAccountSaver> *api) {
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.IAccountSaver.init"
        binaryMessenger:binaryMessenger
        codec:FLTIAccountSaverGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(initDev:test:release:storeReleaseAccount:completion:)], @"FLTIAccountSaver api (%@) doesn't respond to @selector(initDev:test:release:storeReleaseAccount:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSNumber *arg_dev = GetNullableObjectAtIndex(args, 0);
        NSNumber *arg_test = GetNullableObjectAtIndex(args, 1);
        NSNumber *arg_release = GetNullableObjectAtIndex(args, 2);
        NSNumber *arg_storeReleaseAccount = GetNullableObjectAtIndex(args, 3);
        [api initDev:arg_dev test:arg_test release:arg_release storeReleaseAccount:arg_storeReleaseAccount completion:^(FlutterError *_Nullable error) {
          callback(wrapResult(nil, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.IAccountSaver.initAppName"
        binaryMessenger:binaryMessenger
        codec:FLTIAccountSaverGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(initAppNameAppName:completion:)], @"FLTIAccountSaver api (%@) doesn't respond to @selector(initAppNameAppName:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_appName = GetNullableObjectAtIndex(args, 0);
        [api initAppNameAppName:arg_appName completion:^(FlutterError *_Nullable error) {
          callback(wrapResult(nil, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.IAccountSaver.selectAccount"
        binaryMessenger:binaryMessenger
        codec:FLTIAccountSaverGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(selectAccountHostType:countryCode:completion:)], @"FLTIAccountSaver api (%@) doesn't respond to @selector(selectAccountHostType:countryCode:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSNumber *arg_hostType = GetNullableObjectAtIndex(args, 0);
        NSString *arg_countryCode = GetNullableObjectAtIndex(args, 1);
        [api selectAccountHostType:arg_hostType countryCode:arg_countryCode completion:^(NSDictionary<NSString *, id> *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.IAccountSaver.saveAccount"
        binaryMessenger:binaryMessenger
        codec:FLTIAccountSaverGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(saveAccountCurrentHostType:countryCode:account:pw:completion:)], @"FLTIAccountSaver api (%@) doesn't respond to @selector(saveAccountCurrentHostType:countryCode:account:pw:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSNumber *arg_currentHostType = GetNullableObjectAtIndex(args, 0);
        NSString *arg_countryCode = GetNullableObjectAtIndex(args, 1);
        NSString *arg_account = GetNullableObjectAtIndex(args, 2);
        NSString *arg_pw = GetNullableObjectAtIndex(args, 3);
        [api saveAccountCurrentHostType:arg_currentHostType countryCode:arg_countryCode account:arg_account pw:arg_pw completion:^(FlutterError *_Nullable error) {
          callback(wrapResult(nil, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
}
