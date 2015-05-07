@interface PSViewController : NSObject
@end

@interface PSListController : PSViewController {

	id _specifiers;
}
-(id)specifiers;
-(id)loadSpecifiersFromPlistName:(id)name target:(id)target;
@end

@interface NCSettingsListController: PSListController
@end

@implementation NCSettingsListController
-(id)specifiers {

    if(_specifiers == nil) {

        _specifiers = [[self loadSpecifiersFromPlistName:@"NCSettings" target:self] retain];
    }
    return _specifiers;
}
@end