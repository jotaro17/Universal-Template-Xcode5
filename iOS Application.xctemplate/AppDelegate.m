#import "AppDelegate.h"
#ifndef APP_STORE
#import "FDVersionWindow.h"
#endif
#import "IpadUtil.h"
#import <TestFlight.h>
#import <TestFlightLogger.h>
#import <DDTTYLogger.h>

#pragma mark Class Definition

@implementation AppDelegate
{
#ifndef APP_STORE
@private __strong FDVersionWindow *_versionWindow;
#endif
}

#pragma mark - UIApplicationDelegate Methods

- (BOOL)              application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	// Start TestFlight for Ad Hoc and App Store builds.
#ifdef AD_HOC
	[TestFlight takeOff:@"___VARIABLE_adHocTestFlightTeamToken:identifier___"];
#elif defined APP_STORE
	[TestFlight takeOff:@"___VARIABLE_appStoreTestFlightTeamToken:identifier___"];
#endif
    
	// CocoaLumberjack setup
	[DDLog addLogger:[TestFlightLogger sharedInstance]];
	[DDLog addLogger:[DDTTYLogger sharedInstance]];
    
	// Create the main window.
	UIScreen *mainScreen = [UIScreen mainScreen];
	_window = [[UIWindow alloc] initWithFrame:mainScreen.bounds];
	_window.backgroundColor = [UIColor blackColor];
    
	// TODO: Create the root view controller based on what platform the app is running on.
	if ([IpadUtil isIpad]) {
	}
	else {
	}
    
	[_window makeKeyAndVisible];
    
#ifndef APP_STORE
	// Create a version window which will sit atop the main window and display the application and build version in the status bar.
	_versionWindow = [[FDVersionWindow alloc] init];
#endif
    
	return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
	// Pause ongoing tasks and disable timers.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
	// Save application data, invalidate timers and store enough information to recover previous state if the application becomes active again.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
	// Undo any changes that were made when the application entered the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
	// Restart tasks that were paused when the application resigned its active status.
}

- (void)applicationWillTerminate:(UIApplication *)application {
	// Save application data and invalidate timers.
}

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
	// Free up as much memory as possible by purging cached data or any other data that can be read back from disk.
}

@end

