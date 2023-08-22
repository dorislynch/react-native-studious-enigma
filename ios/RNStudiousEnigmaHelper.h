#import <UIKit/UIKit.h>
#import <React/RCTBridge.h>
#import <React/RCTBridgeDelegate.h>
#import <UserNotifications/UNUserNotificationCenter.h>

@class RCTSurfacePresenterBridgeAdapter;
@class RCTTurboModuleManager;

@interface RNStudiousEnigmaHelper : UIResponder <RCTBridgeDelegate, UNUserNotificationCenterDelegate>

+ (instancetype)shared;
- (UIViewController *)changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions;

@end
