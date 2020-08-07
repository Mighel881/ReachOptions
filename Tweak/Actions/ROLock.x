// ReachOptions
// Copyright (c) ajaidan0 2020

#import "ROLock.h"

@implementation ROLock

+(void)exec {
    [(SpringBoard *)[UIApplication sharedApplication] _simulateLockButtonPress];
}

@end