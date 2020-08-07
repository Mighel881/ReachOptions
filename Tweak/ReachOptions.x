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

%hook SBReachabilityManager

-(void)_activateReachability:(id)arg1 {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Pick an action." message:nil preferredStyle:0];
    UIAlertAction *ss = [UIAlertAction actionWithTitle:@"Take a Screenshot" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {[(SpringBoard *)[UIApplication sharedApplication] takeScreenshot];}]; // Take screenshot
    UIAlertAction *cc = [UIAlertAction actionWithTitle:@"Open Control Center" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {[[%c(SBControlCenterController) sharedInstance] presentAnimated:YES];}]; // Open CC
    UIAlertAction *lock = [UIAlertAction actionWithTitle:@"Lock Device" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {[(SpringBoard *)[UIApplication sharedApplication] _simulateLockButtonPress];}]; // Lock device
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {return;}]; // Cancel
    [alert addAction:ss];
    [alert addAction:cc];
    [alert addAction:lock];
    [alert addAction:cancel];
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alert animated:YES completion:nil];
}

%end