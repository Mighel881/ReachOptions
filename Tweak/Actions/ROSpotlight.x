// ReachOptions
// Copyright (c) ajaidan0 2020

#import "ROSpotlight.h"

@implementation ROSpotlight

+(void)exec {
    [(AXSpringBoardServer *)[%c(AXSpringBoardServer) server] revealSpotlight];
}

@end