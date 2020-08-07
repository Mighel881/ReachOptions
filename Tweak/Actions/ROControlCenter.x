// ReachOptions
// Copyright (c) ajaidan0 2020

#import "ROControlCenter.h"

@implementation ROControlCenter

+(void)exec {
    [[%c(SBControlCenterController) sharedInstance] presentAnimated:YES];
}

@end