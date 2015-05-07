@interface SBUIController : UIViewController
-(void)handleShowNotificationsSystemGesture:(id)gesture;
-(void)handleShowControlCenterSystemGesture:(id)gesture;
-(BOOL)shouldShowNotificationCenterTabControlOnFirstSwipe;
-(BOOL)shouldShowControlCenterTabControlOnFirstSwipe;
@end

@interface SBLockScreenView : UIView
-(void)setTopGrabberHidden:(BOOL)hidden forRequester:(id)requester;
-(void)setBottomGrabberHidden:(BOOL)hidden forRequester:(id)requester;
-(void)setTopBottomGrabbersHidden:(BOOL)hidden forRequester:(id)requester;
@end


@interface SBNotificationCenterController : UIViewController
-(void)beginPresentationWithTouchLocation:(CGPoint)touchLocation;
@end

@interface UIStatusBar : UIView
@end

@interface SBTodayTableHeaderView : UIView
-(CGSize)sizeThatFits:(CGSize)fits;
@end

@interface SBTodayTableFooterView : UIView
-(void)layoutSubviews;
@end

@interface SBNotificationSeparatorView : UIView
+(id)separatorForCurrentState;
+(int)separatorViewModeForCurrentState;
+(id)separatorWithScreenScale:(float)screenScale mode:(int)mode;
-(void)setBounds:(CGRect)bounds;
-(void)setFrame:(CGRect)frame;
-(void)updateForCurrentState;
-(id)initWithFrame:(CGRect)frame mode:(int)mode;
@end

@interface SBNotificationVibrantButton : UIView
@end

@interface SBNewWidgetLabel : UIView
@end

@interface SBTodayBulletinCell : UIView
-(void)layoutSubviews;
@end

@interface SBNotificationCenterSeparatorView : UIView
-(id)initWithFrame:(struct CGRect)arg1 mode:(long long)arg2;
@end

@interface SBNotificationCenterHeaderView : UIView
@property(readonly, nonatomic) UIImageView *iconImageView;
@property(readonly, nonatomic) UILabel *titleLabel;
-(void)layoutSubviews;
-(void)buttonAction:(id)arg1;
-(void)_setShowsClear:(BOOL)clear animated:(BOOL)animated;
@end

@interface SBNotificationsSectionHeaderView : UIView
-(void)buttonAction:(id)arg1;
@end

@interface SBNotificationsClearButton : UIView
@end

@interface SBChevronView : UIView
@end

@interface _UIBackdropView : UIView
@end

@interface SBNotificationCenterViewController : UIView
@property(readonly, assign, nonatomic) SBChevronView* grabberView;
@property(readonly, assign, nonatomic) _UIBackdropView* backdropView;
-(void)viewDidLoad;
-(void)_loadBottomSeparator;
-(void)presentGrabberView;
@end

@protocol SBModeViewControllerContentProviding <NSObject>
@end

@interface SBModeViewController : UIView
@property(retain, nonatomic) NSArray* viewControllers;
@property(assign, nonatomic) UIViewController<SBModeViewControllerContentProviding>* selectedViewController;
@property(readonly, nonatomic) NSArray *orderedSectionIDs;
-(float)_headerViewHeightForMode:(int)mode;
-(void)hostWillPresent;
@end

@interface _SBUIWidgetViewController : UIViewController
-(id)init;
@end

@interface SBTableViewCellActionButton : UIView
-(void)layoutSubviews;
@end

@interface SBNotificationsAllModeViewController : UIViewController
-(id)contentUnavailableText;
@end

@interface SBBulletinListSection : UIView
@property(assign, nonatomic) unsigned messageNumberOfLines;
@property(assign, nonatomic) BOOL showsMessagePreview;
-(BOOL)showsMessagePreviewForBulletinID:(id)bulletinID;
-(void)setShowsMessagePreview:(BOOL)preview forSubsectionID:(id)subsectionID;
-(BOOL)showsMessagePreviewForBulletinsInSubsectionID:(id)subsectionID;
@end

@interface SBBulletinListController : UIViewController
-(void)_clearSection:(id)section;
@end

@interface SBIcon : UIView
-(id)badgeNumberOrString;
-(void)setBadge:(id)value;
@end

@interface SBIconModel : UIView
-(SBIcon *)applicationIconForBundleIdentifier:(NSString *)bundleIdentifier;
@end

@interface SBIconViewMap : UIView
+(SBIconViewMap *)homescreenMap;
-(SBIconModel *)iconModel;
@end

@interface SBBulletinListSubsection : UIView
@property(assign, nonatomic) BOOL showsMessagePreview;
@end

@interface SBBannerContainerView : UIView
@property(assign, nonatomic) UIView* backgroundView;
@end


@interface SBControlCenterController : UIViewController
-(void)_beginPresentation;
-(void)cancelTransition;
-(BOOL)isUILocked;
@end

@interface SBCCSettingsSectionController : UIViewController
-(BOOL)enabledForOrientation:(int)orientation;
-(CGSize)contentSizeForOrientation:(int)orientation;
@end

@interface SBCCBrightnessSectionController : UIViewController
-(BOOL)enabledForOrientation:(int)orientation;
-(CGSize)contentSizeForOrientation:(int)orientation;
-(void)viewDidLayoutSubviews;
-(void)_sliderDidBeginTracking:(id)_slider;
-(void)_sliderDidEndTracking:(id)_slider;
@end

@interface SBCCMediaControlsSectionController : UIViewController
-(BOOL)enabledForOrientation:(int)orientation;
-(CGSize)contentSizeForOrientation:(int)orientation;
@end

@interface SBCCAirStuffSectionController : UIViewController
@property(assign, nonatomic) BOOL airDropEnabled;
@property(assign, nonatomic) BOOL airPlayEnabled;
-(BOOL)enabledForOrientation:(int)orientation;
-(CGSize)contentSizeForOrientation:(int)orientation;
-(void)_updateAirPlayControlAsEnabled:(BOOL)enabled;
-(void)_showAirPlayView:(id)view;
@end

@interface SBCCButtonLikeSectionView : UIView
-(void)layoutSubviews;
@end

@interface SBCCQuickLaunchSectionController : UIViewController
-(BOOL)enabledForOrientation:(int)orientation;
-(CGSize)contentSizeForOrientation:(int)orientation;
@end

@interface SBControlCenterSeparatorView : UIView
+(float)defaultBreadthForOrientation:(int)orientation;
@end

@interface UIImage (SimpleCenters)
-(UIImage *)_flatImageWithColor:(UIColor *)color;
@end

@interface SBUIControlCenterButton : UIView
-(void)_setBackgroundImage:(id)bg naturalHeight:(CGFloat)height;
-(void)_updateGlyphForStateChange;
-(long long)_currentState;
-(id)_glyphImageForState:(long long)arg1;
-(CGRect)_rectForGlyph:(id)arg1 centeredInRect:(CGRect)arg2;
@end

@interface SBControlCenterGrabberView : UIView
-(void)controlCenterWillPresent;
-(id)chevronView;
-(void)presentStatusUpdate:(id)update;
@end

@interface SBControlCenterSettings : UIViewController
@property(assign) BOOL useNewBounce;
@end

@interface SBCCAirplaneModeSetting : UIViewController
-(BOOL)_toggleState;
@end

@interface SBCCWifiModeSetting : UIViewController
-(BOOL)_toggleState;
@end

@interface SBCCBluetoothModeSetting : UIViewController
-(BOOL)_toggleState;
@end

@interface SBCCDoNotDisturbModeSetting : UIViewController
-(BOOL)_toggleState;
@end

@interface SBCCOrientationLockModeSetting : UIViewController
-(BOOL)_toggleState;
@end

@interface SBControlCenterContainerView : UIView
-(void)_updateDarkeningFrame;
@end

@interface SBControlCenterContentContainerView : UIView
@property(retain, nonatomic) _UIBackdropView* backdropView;
-(void)layoutSubviews;
@end

@interface SBControlCenterContentView : UIView
@property(retain) SBControlCenterGrabberView* grabberView;
@end

@interface SBMediaController : UIViewController
+(id)sharedInstance;
@end

@interface BluetoothManager : NSObject
+(id)sharedInstance;
-(BOOL)enabled;
@end

static BOOL enabled = YES;

static BOOL noTabs = YES;
static BOOL noDate = NO;
static BOOL todayHeaders = YES;
static BOOL noTodayBG = NO;
static BOOL noTodayIcon = NO;
static BOOL noTodayText = NO;
static BOOL notificationHeaders = NO;
static BOOL noHeaderBG = YES;
static BOOL noHeaderIcon = NO;
static BOOL noHeaderText = YES;
static BOOL NCIfNotifications = NO;
static BOOL oneTapClear = YES;
static BOOL noX = NO;
static BOOL hideX = NO;
static BOOL clearNCButtons = YES;
static BOOL hidePreviews = NO;
static BOOL hideBanners = NO;
static BOOL markBadge = NO;
static BOOL noNCBlur = NO;
static BOOL noNCBG = NO;
static BOOL bottomSeparator = YES;
static BOOL editSeparator = YES;
static BOOL noEditButton = NO;
static BOOL noNewWidget = YES;
static BOOL noChevron = NO;
static BOOL makeNCGrabberSame = NO;
static BOOL noGrabber = NO;
static BOOL noLSNCGrabber = NO;
static BOOL moreLines = NO;
static BOOL noNotificationLines = YES;
static BOOL lines = YES;
static BOOL clearStatus = YES;
static BOOL noStatus = YES;
static BOOL noWeather = NO;
static BOOL noText = YES;
static BOOL noNotificationsText = NO;
static BOOL noNotifications = NO;
static BOOL noToday = NO;
static BOOL singleSwipeNC = NO;
static BOOL disableNC = NO;

static BOOL hideSettings = NO;
static BOOL hideBrightness = NO;
static BOOL hideMedia = NO;
static BOOL hideAirStuff = NO;
static BOOL hideQuickLaunch = NO;
static BOOL hideConditionalMedia = YES;
static BOOL hideConditionalAirStuff = YES;
static BOOL alwaysShowAirPlay = NO;
static BOOL hideButtonBG = YES;
static BOOL hideDarkBG = YES;
static BOOL noCCBlur = NO;
static BOOL noCCBG = NO;
static BOOL hideSeparators = YES;
static BOOL hideGrabber = NO;
static BOOL makeCCGrabberSame = NO;
static BOOL hideCCGrabber = NO;
static BOOL noLSCCGrabber = NO;
static BOOL brightnessHideCC = YES;
static BOOL brightnessHideTint = YES;
static BOOL landscape = NO;
static BOOL oldCCBounce = NO;
static BOOL noStatusText = NO;
static BOOL fixLSCC = YES;
static BOOL lockToggles = NO;
static BOOL singleSwipeCC = NO;
static BOOL disableCC = NO;

static void loadPrefs()
{
    NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.tweaksbylogan.SimpleCentersPrefs.plist"];
    if(prefs) {

        enabled = ([prefs objectForKey:@"enabled"] ? [[prefs objectForKey:@"enabled"] boolValue] : enabled );

        noTabs = ([prefs objectForKey:@"noTabs"] ? [[prefs objectForKey:@"noTabs"] boolValue] : noTabs );
	noDate = ([prefs objectForKey:@"noDate"] ? [[prefs objectForKey:@"noDate"] boolValue] : noDate );
	todayHeaders= ([prefs objectForKey:@"todayHeaders"] ? [[prefs objectForKey:@"todayHeaders"] boolValue] : todayHeaders );
	noTodayBG = ([prefs objectForKey:@"noTodayBG"] ? [[prefs objectForKey:@"noTodayBG"] boolValue] : noTodayBG );
	noTodayIcon = ([prefs objectForKey:@"noTodayIcon"] ? [[prefs objectForKey:@"noTodayIcon"] boolValue] : noTodayIcon );
	noTodayText = ([prefs objectForKey:@"noTodayText"] ? [[prefs objectForKey:@"noTodayText"] boolValue] : noTodayText );
	notificationHeaders = ([prefs objectForKey:@"notificationHeaders"] ? [[prefs objectForKey:@"notificationHeaders"] boolValue] : notificationHeaders );
	noHeaderBG = ([prefs objectForKey:@"noHeaderBG"] ? [[prefs objectForKey:@"noHeaderBG"] boolValue] : noHeaderBG );
	noHeaderIcon = ([prefs objectForKey:@"noHeaderIcon"] ? [[prefs objectForKey:@"noHeaderIcon"] boolValue] : noHeaderIcon );
	noHeaderText = ([prefs objectForKey:@"noHeaderText"] ? [[prefs objectForKey:@"noHeaderText"] boolValue] : noHeaderText );
	oneTapClear = ([prefs objectForKey:@"oneTapClear"] ? [[prefs objectForKey:@"oneTapClear"] boolValue] : oneTapClear );
	noX = ([prefs objectForKey:@"noX"] ? [[prefs objectForKey:@"noX"] boolValue] : noX );
	hideX = ([prefs objectForKey:@"hideX"] ? [[prefs objectForKey:@"hideX"] boolValue] : hideX );
	NCIfNotifications = ([prefs objectForKey:@"NCIfNotifications"] ? [[prefs objectForKey:@"NCIfNotifications"] boolValue] : NCIfNotifications );
	clearNCButtons = ([prefs objectForKey:@"clearNCButtons"] ? [[prefs objectForKey:@"clearNCButtons"] boolValue] : clearNCButtons );
	hidePreviews = ([prefs objectForKey:@"hidePreviews"] ? [[prefs objectForKey:@"hidePreviews"] boolValue] : hidePreviews );
	hideBanners = ([prefs objectForKey:@"hideBanners"] ? [[prefs objectForKey:@"hideBanners"] boolValue] : hideBanners );
	markBadge = ([prefs objectForKey:@"markBadge"] ? [[prefs objectForKey:@"markBadge"] boolValue] : markBadge );
	noNCBlur = ([prefs objectForKey:@"noNCBlur"] ? [[prefs objectForKey:@"noNCBlur"] boolValue] : noNCBlur );
	noNCBG = ([prefs objectForKey:@"noNCBG"] ? [[prefs objectForKey:@"noNCBG"] boolValue] : noNCBG );
	bottomSeparator = ([prefs objectForKey:@"bottomSeparator"] ? [[prefs objectForKey:@"bottomSeparator"] boolValue] : bottomSeparator );
	editSeparator = ([prefs objectForKey:@"editSeparator"] ? [[prefs objectForKey:@"editSeparator"] boolValue] : editSeparator );
	noEditButton = ([prefs objectForKey:@"noEditButton"] ? [[prefs objectForKey:@"noEditButton"] boolValue] : noEditButton );
	noNewWidget = ([prefs objectForKey:@"noNewWidget"] ? [[prefs objectForKey:@"noNewWidget"] boolValue] : noNewWidget );
	noChevron = ([prefs objectForKey:@"noChevron"] ? [[prefs objectForKey:@"noChevron"] boolValue] : noChevron );
	makeNCGrabberSame = ([prefs objectForKey:@"makeNCGrabberSame"] ? [[prefs objectForKey:@"makeNCGrabberSame"] boolValue] : makeNCGrabberSame );
	noGrabber = ([prefs objectForKey:@"noGrabber"] ? [[prefs objectForKey:@"noGrabber"] boolValue] : noGrabber );
	noLSNCGrabber = ([prefs objectForKey:@"noLSNCGrabber"] ? [[prefs objectForKey:@"noLSNCGrabber"] boolValue] : noLSNCGrabber );
	moreLines = ([prefs objectForKey:@"moreLines"] ? [[prefs objectForKey:@"moreLines"] boolValue] : moreLines );
	noNotificationLines = ([prefs objectForKey:@"noNotificationLines"] ? [[prefs objectForKey:@"noNotificationLines"] boolValue] : noNotificationLines );
	lines = ([prefs objectForKey:@"lines"] ? [[prefs objectForKey:@"lines"] boolValue] :lines );
	clearStatus = ([prefs objectForKey:@"clearStatus"] ? [[prefs objectForKey:@"clearStatus"] boolValue] : clearStatus );
	noStatus = ([prefs objectForKey:@"noStatus"] ? [[prefs objectForKey:@"noStatus"] boolValue] : noStatus );
	noWeather = ([prefs objectForKey:@"noWeather"] ? [[prefs objectForKey:@"noWeather"] boolValue] : noWeather );
	noNotificationsText = ([prefs objectForKey:@"noNotificationsText"] ? [[prefs objectForKey:@"noNotificationsText"] boolValue] : noNotificationsText );
	noText = ([prefs objectForKey:@"noText"] ? [[prefs objectForKey:@"noText"] boolValue] : noText );
	noNotifications = ([prefs objectForKey:@"noNotifications"] ? [[prefs objectForKey:@"noNotifications"] boolValue] : noNotifications );
	noToday = ([prefs objectForKey:@"noToday"] ? [[prefs objectForKey:@"noToday"] boolValue] : noToday );
	singleSwipeNC = ([prefs objectForKey:@"singleSwipeNC"] ? [[prefs objectForKey:@"singleSwipeNC"] boolValue] : singleSwipeNC );
	disableNC = ([prefs objectForKey:@"disableNC"] ? [[prefs objectForKey:@"disableNC"] boolValue] : disableNC );

	hideSettings = ([prefs objectForKey:@"hideSettings"] ? [[prefs objectForKey:@"hideSettings"] boolValue] : hideSettings );
	hideBrightness = ([prefs objectForKey:@"hideBrightness"] ? [[prefs objectForKey:@"hideBrightness"] boolValue] : hideBrightness );
	hideMedia = ([prefs objectForKey:@"hideMedia"] ? [[prefs objectForKey:@"hideMedia"] boolValue] : hideMedia );
	hideAirStuff = ([prefs objectForKey:@"hideAirStuff"] ? [[prefs objectForKey:@"hideAirStuff"] boolValue] : hideAirStuff );
	hideQuickLaunch = ([prefs objectForKey:@"hideQuickLaunch"] ? [[prefs objectForKey:@"hideQuickLaunch"] boolValue] : hideQuickLaunch );
	hideConditionalMedia = ([prefs objectForKey:@"hideConditionalMedia"] ? [[prefs objectForKey:@"hideConditionalMedia"] boolValue] : hideConditionalMedia );
	hideConditionalAirStuff = ([prefs objectForKey:@"hideConditionalAirStuff"] ? [[prefs objectForKey:@"hideConditionalAirStuff"] boolValue] : hideConditionalAirStuff );
	alwaysShowAirPlay = ([prefs objectForKey:@"alwaysShowAirPlay"] ? [[prefs objectForKey:@"alwaysShowAirPlay"] boolValue] : alwaysShowAirPlay );
	hideButtonBG = ([prefs objectForKey:@"hideButtonBG"] ? [[prefs objectForKey:@"hideButtonBG"] boolValue] : hideButtonBG );
	hideDarkBG = ([prefs objectForKey:@"hideDarkBG"] ? [[prefs objectForKey:@"hideDarkBG"] boolValue] : hideDarkBG );
	noCCBlur = ([prefs objectForKey:@"noCCBlur"] ? [[prefs objectForKey:@"noCCBlur"] boolValue] : noCCBlur );
	noCCBG = ([prefs objectForKey:@"noCCBG"] ? [[prefs objectForKey:@"noCCBG"] boolValue] : noCCBG );
	hideSeparators = ([prefs objectForKey:@"hideSeparators"] ? [[prefs objectForKey:@"hideSeparators"] boolValue] : hideSeparators );
	hideGrabber = ([prefs objectForKey:@"hideGrabber"] ? [[prefs objectForKey:@"hideGrabber"] boolValue] : hideGrabber );
	makeCCGrabberSame = ([prefs objectForKey:@"makeCCGrabberSame"] ? [[prefs objectForKey:@"makeCCGrabberSame"] boolValue] : makeCCGrabberSame );
	hideCCGrabber = ([prefs objectForKey:@"hideCCGrabber"] ? [[prefs objectForKey:@"hideCCGrabber"] boolValue] : hideCCGrabber );
	noLSCCGrabber = ([prefs objectForKey:@"noLSCCGrabber"] ? [[prefs objectForKey:@"noLSCCGrabber"] boolValue] : noLSCCGrabber );
	brightnessHideCC = ([prefs objectForKey:@"brightnessHideCC"] ? [[prefs objectForKey:@"brightnessHideCC"] boolValue] : brightnessHideCC );
	brightnessHideTint = ([prefs objectForKey:@"brightnessHideTint"] ? [[prefs objectForKey:@"brightnessHideTint"] boolValue] : brightnessHideTint );
	landscape = ([prefs objectForKey:@"landscape"] ? [[prefs objectForKey:@"landscape"] boolValue] : landscape );
	oldCCBounce = ([prefs objectForKey:@"oldCCBounce"] ? [[prefs objectForKey:@"oldCCBounce"] boolValue] : oldCCBounce );
	noStatusText = ([prefs objectForKey:@"noStatusText"] ? [[prefs objectForKey:@"noStatusText"] boolValue] : noStatusText );
	fixLSCC = ([prefs objectForKey:@"fixLSCC"] ? [[prefs objectForKey:@"fixLSCC"] boolValue] : fixLSCC );
	lockToggles = ([prefs objectForKey:@"lockToggles"] ? [[prefs objectForKey:@"lockToggles"] boolValue] : lockToggles );
	singleSwipeCC = ([prefs objectForKey:@"singleSwipeCC"] ? [[prefs objectForKey:@"singleSwipeCC"] boolValue] : singleSwipeCC );
	disableCC = ([prefs objectForKey:@"disableCC"] ? [[prefs objectForKey:@"disableCC"] boolValue] : disableCC );
    }

    [prefs release];
}

%hook SBUIController
-(void)handleShowNotificationsSystemGesture:(id)gesture {
	
	if(disableNC && enabled){
		
	}
	else {
	
		%orig(gesture);
	}
}

-(void)handleShowControlCenterSystemGesture:(id)gesture {
	
	if(disableCC && enabled){
		
	}
	else {
	
		%orig(gesture);
	}
}

-(BOOL)shouldShowNotificationCenterTabControlOnFirstSwipe {

	if(singleSwipeNC && enabled){
	
		return YES;	
	}
	else {
	
		return %orig;
	}
}

-(BOOL)shouldShowControlCenterTabControlOnFirstSwipe {

	if(singleSwipeCC && enabled){
	
		return YES;	
	}
	else {
	
		return %orig;
	}
}
%end

%hook SBLockScreenView
-(void)setTopGrabberHidden:(BOOL)hidden forRequester:(id)requester {

	if (noLSNCGrabber && enabled) {

		%orig(YES, requester);
	}

	else {

		%orig(hidden, requester);
	}
}

-(void)setBottomGrabberHidden:(BOOL)hidden forRequester:(id)requester {

	if (noLSCCGrabber && enabled) {

		%orig(YES, requester);
	}

	else {

		%orig(hidden, requester);
	}
}

-(void)setTopBottomGrabbersHidden:(BOOL)hidden forRequester:(id)requester {

	if (noLSNCGrabber && noLSCCGrabber && enabled) {

		%orig(YES, requester);
	}

	else {

		%orig(hidden, requester);
	}
}
%end


%hook SBNotificationCenterController
-(void)beginPresentationWithTouchLocation:(CGPoint)touchLocation {

	loadPrefs();

	%orig(touchLocation);
}
%end

%hook SBTodayTableHeaderView
-(CGSize)sizeThatFits:(CGSize)fits {

	CGSize original = %orig(fits);

	if (noDate && enabled) {
		
		[self setHidden:YES];
		return CGSizeMake(0,0);
	}
	
	else {

		return original;
	}
}
%end

%hook SBTodayTableFooterView
-(void)layoutSubviews {

	%orig;

	if (editSeparator && enabled) {
		SBNotificationSeparatorView *separator = MSHookIvar<SBNotificationSeparatorView *>(self, "_separatorView");
		CGRect newFrame=separator.frame;
		CGRect newBounds=separator.bounds;
		newFrame.size.height=0;
		newBounds.size.height=0;
		[separator setFrame:newFrame];
		[separator setBounds:newBounds];
		[separator setHidden:YES];}

	if (noEditButton && enabled) {
		SBNotificationVibrantButton *editButton = MSHookIvar<SBNotificationVibrantButton *>(self, "_button");
		CGRect newFrame=editButton.frame;
		CGRect newBounds=editButton.bounds;
		newFrame.size.height=0;
		newBounds.size.height=0;
		[editButton setFrame:newFrame];
		[editButton setBounds:newBounds];
		[editButton setHidden:YES];}

	if (noNewWidget && enabled) {
		SBNewWidgetLabel *newWidgetLabel = MSHookIvar<SBNewWidgetLabel *>(self, "_newWidgetsLabel");
		CGRect newFrame=newWidgetLabel.frame;
		CGRect newBounds=newWidgetLabel.bounds;
		newFrame.size.height=0;
		newBounds.size.height=0;
		[newWidgetLabel setFrame:newFrame];
		[newWidgetLabel setBounds:newBounds];
		[newWidgetLabel setHidden:YES];}
	}
%end

%hook SBTodayBulletinCell
-(void)layoutSubviews {

	%orig;

	if (noWeather && enabled) {
	UILabel *weatherLabel = MSHookIvar<UILabel *>(self, "_label");
	CGRect weatherLabelFrame=weatherLabel.frame;
	CGRect weatherLabelBounds=weatherLabel.bounds;
	weatherLabelFrame.size.height=0;
	weatherLabelBounds.size.height=0;
	[weatherLabel setFrame:weatherLabelFrame];
	[weatherLabel setBounds:weatherLabelBounds];
	[weatherLabel setHidden:YES];
	UIImageView *weatherIcon = MSHookIvar<UIImageView *>(self, "_iconImageView");
	CGRect iconNewFrame=weatherIcon.frame;
	CGRect iconNewBounds=weatherIcon.bounds;
	iconNewFrame.size.height=0;
	iconNewBounds.size.height=0;
	[weatherIcon setFrame:iconNewFrame];
	[weatherIcon setBounds:iconNewBounds];
	[weatherIcon setHidden:YES];
	}
}
%end

%hook SBNotificationCenterSeparatorView
-(id)initWithFrame:(CGRect)theRect mode:(int)theInt {
	if (lines && enabled) {
    	return nil;}

	else {
	return %orig(theRect,theInt);}
}
%end

%hook SBNotificationCenterHeaderView
-(void)layoutSubviews {

	%orig;

	if (MSHookIvar<id>(self,"_clearButton")==nil) {

		if (noTodayBG && enabled) {
		UIView *background = MSHookIvar<UIView *>(self, "_plusDView");
		background.backgroundColor = [UIColor clearColor];}
		if (noTodayIcon && enabled) {
		self.iconImageView.hidden = YES;}
		if (noTodayText && enabled) {
		self.titleLabel.hidden = YES;}
		if (todayHeaders && enabled) {
		CGRect newFrame=self.frame;
		CGRect newBounds=self.bounds;
		newFrame.size.height=0;
		newBounds.size.height=0;
		[self setFrame:newFrame];
		[self setBounds:newBounds];
		[self setHidden:YES];}
		}
	else {
		if (noHeaderBG && enabled) {
		UIView *background = MSHookIvar<UIView *>(self, "_plusDView");
		background.backgroundColor = [UIColor clearColor];}
		if (noHeaderIcon && enabled) {
		self.iconImageView.hidden = YES;}
		if (noHeaderText && enabled) {
		self.titleLabel.hidden = YES;}
		if (notificationHeaders && enabled) {
		CGRect newFrame=self.frame;
		CGRect newBounds=self.bounds;
		newFrame.size.height=0;
		newBounds.size.height=0;
		[self setFrame:newFrame];
		[self setBounds:newBounds];
		[self setHidden:YES];}
	}

	if (hideX && enabled) {

		SBNotificationsClearButton *xButton = MSHookIvar<id>(self,"_clearButton");
		CGRect newFrame=xButton.frame;
		CGRect newBounds=xButton.bounds;
		newFrame.size.height=0;
		newBounds.size.height=0;
		[xButton setFrame:newFrame];
		[xButton setBounds:newBounds];
		[xButton setHidden:YES];
	}
}

-(void)buttonAction:(id)arg1 {

	if (oneTapClear && enabled) {

		MSHookIvar<id>(self, "_xAction") = MSHookIvar<id>(self, "_clearAction");
	}
	%orig(arg1);
}

-(void)_setShowsClear:(BOOL)clear animated:(BOOL)animated {

	if (noX && enabled) {

		%orig(YES, NO);
	}

	else {

		%orig(clear, animated);
	}
}
%end

%hook SBNotificationsSectionHeaderView
-(void)buttonAction:(id)arg1 {

	if (oneTapClear && enabled) {

		id xButton = MSHookIvar<id>(self, "_xButton");
    		id clearButton = MSHookIvar<id>(self, "_clearButton");
    		if (arg1 == xButton) {

       			arg1 = clearButton;
        		MSHookIvar<BOOL>(self, "_showingClear") = YES;
    		}
	}
	%orig(arg1);
}
%end

%hook SBNotificationCenterViewController
-(void)viewDidLoad {
	
	%orig;
	if (noChevron && enabled) {
	self.grabberView.hidden = YES;}
	UIStatusBar *statusBar = MSHookIvar<UIStatusBar *>(self, "_statusBar");
	if (clearStatus && enabled) {
	statusBar.hidden = YES;}
	if (noStatus && enabled) {
	CGRect newFrame=statusBar.frame;
	CGRect newBounds=statusBar.bounds;
	newFrame.size.height=0;
	newBounds.size.height=0;
	[statusBar setFrame:newFrame];
	[statusBar setBounds:newBounds];}
	if (noNCBlur && enabled) {
	self.backdropView.backgroundColor = [UIColor blackColor];}
	if (noNCBG && enabled) {
	self.backdropView.hidden = YES;}
}

-(void)_loadBottomSeparator {

	if (bottomSeparator && enabled) {

	}
	else {
	return %orig;
	}
}

-(void)presentGrabberView {

	if (noGrabber && enabled) {

	}
	else {

		%orig;
	}
}

-(SBChevronView *)grabberView {

	if (makeNCGrabberSame && enabled) {

		return nil;
	}

	else {

		return %orig;
	}
}
%end

%hook SBModeViewController
-(float)_headerViewHeightForMode:(int)mode {
	if (noTabs && enabled) {

		return 0;
	}

	else {

		return %orig(mode);
	}
}

- (void)hostWillPresent {

	int index = 0;

        if([[self viewControllers] count] > 1 && NCIfNotifications && enabled) { 

        	if([[[[self viewControllers] objectAtIndex:1] orderedSectionIDs] count] != 0) {

            		index = 1;
        	}
		[self setSelectedViewController:[[self viewControllers] objectAtIndex:index]];
        }

	if (noToday && enabled) {

		index = 1;
		[self setSelectedViewController:[[self viewControllers] objectAtIndex:index]];
	}

	if (noNotifications && enabled) {

		index = 0;
		[self setSelectedViewController:[[self viewControllers] objectAtIndex:index]];
	}
	
	%orig;
}
%end

%hook _SBUIWidgetViewController
-(id)init {

	if ([NSStringFromClass([self class]) isEqualToString:@"AttributionWeeAppController"] && noText && enabled) {

		return nil;
	} 

	else {

		self = %orig;
		return self;
	}
}
%end

%hook SBTableViewCellActionButton
-(void)layoutSubviews
{
	%orig;

	if (clearNCButtons && enabled) {
	self.layer.backgroundColor = [[UIColor clearColor] CGColor];
	UIView *hookedBackground = MSHookIvar<UIView *>(self, "_backgroundView");
	hookedBackground.backgroundColor = [UIColor clearColor];}
}
%end

%hook SBNotificationsAllModeViewController
-(id)contentUnavailableText {
	
	if (noNotificationsText && enabled) {

		return nil;
	}
	
	else {

		return %orig;
	}
}
%end

%hook SBBulletinListSection
-(unsigned int)messageNumberOfLines {

	if (moreLines && enabled) {

		return %orig * 2;
	}
	
	else if (hidePreviews && enabled) {

		return 0;
	}

	else {

		return %orig;
	}
}

-(void)setMessageNumberOfLines:(unsigned int)number {

	if (moreLines && enabled) {

		%orig(number * 2);
	}

	else if (hidePreviews && enabled) {

		%orig(0);
	}

	else {

		%orig(number);
	}
}
	
-(BOOL)showsMessagePreview {

	if (hidePreviews && enabled) {

		return NO;
	}

	else {

		return %orig;
	}
}

-(void)setShowsMessagePreview:(BOOL)preview {

	if (hidePreviews && enabled) {

		%orig(NO);
	}

	else {

		%orig(preview);
	}
}

-(BOOL)showsMessagePreviewForBulletinID:(id)bulletinID {

	if (hidePreviews && enabled) {

		return NO;
	}

	else {

		return %orig(bulletinID);
	}
}

-(void)setShowsMessagePreview:(BOOL)preview forSubsectionID:(id)subsectionID {

	if (hidePreviews && enabled) {

		%orig(NO, subsectionID);
	}

	else {

		return %orig(preview, subsectionID);
	}
}

-(BOOL)showsMessagePreviewForBulletinsInSubsectionID:(id)subsectionID {

	if (hidePreviews && enabled) {

		return NO;
	}

	else {

		return %orig(subsectionID);
	}
}
%end

%hook SBBulletinListSubsection
-(BOOL)showsMessagePreview {

	if (hidePreviews && enabled) {

		return NO;
	}

	else {

		return %orig;
	}
}

-(void)setShowsMessagePreview:(BOOL)preview {

	if (hidePreviews && enabled) {

		%orig(NO);
	}

	else {

		%orig(preview);
	}
}
%end

%hook SBBulletinListController
-(void)_clearSection:(id)section {
	
	%orig(section);

	if (markBadge && enabled) {

		SBIconModel *iconModel = (SBIconModel *)[(SBIconViewMap *)[%c(SBIconViewMap) homescreenMap] iconModel];
		SBIcon *icon = [iconModel applicationIconForBundleIdentifier:section];
		if (icon && [icon badgeNumberOrString]) {

        		[icon setBadge:nil];
		}
	}
}
%end

%hook SBBannerContainerView
-(UIView *)backgroundView {

	if (hideBanners && enabled) {

		return nil;
	}

	else {

		return %orig;
	}
}
%end

%hook SBNotificationSeparatorView
+(id)separatorForCurrentState {

	if (noNotificationLines && enabled) {

		return nil;
	}

	else {

		return %orig;
	}
}

+(int)separatorViewModeForCurrentState {
	
	if (noNotificationLines && enabled) {

		return 0;
	}

	else {

		return %orig;
	}
}

+(id)separatorWithScreenScale:(float)screenScale mode:(int)mode {

	if (noNotificationLines && enabled) {

		return nil;
	}

	else {

		return %orig(screenScale, mode);
	}
}

-(void)setBounds:(CGRect)bounds {

	if (noNotificationLines && enabled) {

		
	}

	else {

		%orig(bounds);
	}
}

-(void)setFrame:(CGRect)frame {

	if (noNotificationLines && enabled) {

		
	}

	else {

		%orig(frame);
	}
}

-(void)updateForCurrentState {

	if (noNotificationLines && enabled) {

		
	}

	else {

		%orig;
	}
}
-(id)initWithFrame:(CGRect)frame mode:(int)mode {

	if (noNotificationLines && enabled) {

		return nil;
	}

	else {

		return %orig(frame, mode);
	}
}
%end


%hook SBControlCenterController
-(void)_beginPresentation {

	loadPrefs();
	
	if (enabled) {

		if (hideConditionalMedia) {

        		BOOL nowPlaying = MSHookIvar<BOOL>([objc_getClass("SBMediaController") sharedInstance], "_lastNowPlayingAppIsPlaying");
        
        		if (!nowPlaying) {

            			hideMedia = YES;
        		}
    		}

		if (hideConditionalAirStuff) {
	
        		BluetoothManager *manager = [objc_getClass("BluetoothManager") sharedInstance];
        		BOOL bluetoothOn = [manager enabled];
        		BOOL airPlayIsEnabled = MSHookIvar<SBCCAirStuffSectionController *>(MSHookIvar<id>(MSHookIvar<id>(self, "_viewController"), "_contentView"), "_airplaySection").airPlayEnabled;
			BOOL airDropIsEnabled = MSHookIvar<SBCCAirStuffSectionController *>(MSHookIvar<id>(MSHookIvar<id>(self, "_viewController"), "_contentView"), "_airplaySection").airDropEnabled;
        
        		if (bluetoothOn || airPlayIsEnabled || airDropIsEnabled) {

            			hideAirStuff = NO;
        		}
		
			else {

            			hideAirStuff = YES;
        		}
    		}

	}

	%orig;

	if (hideSettings && hideBrightness && hideMedia && hideAirStuff && hideQuickLaunch && enabled) {

        	[self cancelTransition];
        }
	
	if (!landscape) {

		if (enabled) {

			int orientation = MSHookIvar<int>(self, "_orientation");

        		if (orientation == 3 || orientation == 4) {
            
				hideSettings = NO;
				hideBrightness = NO;
				hideMedia = NO;
				hideAirStuff = NO;
				hideQuickLaunch = NO;
       			}
		}
	}
}

-(BOOL)isUILocked {

	if (fixLSCC && enabled) {

		return NO;
	}

	else {
		
		return %orig;
	}
}
%end

%hook SBCCSettingsSectionController
-(BOOL)enabledForOrientation:(int)orientation {
    
	if (hideSettings && enabled) {

		return NO;
	}

	else {

        	return %orig;
	}
}

-(CGSize)contentSizeForOrientation:(int)orientation {

	if (hideSettings && enabled) {

        	return CGSizeMake(0, 0);
	}
	
	else {

        	return %orig(orientation);
	}
}
%end

%hook SBCCBrightnessSectionController
-(BOOL)enabledForOrientation:(int)orientation {
    
	if (hideBrightness && enabled) {

		return NO;
	}

	else {

        	return %orig;
	}
}

-(CGSize)contentSizeForOrientation:(int)orientation {

	if (hideBrightness && enabled) {

        	return CGSizeMake(0, 0);
	}
	
	else {

        	return %orig(orientation);
	}
}

-(void)viewDidLayoutSubviews {

	%orig;

	if (hideDarkBG && enabled) {

		UIVisualEffectView *background = MSHookIvar<UIVisualEffectView *>(self, "_vibrantDarkenLayer");
		background.hidden = YES;
	}
}
%end

%hook SBCCMediaControlsSectionController
-(BOOL)enabledForOrientation:(int)orientation {
    
	if (hideMedia && enabled) {

		return NO;
	}

	else {

        	return %orig;
	}
}

-(CGSize)contentSizeForOrientation:(int)orientation {

	if (hideMedia && enabled) {

        	return CGSizeMake(0, 0);
	}
	
	else {

        	return %orig(orientation);
	}
}
%end

%hook SBCCAirStuffSectionController
-(BOOL)enabledForOrientation:(int)orientation {
    
	if (hideAirStuff && enabled) {

		return NO;
	}

	else {

        	return %orig;
	}
}

-(CGSize)contentSizeForOrientation:(int)orientation {

	if (hideAirStuff && enabled) {

        	return CGSizeMake(0, 0);
	}
	
	else {

        	return %orig(orientation);
	}
}

-(BOOL)airPlayEnabled {

	if (alwaysShowAirPlay && enabled) {

		return YES;
	}

	else {
	
		return %orig;
	}
}

-(void)setAirPlayEnabled:(BOOL)enabled {

	if (alwaysShowAirPlay && enabled) {

		%orig(YES);
	}

	else {
	
		%orig(enabled);
	}
}

-(void)_updateAirPlayControlAsEnabled:(BOOL)enabled {

	if (alwaysShowAirPlay && enabled) {

		%orig(YES);
	}

	else {
	
		%orig(enabled);
	}
}

-(void)_showAirPlayView:(id)view {

	if (alwaysShowAirPlay && enabled) {

		%orig(@"true");
	}

	else {
	
		%orig(view);
	}
}
%end

%hook SBCCButtonLikeSectionView
-(void)layoutSubviews {

	%orig;

	if (hideDarkBG && enabled) {

		UIVisualEffectView *background = MSHookIvar<UIVisualEffectView *>(self, "_vibrantDarkenLayer");
		background.hidden = YES;
	}
}
%end

%hook SBCCQuickLaunchSectionController
-(BOOL)enabledForOrientation:(int)orientation {
    
	if (hideQuickLaunch && enabled) {

		return NO;
	}

	else {

        	return %orig;
	}
}

-(CGSize)contentSizeForOrientation:(int)orientation {

	if (hideQuickLaunch && enabled) {

        	return CGSizeMake(0, 0);
	}
	
	else {

        	return %orig(orientation);
	}
}
%end

%hook SBControlCenterSeparatorView
+(float)defaultBreadthForOrientation:(int)orientation {
    
	if (hideSeparators && enabled) {

        	return 0;
	}
	
	else {

       		return %orig;
	}
}
%end

%hook SBUIControlCenterButton
-(void)_setBackgroundImage:(id)bg naturalHeight:(CGFloat)height {
	
	if (hideButtonBG && enabled) {

		%orig(bg, height);
		UIVisualEffectView *background = MSHookIvar<UIVisualEffectView *>(self, "_backgroundEffectView");
		background.hidden = YES;
	}

	else {

		%orig(bg, height);
	}
}

-(void)_updateGlyphForStateChange {

	%orig;

	if (hideButtonBG && enabled) {
	
		NSInteger currentState = [self _currentState];
		UIColor *color = nil;

		if (currentState != 0) {

			color = [UIColor whiteColor];
		}

    		UIImage *glyphImage = [[self _glyphImageForState:currentState] _flatImageWithColor:color];
    		CGRect glyphRect = [self _rectForGlyph:glyphImage centeredInRect:[self bounds]];
    		UIImageView *_glyphImageView = MSHookIvar<UIImageView *>(self, "_glyphImageView");

    		[[_glyphImageView layer] setCompositingFilter:nil];
    		_glyphImageView.frame = glyphRect;
    		_glyphImageView.image = glyphImage;
    		_glyphImageView.alpha = 1.0;
	}
}
%end

%hook SBControlCenterGrabberView
-(void)controlCenterWillPresent {

	%orig;

	if (hideGrabber && enabled) {

        	SBChevronView *chevron = MSHookIvar<SBChevronView *>(self, "_chevronView");
		chevron.hidden = YES;
	}

	else {

		SBChevronView *chevron = MSHookIvar<SBChevronView *>(self, "_chevronView");
		chevron.hidden = NO;
	}
}

-(id)chevronView {

	if (makeCCGrabberSame && enabled) {

		return nil;
	}

	else {

		return %orig;
	}
}

-(void)presentStatusUpdate:(id)update {

	if (noStatusText && enabled) {

		
	}

	else {

		%orig(update);
	}
}
%end

%hook SBCCBrightnessSectionController
-(void)_sliderDidBeginTracking:(id)_slider {

	if (brightnessHideCC && enabled) {

		UIViewController *parentVC = MSHookIvar<UIViewController *>(self,"_parentViewController");
		UIView *parentVCView = [parentVC view];
		UIView *containerView = MSHookIvar<UIView *>(parentVCView,"_contentContainerView");
		CALayer *mask = [CALayer layer];
		mask.backgroundColor = [UIColor blackColor].CGColor;
		mask.frame = CGRectMake([self view].frame.origin.x, [self view].frame.origin.y, [self view].frame.size.width, [self view].frame.size.height);
		containerView.layer.mask = mask;
	}
	
	else {

		%orig(_slider);
	}
}

-(void)_sliderDidEndTracking:(id)_slider {

	if (brightnessHideCC && enabled) {

		UIViewController *parentVC = MSHookIvar<UIViewController *>(self,"_parentViewController");
		UIView *parentVCView = [parentVC view];
		UIView *containerView = MSHookIvar<UIView*>(parentVCView,"_contentContainerView");
		containerView.layer.mask = nil;
	}
	
	else {

		%orig(_slider);
	}
}
%end

%hook SBControlCenterSettings
-(BOOL)useNewBounce {

	if (oldCCBounce && enabled) {

		return NO;
	}

	else {

		return %orig;
	}
}
%end

%hook SBCCAirplaneModeSetting
-(BOOL)_toggleState {

	if (lockToggles && enabled) {

		return NO;
	}

	else {

		return %orig;
	}
}
%end

%hook SBCCWifiModeSetting
-(BOOL)_toggleState {

	if (lockToggles && enabled) {

		return NO;
	}

	else {

		return %orig;
	}
}
%end

%hook SBCCBluetoothModeSetting
-(BOOL)_toggleState {

	if (lockToggles && enabled) {

		return NO;
	}

	else {

		return %orig;
	}
}
%end

%hook SBCCDoNotDisturbSetting
-(BOOL)_toggleState {

	if (lockToggles && enabled) {

		return NO;
	}

	else {

		return %orig;
	}
}
%end

%hook SBCCOrientationLockSetting
-(BOOL)_toggleState {

	if (lockToggles && enabled) {

		return NO;
	}

	else {

		return %orig;
	}
}
%end

%hook SBControlCenterContainerView
-(void)_updateDarkeningFrame {

	%orig;
	UIView *tintView = MSHookIvar<UIView *>(self, "_darkeningView");

	if(brightnessHideTint && enabled) {

		tintView.alpha = 0.01;
	}

	else {

		tintView.alpha = 1;
	}
}
%end

%hook SBControlCenterContentContainerView
-(void)layoutSubviews {

	%orig;
	if (noCCBlur && enabled) {
	self.backdropView.backgroundColor = [UIColor blackColor];}
	if (noCCBG && enabled) {
	self.backdropView.hidden = YES;}
}
%end

%hook SBControlCenterContentView
-(void)setGrabberView:(SBControlCenterGrabberView *)grabber {

	if(hideCCGrabber && enabled) {

		%orig(nil);
	}

	else {

		%orig(grabber);
	}
}
%end

%ctor 
{
    CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)loadPrefs, CFSTR("com.tweaksbylogan.SimpleCentersPrefs/settingschanged"), NULL, CFNotificationSuspensionBehaviorCoalesce);
    loadPrefs();
}