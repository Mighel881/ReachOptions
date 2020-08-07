// ReachOptions
// Copyright (c) ajaidan0 2020

#import "ROWiFi.h"

@implementation ROWiFi

+(void)exec {
    SBWiFiManager *WiFi = [%c(SBWiFiManager) sharedInstance];
    BOOL wiFiEnabled = [WiFi wiFiEnabled];
    [WiFi setWiFiEnabled:!wiFiEnabled];
}

@end