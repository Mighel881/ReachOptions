// ReachOptions
// Copyright (c) ajaidan0 2020

#import <Cephei/HBPreferences.h>
#import "Actions/RORespring.h"
#import "Actions/ROUICache.h"
#import "Actions/ROLock.h"
#import "Actions/ROControlCenter.h"
#import "Actions/ROScreenshot.h"
#import "UIDevice+notchedDevice.h"

@interface ReachOptions : UIAlertController
+(void)setupMenu;
@end

BOOL isEnabled, ss, cc, lock, respring, uicache, wifi, shouldCancel;