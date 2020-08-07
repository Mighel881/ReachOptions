// ReachOptions
// Copyright (c) ajaidan0 2020

#import "ROUICache.h"

@implementation ROUICache

+(void)exec {
    NSTask *task = [[NSTask alloc] init];
	[task setLaunchPath:@"/usr/bin/uicache"];
    [task setArguments:@[]];
	[task launch];
}

@end