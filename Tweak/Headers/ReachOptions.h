// ReachOptions v-1.0
// Copyright (c) ajaidan0 2020

#import "NSTask.h"
#import <Cephei/HBPreferences.h>

@interface SBReachabilityManager : UIAlertController
-(void)_activateReachability:(id)arg1;
-(void)_toggleReachabilityMode;
@end

@interface SBControlCenterController
+(id)sharedInstance;
+(void)presentAnimated:(BOOL)arg1;
@end

@interface SpringBoard 
-(void)_simulateLockButtonPress;
-(void)takeScreenshot;
@end

@interface ReachOptions : UIAlertController
+(void)setupMenu;
+(void)respring;
+(void)uicache;
@end

BOOL isEnabled, ss, cc, lock, respring, uicache;