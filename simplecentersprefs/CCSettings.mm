@interface PSViewController : NSObject
@end

@interface PSListController : PSViewController {

	id _specifiers;
}
-(id)specifiers;
-(id)loadSpecifiersFromPlistName:(id)name target:(id)target;
@end

@interface CCSettingsListController: PSListController
@end

@implementation CCSettingsListController
-(id)specifiers {

    if(_specifiers == nil) {

        _specifiers = [[self loadSpecifiersFromPlistName:@"CCSettings" target:self] retain];
    }
    return _specifiers;
}
@end