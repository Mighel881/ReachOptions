// ReachOptions
// Copyright (c) ajaidan0 2020

#import "ReachOptions.h"

@implementation ReachOptions

+(void)setupMenu {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Pick an action." message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *one = [UIAlertAction actionWithTitle:@"Take a Screenshot" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {[%c(ROScreenshot) exec];}]; // Take screenshot
    UIAlertAction *two = [UIAlertAction actionWithTitle:@"Open Control Center" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {[%c(ROControlCenter) exec];}]; // Open CC
    UIAlertAction *three = [UIAlertAction actionWithTitle:@"Lock Device" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {[%c(ROLock) exec];}]; // Lock device
    UIAlertAction *four = [UIAlertAction actionWithTitle:@"Respring" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {[%c(RORespring) exec];}]; // Respring device
    UIAlertAction *five = [UIAlertAction actionWithTitle:@"UICache" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {[%c(ROUICache) exec];}]; // UICache device
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"No" style:UIAlertActionStyleCancel handler:nil];
    if (ss) {
        [alert addAction:one];
        shouldCancel = TRUE;
    }
    if (cc) {
        [alert addAction:two];
        shouldCancel = TRUE;
    }
    if (lock) {
        [alert addAction:three];
        shouldCancel = TRUE;
    }
    if (respring) {
        [alert addAction:four];
        shouldCancel = TRUE;
    }
    if (uicache) {
        [alert addAction:five];
        shouldCancel = TRUE;
    }
    if (shouldCancel) {
        [alert addAction:cancel];
        [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alert animated:YES completion:nil];
    }
}

@end

%hook SBReachabilityManager

-(void)_activateReachability:(id)arg1 {
    if (isEnabled) {
        // Setup menu
        [ReachOptions setupMenu];
    } else {
        %orig;
    }
}

%end

// Loads prefs and inits
%ctor {
	HBPreferences *preferences = [[HBPreferences alloc] initWithIdentifier:@"com.ajaidan.reachoptionsprefs"];
    [preferences registerBool:&isEnabled default:NO forKey:@"isEnabled"];
	[preferences registerBool:&ss default:NO forKey:@"1"];
	[preferences registerBool:&cc default:NO forKey:@"2"];
	[preferences registerBool:&lock default:NO forKey:@"3"];
	[preferences registerBool:&respring default:NO forKey:@"4"];
	[preferences registerBool:&uicache default:NO forKey:@"5"];
}