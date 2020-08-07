// ReachOptions
// Copyright (c) ajaidan0 2020

#import "RORespring.h"

@implementation RORespring

+(void)exec {
    NSTask *task = [[NSTask alloc] init];
	[task setLaunchPath:@"/usr/bin/killall"];
    [task setArguments:@[@"-9", @"SpringBoard"]];
	[task launch];
}

@end