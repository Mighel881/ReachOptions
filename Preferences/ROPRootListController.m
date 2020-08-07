#include "ROPRootListController.h"

@implementation ROPRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

-(id)init {
	self = [super init];
	if(self) {
		_respringApplyButton = (_respringApplyButton) ?: [[UIBarButtonItem alloc] initWithTitle:@"Apply" style:UIBarButtonItemStyleDone target:self action:@selector(respring)];
		_respringApplyButton.tintColor = [UIColor blackColor];
		[self.navigationItem setRightBarButtonItem:_respringApplyButton animated:YES];

	}
	return self;
}

-(void)respring {
	[HBRespringController respringAndReturnTo:[NSURL URLWithString:@"prefs:root=Mavalry"]];
}

@end
