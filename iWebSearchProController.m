#import <UIKit/UIKit.h>
#import "BBWeeAppController-Protocol.h"
#import <SpringBoard/SpringBoard.h>
#import <objc/runtime.h>
#import <Foundation/Foundation.h>

static NSBundle *_iWebSearchProWeeAppBundle = nil;
static BOOL value = YES;
static UIScrollView *scrollView;
static UITextField *searchField;
static NSURL *SGURL(NSString *url) {
NSArray *arr = [NSArray arrayWithObjects:@"http://",@"https://",@"www.",@".com",@".net",@".org",@".us",@".me",@".it",@".uk",@".de",nil];
for (NSString *k in arr) {
if ([url rangeOfString:k].location != NSNotFound) {
NSURL *r = [NSURL URLWithString:url];
if (![[r scheme] length]) r = [NSURL URLWithString:[@"http://" stringByAppendingString:url]];
return r;
}
}

return [NSURL URLWithString:[NSString stringWithFormat:@"http://www.google.com/search?q=%@&ie=utf-8&oe=utf-8", url]];
}
static NSURL *SFURL(NSString *url) {
NSArray *arr = [NSArray arrayWithObjects:@"http://",@"https://",@"www.",@".com",@".net",@".org",@".us",@".me",@".it",@".uk",@".de",nil];
for (NSString *k in arr) {
if ([url rangeOfString:k].location != NSNotFound) {
NSURL *r = [NSURL URLWithString:url];
if (![[r scheme] length]) r = [NSURL URLWithString:[@"http://" stringByAppendingString:url]];
return r;
}
}

return [NSURL URLWithString:[NSString stringWithFormat:@"https://m.facebook.com/?refsrc=http://www.facebook.com/&_rdr#!/search/?query=%@", url]];
}
static NSURL *STURL(NSString *url) {
NSArray *arr = [NSArray arrayWithObjects:@"http://",@"https://",@"www.",@".com",@".net",@".org",@".us",@".me",@".it",@".uk",@".de",nil];
for (NSString *k in arr) {
if ([url rangeOfString:k].location != NSNotFound) {
NSURL *r = [NSURL URLWithString:url];
if (![[r scheme] length]) r = [NSURL URLWithString:[@"http://" stringByAppendingString:url]];
return r;
}
}

return [NSURL URLWithString:[NSString stringWithFormat:@"https://mobile.twitter.com/search?q=%@", url]];
}
static NSURL *SYUURL(NSString *url) {
NSArray *arr = [NSArray arrayWithObjects:@"http://",@"https://",@"www.",@".com",@".net",@".org",@".us",@".me",@".it",@".uk",@".de",nil];
for (NSString *k in arr) {
if ([url rangeOfString:k].location != NSNotFound) {
NSURL *r = [NSURL URLWithString:url];
if (![[r scheme] length]) r = [NSURL URLWithString:[@"http://" stringByAppendingString:url]];
return r;
}
}

return [NSURL URLWithString:[NSString stringWithFormat:@"http://m.youtube.com/results?q=%@", url]];
}
static NSURL *SWIURL(NSString *url) {
NSArray *arr = [NSArray arrayWithObjects:@"http://",@"https://",@"www.",@".com",@".net",@".org",@".us",@".me",@".it",@".uk",@".de",nil];
for (NSString *k in arr) {
if ([url rangeOfString:k].location != NSNotFound) {
NSURL *r = [NSURL URLWithString:url];
if (![[r scheme] length]) r = [NSURL URLWithString:[@"http://" stringByAppendingString:url]];
return r;
}
}

return [NSURL URLWithString:[NSString stringWithFormat:@"http://en.m.wikipedia.org/wiki/%@", url]];
}
static NSURL *SINURL(NSString *url) {
NSArray *arr = [NSArray arrayWithObjects:@"http://",@"https://",@"www.",@".com",@".net",@".org",@".us",@".me",@".it",@".uk",@".de",nil];
for (NSString *k in arr) {
if ([url rangeOfString:k].location != NSNotFound) {
NSURL *r = [NSURL URLWithString:url];
if (![[r scheme] length]) r = [NSURL URLWithString:[@"http://" stringByAppendingString:url]];
return r;
}
}

return [NSURL URLWithString:[NSString stringWithFormat:@"http://web.stagram.com/search/%@", url]];
}
static NSURL *SCYURL(NSString *url) {
NSArray *arr = [NSArray arrayWithObjects:@"http://",@"https://",@"www.",@".com",@".net",@".org",@".us",@".me",@".it",@".uk",@".de",nil];
for (NSString *k in arr) {
if ([url rangeOfString:k].location != NSNotFound) {
NSURL *r = [NSURL URLWithString:url];
if (![[r scheme] length]) r = [NSURL URLWithString:[@"http://" stringByAppendingString:url]];
return r;
}
}

return [NSURL URLWithString:[NSString stringWithFormat:@"cydia://search/%@", url]];
}

static NSURL *SSMURL(NSString *url) {
NSArray *arr = [NSArray arrayWithObjects:@"http://",@"https://",@"www.",@".com",@".net",@".org",@".us",@".me",@".it",@".uk",@".de",nil];
for (NSString *k in arr) {
if ([url rangeOfString:k].location != NSNotFound) {
NSURL *r = [NSURL URLWithString:url];
if (![[r scheme] length]) r = [NSURL URLWithString:[@"http://" stringByAppendingString:url]];
return r;
}
}
return [NSURL URLWithString:[NSString stringWithFormat:@"sms:%@", url]];
}

static UIButton *google;
static UIButton *wiki;
static UIButton *facebook;
static UIButton *twitter;
static UIButton *youtube;
static UIButton *instagram;
static UIButton *cydia;
static UIButton *sms;


@interface iWebSearchProWeeAppBundle: NSObject <BBWeeAppController, UITextFieldDelegate, UIAlertViewDelegate> {
UIView *_view;
UIImageView *_backgroundView;
}
@property (nonatomic, retain) UIView *view;
@end

@implementation iWebSearchProWeeAppBundle
@synthesize view = _view;

+ (void)initialize {
_iWebSearchProWeeAppBundle = [[NSBundle bundleForClass:[self class]] retain];
}

- (id)init {
if((self = [super init]) != nil) {

} return self;
}

- (void)dealloc {
[_view release];
[_backgroundView release];
[super dealloc];
}

- (void)loadFullView {
// Add subviews to _backgroundView (or _view) here.
  
scrollView = [[UIScrollView alloc] init];
scrollView.frame = CGRectMake(0,0,_view.bounds.size.width,_view.bounds.size.height);
scrollView.contentSize = CGSizeMake(_view.bounds.size.width, _view.bounds.size.height);
scrollView.contentSize = CGSizeMake(scrollView.bounds.size.width*2, _view.bounds.size.height);

scrollView.pagingEnabled = YES;
scrollView.scrollsToTop = NO;
[scrollView setClipsToBounds:NO];
scrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
[_view addSubview:scrollView];

 google = [UIButton buttonWithType:UIButtonTypeCustom];

[google setBackgroundImage:[UIImage imageWithContentsOfFile:[_iWebSearchProWeeAppBundle pathForResource:@"google" ofType:@"png"]] forState:UIControlStateNormal];

google.frame = CGRectMake(70, 32,42,42);

[google addTarget:self action:@selector(button1Action) forControlEvents:UIControlEventTouchDown];

facebook = [UIButton buttonWithType:UIButtonTypeCustom];

[facebook setBackgroundImage:[UIImage imageWithContentsOfFile:[_iWebSearchProWeeAppBundle pathForResource:@"facebook" ofType:@"png"]] forState:UIControlStateNormal];

facebook.frame = CGRectMake(137, 32,42,42);

[facebook addTarget:self action:@selector(button2Action) forControlEvents:UIControlEventTouchDown];

twitter = [UIButton buttonWithType:UIButtonTypeCustom];

[twitter setBackgroundImage:[UIImage imageWithContentsOfFile:[_iWebSearchProWeeAppBundle pathForResource:@"twitter" ofType:@"png"]] forState:UIControlStateNormal];

twitter.frame = CGRectMake(204, 32,42,42);

[twitter addTarget:self action:@selector(button3Action) forControlEvents:UIControlEventTouchDown];

youtube = [UIButton buttonWithType:UIButtonTypeCustom];

[youtube setBackgroundImage:[UIImage imageWithContentsOfFile:[_iWebSearchProWeeAppBundle pathForResource:@"youtube" ofType:@"png"]] forState:UIControlStateNormal];

youtube.frame = CGRectMake(271, 32,42,42);

[youtube addTarget:self action:@selector(button4Action) forControlEvents:UIControlEventTouchDown];

wiki = [UIButton buttonWithType:UIButtonTypeCustom];

[wiki setBackgroundImage:[UIImage imageWithContentsOfFile:[_iWebSearchProWeeAppBundle pathForResource:@"wikipedia" ofType:@"png"]] forState:UIControlStateNormal];

wiki.frame = CGRectMake(3, 32,42,42);

[wiki addTarget:self action:@selector(button5Action) forControlEvents:UIControlEventTouchDown];

instagram = [UIButton buttonWithType:UIButtonTypeCustom];

[instagram setBackgroundImage:[UIImage imageWithContentsOfFile:[_iWebSearchProWeeAppBundle pathForResource:@"instagram" ofType:@"png"]] forState:UIControlStateNormal];

instagram.frame = CGRectMake(323, 32,42,42);

[instagram addTarget:self action:@selector(button6Action) forControlEvents:UIControlEventTouchDown];
    
cydia = [UIButton buttonWithType:UIButtonTypeCustom];

[cydia setBackgroundImage:[UIImage imageWithContentsOfFile:[_iWebSearchProWeeAppBundle pathForResource:@"cydia" ofType:@"png"]] forState:UIControlStateNormal];

cydia.frame = CGRectMake(390, 32,42,42);

[cydia addTarget:self action:@selector(button7Action) forControlEvents:UIControlEventTouchDown];

sms = [UIButton buttonWithType:UIButtonTypeCustom];

[sms setBackgroundImage:[UIImage imageWithContentsOfFile:[_iWebSearchProWeeAppBundle pathForResource:@"sms" ofType:@"png"]] forState:UIControlStateNormal];

sms.frame = CGRectMake(457, 32,42,42);

[sms addTarget:self action:@selector(button8Action) forControlEvents:UIControlEventTouchDown];


searchField = [[[UITextField alloc] initWithFrame:CGRectMake(105, 4, 125, 20)] autorelease];
searchField.placeholder = @"Search here!";
searchField.autocapitalizationType = UITextAutocapitalizationTypeNone;
searchField.textColor = [UIColor whiteColor];
searchField.textAlignment = UITextAlignmentCenter;
searchField.delegate = self;

[_view addSubview:searchField];
[_view addSubview:google];
[scrollView addSubview:google];
[_view addSubview:facebook];
[scrollView addSubview:facebook];
[_view addSubview:twitter];
[scrollView addSubview:twitter];
[_view addSubview:youtube];
[scrollView addSubview:youtube];
[_view addSubview:wiki];
[scrollView addSubview:wiki];
[_view addSubview:instagram];
[scrollView addSubview:instagram];
[_view addSubview:cydia];
[scrollView addSubview:cydia];
[_view addSubview:sms];
[scrollView addSubview:sms];

        NSMutableDictionary *plist = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.imokhles.iwebsearchpro.plist"];

        static BOOL Hide = NO;
        Hide = [[plist objectForKey:@"enable"]boolValue];


        if(Hide){

        google.enabled = NO;
        wiki.enabled = NO;
        facebook.enabled = NO;
        twitter.enabled = NO;
        instagram.enabled = NO;
        sms.enabled = NO;
        cydia.enabled = NO;
        youtube.enabled = NO;

   }
}

- (void)button1Action {
if(value) {
NSString *google = [searchField.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
[[UIApplication sharedApplication] applicationOpenURL:SGURL(google)];
} if ([searchField.text isEqualToString:nil]) {
        UIAlertView *noPhone = [[UIAlertView alloc] initWithTitle:@"Sorry" message:@"You have to write something inside search field" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [noPhone show];
        [noPhone release];
    }
}
- (void)button2Action {
if(value) {
 NSString *facebook = [searchField.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
[[UIApplication sharedApplication] applicationOpenURL:SFURL(facebook)];
 } if ([searchField.text isEqualToString:nil]) {
        UIAlertView *noPhone = [[UIAlertView alloc] initWithTitle:@"Sorry" message:@"You have to write something inside search field" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [noPhone setTag:1234];
    [noPhone performSelectorOnMainThread:@selector(show) withObject:nil waitUntilDone:YES];
    [noPhone release];
    }
}

- (void)button3Action {
if (value) {
NSString *twitter = [searchField.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
[[UIApplication sharedApplication] applicationOpenURL:STURL(twitter)];
} if ([searchField.text isEqualToString:nil]) {
        UIAlertView *noPhone = [[UIAlertView alloc] initWithTitle:@"Sorry" message:@"You have to write something inside search field" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [noPhone setTag:1234];
    [noPhone performSelectorOnMainThread:@selector(show) withObject:nil waitUntilDone:YES];
    [noPhone release];
    }
}

- (void)button4Action {
if(value) {
NSString *youtube = [searchField.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
[[UIApplication sharedApplication] applicationOpenURL:SYUURL(youtube)];
} if ([searchField.text isEqualToString:nil]) {
        UIAlertView *noPhone = [[UIAlertView alloc] initWithTitle:@"Sorry" message:@"You have to write something inside search field" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [noPhone setTag:1234];
    [noPhone performSelectorOnMainThread:@selector(show) withObject:nil waitUntilDone:YES];
    [noPhone release];
    }
}

- (void)button5Action {
if (value) {
NSString *wiki = [searchField.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
[[UIApplication sharedApplication] applicationOpenURL:SWIURL(wiki)];
} if ([searchField.text isEqualToString:nil]) {
        UIAlertView *noPhone = [[UIAlertView alloc] initWithTitle:@"Sorry" message:@"You have to write something inside search field" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [noPhone setTag:1234];
    [noPhone performSelectorOnMainThread:@selector(show) withObject:nil waitUntilDone:YES];
    [noPhone release];
    }
}

- (void)button6Action {
if(value) {
NSString *instagram = [searchField.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
[[UIApplication sharedApplication] applicationOpenURL:SINURL(instagram)];

} if ([searchField.text isEqualToString:nil]) {
        UIAlertView *noPhone = [[UIAlertView alloc] initWithTitle:@"Sorry" message:@"You have to write something inside search field" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [noPhone setTag:1234];
    [noPhone performSelectorOnMainThread:@selector(show) withObject:nil waitUntilDone:YES];
    [noPhone release];
    }
}
- (void)button7Action {
if(value) {
NSString *cydia = [searchField.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
[[UIApplication sharedApplication] applicationOpenURL:SCYURL(cydia)];
} if ([searchField.text isEqualToString:nil]) {
        UIAlertView *noPhone = [[UIAlertView alloc] initWithTitle:@"Sorry" message:@"You have to write something inside search field" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [noPhone setTag:1234];
    [noPhone performSelectorOnMainThread:@selector(show) withObject:nil waitUntilDone:YES];
    [noPhone release];
    }
}

- (void)button8Action {

if(value) {
NSString *sms = [searchField.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
[[UIApplication sharedApplication] applicationOpenURL:SSMURL(sms)];
} 

if ([searchField.text isEqualToString:nil]) {
        UIAlertView *noPhone = [[UIAlertView alloc] initWithTitle:@"Sorry" message:@"You have to write something inside search field" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [noPhone setTag:1234];
    [noPhone performSelectorOnMainThread:@selector(show) withObject:nil waitUntilDone:YES];
    [noPhone release];
    }
}

- (void)loadPlaceholderView {
// This should only be a placeholder - it should not connect to any servers or perform any intense
// data loading operations.
//
// All widgets are 316 points wide. Image size calculations match those of the Stocks widget.
_view = [[UIView alloc] initWithFrame:(CGRect){CGPointZero, {316.f, [self viewHeight]}}];
_view.autoresizingMask = UIViewAutoresizingFlexibleWidth;

UIImage *bgImg = [UIImage imageWithContentsOfFile:@"/System/Library/WeeAppPlugins/StocksWeeApp.bundle/WeeAppBackground.png"];
UIImage *stretchableBgImg = [bgImg stretchableImageWithLeftCapWidth:floorf(bgImg.size.width / 2.f) topCapHeight:floorf(bgImg.size.height / 2.f)];
_backgroundView = [[UIImageView alloc] initWithImage:stretchableBgImg];
_backgroundView.frame = CGRectInset(_view.bounds, 2.f, 0.f);
_backgroundView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
[_view addSubview:_backgroundView];
}

- (void)unloadView {
[_view release];
_view = nil;
[_backgroundView release];
_backgroundView = nil;
// Destroy any additional subviews you added here. Don't waste memory :(.
}

- (float)viewHeight {
return 84.f;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {

[searchField endEditing:YES];

}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
if ([alertView tag] == 1234) {
NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    if([title isEqualToString:@"Ok"])
    {
   system("killall -9 SpringBoard");
        }
    }
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    // "Length of existing text" - "Length of replaced text" + "Length of replacement text"

    NSString *value = searchField.text;
    NSInteger textLength = [searchField.text length] - range.length + [value length];

    if (textLength > 1) {
        google.enabled = YES;
        wiki.enabled = YES;
        facebook.enabled = YES;
        twitter.enabled = YES;
        instagram.enabled = YES;
        sms.enabled = YES;
        cydia.enabled = YES;
        youtube.enabled = YES;
    }
    else {
        google.enabled = NO;
        wiki.enabled = NO;
        facebook.enabled = NO;
        twitter.enabled = NO;
        instagram.enabled = NO;
        sms.enabled = NO;
        cydia.enabled = NO;
        youtube.enabled = NO;
    }
    return YES;
}

@end