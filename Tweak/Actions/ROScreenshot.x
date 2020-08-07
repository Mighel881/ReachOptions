// ReachOptions
// Copyright (c) ajaidan0 2020

#import "ROScreenshot.h"

@implementation ROScreenshot

+(void)exec {
    [(SpringBoard *)[UIApplication sharedApplication] takeScreenshot];
}

@end