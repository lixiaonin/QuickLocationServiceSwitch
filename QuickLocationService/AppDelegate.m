//
//  AppDelegate.m
//  QuickLocationService
//
//  Created by Xiaonin Li on 3/19/16.
//  Copyright © 2016 KingCatTech. All rights reserved.
//
//
//  Mar 19 2016 8pm
//  It'll take a 4-8 seconds lag for unknown reason if I try to trigger the jump action in "applicationWillEnterForeground"
//  So simply kill the app whenever it finish the current jump, and it can work well next time launch. :)


#import "AppDelegate.h"

@implementation AppDelegate
@synthesize vc;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"applicationDidFinishLaunching");
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    vc = [[ViewController alloc] init];
    
    [self.window setRootViewController:vc];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    NSLog(@"applicationDidEnterBackground");
    
    // Turn off app when successfully jump to location service.
    exit(0);
}

@end
