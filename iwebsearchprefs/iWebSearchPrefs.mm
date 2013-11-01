#import <Preferences/Preferences.h>

@interface iWebSearchPrefsListController: PSListController {
}
@end

@implementation iWebSearchPrefsListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"iWebSearchPrefs" target:self] retain];
	}
	return _specifiers;
}
@end

// vim:ft=objc
