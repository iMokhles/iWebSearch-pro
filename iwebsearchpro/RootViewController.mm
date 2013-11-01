#import "RootViewController.h"

@implementation RootViewController
- (void)loadView {
    self.view = [[[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]] autorelease];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];
    
    // User InterFace Items UIButton, etc.

    UINavigationBar *navigationBar1 = [[UINavigationBar alloc] init];
[navigationBar1 setBarStyle:UIBarStyleDefault];
[navigationBar1 setTranslucent:NO];
[navigationBar1 setTintColor:[UIColor colorWithRed:0.101961 green:0.211765 blue:0.478431 alpha:1.000000]];
UINavigationItem *navigationItem = [[UINavigationItem alloc] initWithTitle:@"iWebSearch Pro"];
[navigationBar1 setItems:[NSArray arrayWithObject:navigationItem]];
[navigationItem release];
[navigationBar1 setFrame:CGRectMake(0, 0, 320, 44)];
[self.view addSubview:navigationBar1];
[navigationBar1 release];
    
    textField1 = [[UITextField alloc] init];
[textField1 setFont:[UIFont fontWithName:@"Helvetica" size:20]];
[textField1 setText:@""];
[textField1 setTextColor:[UIColor blackColor]];
[textField1 setBackgroundColor:[UIColor whiteColor]];
[textField1 setTextAlignment:UITextAlignmentCenter];
[textField1 setPlaceholder:@"Search Here!"];
[textField1 setBorderStyle:UITextBorderStyleLine];
[textField1 resignFirstResponder];
textField1.delegate = self;
[textField1 setKeyboardType:UIKeyboardTypeDefault];
[textField1 setFrame:CGRectMake(0, 44, 320, 31)];
[self.view addSubview:textField1];
[textField1 release];

UIToolbar *toolbar1 = [[UIToolbar alloc] init];
        NSMutableArray *toolbarItems = [[NSMutableArray alloc] init];
        [toolbarItems addObject:[[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:refParentViewController action:@selector(toolbar1Action1)] autorelease]];
        [toolbar1 setItems:toolbarItems];
        [toolbarItems release];
        [toolbar1 setBarStyle:UIBarStyleDefault];
        [toolbar1 setTranslucent:NO];
        [toolbar1 setTintColor:[UIColor colorWithRed:0.101961 green:0.211765 blue:0.478431 alpha:1.000000]];
        [toolbar1 setFrame:CGRectMake(0, 416, 320, 44)];
        [self.view addSubview:toolbar1];
        [toolbar1 release];

UIButton *wiki = [UIButton buttonWithType:UIButtonTypeCustom];
[wiki setTitle:@"" forState:UIControlStateNormal];
[wiki setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[wiki.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[wiki setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[wiki setBackgroundImage:[UIImage imageNamed:@"wikipedia.png"] forState:UIControlStateNormal];
[wiki addTarget:refParentViewController action:@selector(wikiAction) forControlEvents:UIControlEventTouchUpInside];
[wiki setFrame:CGRectMake(3, 90, 44, 44)];
[self.view addSubview:wiki];

UIButton *google = [UIButton buttonWithType:UIButtonTypeCustom];
[google setTitle:@"" forState:UIControlStateNormal];
[google setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[google.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[google setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[google setBackgroundImage:[UIImage imageNamed:@"google.png"] forState:UIControlStateNormal];
[google addTarget:refParentViewController action:@selector(googleAction) forControlEvents:UIControlEventTouchUpInside];
[google setFrame:CGRectMake(70, 90, 44, 44)];
[self.view addSubview:google];

UIButton *facebook = [UIButton buttonWithType:UIButtonTypeCustom];
[facebook setTitle:@"" forState:UIControlStateNormal];
[facebook setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[facebook.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[facebook setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[facebook setBackgroundImage:[UIImage imageNamed:@"facebook.png"] forState:UIControlStateNormal];
[facebook addTarget:refParentViewController action:@selector(facebookAction) forControlEvents:UIControlEventTouchUpInside];
[facebook setFrame:CGRectMake(137, 90, 44, 44)];
[self.view addSubview:facebook];

UIButton *twitter = [UIButton buttonWithType:UIButtonTypeCustom];
[twitter setTitle:@"" forState:UIControlStateNormal];
[twitter setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[twitter.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[twitter setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[twitter setBackgroundImage:[UIImage imageNamed:@"twitter.png"] forState:UIControlStateNormal];
[twitter addTarget:refParentViewController action:@selector(twitterAction) forControlEvents:UIControlEventTouchUpInside];
[twitter setFrame:CGRectMake(204, 90, 44, 44)];
[self.view addSubview:twitter];

UIButton *youtube = [UIButton buttonWithType:UIButtonTypeCustom];
[youtube setTitle:@"" forState:UIControlStateNormal];
[youtube setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[youtube.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[youtube setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[youtube setBackgroundImage:[UIImage imageNamed:@"youtube.png"] forState:UIControlStateNormal];
[youtube addTarget:refParentViewController action:@selector(youtubeAction) forControlEvents:UIControlEventTouchUpInside];
[youtube setFrame:CGRectMake(271, 194, 44, 44)];
[self.view addSubview:youtube];

UIButton *instagram = [UIButton buttonWithType:UIButtonTypeCustom];
[instagram setTitle:@"" forState:UIControlStateNormal];
[instagram setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[instagram.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[instagram setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[instagram setBackgroundImage:[UIImage imageNamed:@"instagram.png"] forState:UIControlStateNormal];
[instagram addTarget:refParentViewController action:@selector(instagramAction) forControlEvents:UIControlEventTouchUpInside];
[instagram setFrame:CGRectMake(3, 142, 44, 44)];
[self.view addSubview:instagram];

UIButton *cydia = [UIButton buttonWithType:UIButtonTypeCustom];
[cydia setTitle:@"" forState:UIControlStateNormal];
[cydia setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[cydia.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[cydia setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[cydia setBackgroundImage:[UIImage imageNamed:@"cydia.png"] forState:UIControlStateNormal];
[cydia addTarget:refParentViewController action:@selector(cydiaAction) forControlEvents:UIControlEventTouchUpInside];
[cydia setFrame:CGRectMake(70, 142, 44, 44)];
[self.view addSubview:cydia];

UIButton *ibook = [UIButton buttonWithType:UIButtonTypeCustom];
[ibook setTitle:@"" forState:UIControlStateNormal];
[ibook setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[ibook.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[ibook setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[ibook setBackgroundImage:[UIImage imageNamed:@"ibooks.png"] forState:UIControlStateNormal];
[ibook addTarget:refParentViewController action:@selector(ibookAction) forControlEvents:UIControlEventTouchUpInside];
[ibook setFrame:CGRectMake(271, 142, 44, 44)];
[self.view addSubview:ibook];

UIButton *itunes = [UIButton buttonWithType:UIButtonTypeCustom];
[itunes setTitle:@"" forState:UIControlStateNormal];
[itunes setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[itunes.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[itunes setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[itunes setBackgroundImage:[UIImage imageNamed:@"itunes.png"] forState:UIControlStateNormal];
[itunes addTarget:refParentViewController action:@selector(itunesAction) forControlEvents:UIControlEventTouchUpInside];
[itunes setFrame:CGRectMake(204, 142, 44, 44)];
[self.view addSubview:itunes];

UIButton *gplus = [UIButton buttonWithType:UIButtonTypeCustom];
[gplus setTitle:@"" forState:UIControlStateNormal];
[gplus setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[gplus.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[gplus setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[gplus setBackgroundImage:[UIImage imageNamed:@"gplus.png"] forState:UIControlStateNormal];
[gplus addTarget:refParentViewController action:@selector(gplusAction) forControlEvents:UIControlEventTouchUpInside];
[gplus setFrame:CGRectMake(3, 194, 44, 44)];
[self.view addSubview:gplus];

UIButton *ebay = [UIButton buttonWithType:UIButtonTypeCustom];
[ebay setTitle:@"" forState:UIControlStateNormal];
[ebay setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[ebay.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[ebay setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[ebay setBackgroundImage:[UIImage imageNamed:@"ebay.png"] forState:UIControlStateNormal];
[ebay addTarget:refParentViewController action:@selector(ebayAction) forControlEvents:UIControlEventTouchUpInside];
[ebay setFrame:CGRectMake(70, 194, 44, 44)];
[self.view addSubview:ebay];

UIButton *appstore = [UIButton buttonWithType:UIButtonTypeCustom];
[appstore setTitle:@"" forState:UIControlStateNormal];
[appstore setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[appstore.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[appstore setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[appstore setBackgroundImage:[UIImage imageNamed:@"appstore.png"] forState:UIControlStateNormal];
[appstore addTarget:refParentViewController action:@selector(appstoreAction) forControlEvents:UIControlEventTouchUpInside];
[appstore setFrame:CGRectMake(137, 142, 44, 44)];
[self.view addSubview:appstore];

UIButton *boncoin = [UIButton buttonWithType:UIButtonTypeCustom];
[boncoin setTitle:@"" forState:UIControlStateNormal];
[boncoin setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[boncoin.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[boncoin setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[boncoin setBackgroundImage:[UIImage imageNamed:@"boncoin.png"] forState:UIControlStateNormal];
[boncoin addTarget:refParentViewController action:@selector(boncoinAction) forControlEvents:UIControlEventTouchUpInside];
[boncoin setFrame:CGRectMake(204, 194, 44, 44)];
[self.view addSubview:boncoin];

UIButton *amazon = [UIButton buttonWithType:UIButtonTypeCustom];
[amazon setTitle:@"" forState:UIControlStateNormal];
[amazon setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[amazon.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[amazon setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[amazon setBackgroundImage:[UIImage imageNamed:@"amazon.png"] forState:UIControlStateNormal];
[amazon addTarget:refParentViewController action:@selector(amazonAction) forControlEvents:UIControlEventTouchUpInside];
[amazon setFrame:CGRectMake(137, 194, 44, 44)];
[self.view addSubview:amazon];

UIButton *quran = [UIButton buttonWithType:UIButtonTypeCustom];
[quran setTitle:@"" forState:UIControlStateNormal];
[quran setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[quran.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[quran setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[quran setBackgroundImage:[UIImage imageNamed:@"quran.png"] forState:UIControlStateNormal];
[quran addTarget:refParentViewController action:@selector(quranAction) forControlEvents:UIControlEventTouchUpInside];
[quran setFrame:CGRectMake(271, 90, 44, 44)];
[self.view addSubview:quran];
    
}

- (void)quranAction {
        [textField1 endEditing:YES];

NSString *quranAction = [textField1.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];

        UIWebView *webView1 = [[UIWebView alloc] init];
        NSURL *webURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://www.al-islam.com/portal.aspx?pageid=1238&Words=%@", quranAction]];
        NSURLRequest *webURLRequest = [NSURLRequest requestWithURL:webURL];
        [webView1 loadRequest:webURLRequest];
        [webView1 setScalesPageToFit:NO];
        [webView1 setFrame:CGRectMake(0, 75, 320, 341.5)];
 
        [self.view addSubview:webView1];
        [webView1 release];
}

- (void)amazonAction {
      [textField1 endEditing:YES];

NSString *amazonAction = [textField1.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];

        UIWebView *webView1 = [[UIWebView alloc] init];
        NSURL *webURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://www.amazon.com/gp/aw/s/ref=is_box_?k=%@", amazonAction]];
        NSURLRequest *webURLRequest = [NSURLRequest requestWithURL:webURL];
        [webView1 loadRequest:webURLRequest];
        [webView1 setScalesPageToFit:NO];
        [webView1 setFrame:CGRectMake(0, 75, 320, 341.5)];
 
        [self.view addSubview:webView1];
        [webView1 release];
}

- (void)boncoinAction {
      [textField1 endEditing:YES];

NSString *boncoinAction = [textField1.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];

        UIWebView *webView1 = [[UIWebView alloc] init];
        NSURL *webURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://www.leboncoin.fr/annonces/offres/ile_de_france/?f=a&th=1&q=%@", boncoinAction]];
        NSURLRequest *webURLRequest = [NSURLRequest requestWithURL:webURL];
        [webView1 loadRequest:webURLRequest];
        [webView1 setScalesPageToFit:NO];
        [webView1 setFrame:CGRectMake(0, 75, 320, 341.5)];
 
        [self.view addSubview:webView1];
        [webView1 release];
}

- (void)appstoreAction {
       [textField1 endEditing:YES];

NSString *appstoreAction = [textField1.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];

        UIWebView *webView1 = [[UIWebView alloc] init];
        NSURL *webURL = [NSURL URLWithString:[NSString stringWithFormat:@"itms-apps://ax.search.itunes.apple.com/WebObjects/MZSearch.woa/wa/search?media=software&term=%@", appstoreAction]];
        NSURLRequest *webURLRequest = [NSURLRequest requestWithURL:webURL];
        [webView1 loadRequest:webURLRequest];
        [webView1 setScalesPageToFit:NO];
        [webView1 setFrame:CGRectMake(0, 75, 320, 341.5)];
 
        [self.view addSubview:webView1];
        [webView1 release];
}

- (void)ebayAction {
       [textField1 endEditing:YES];

NSString *ebayAction = [textField1.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];

        UIWebView *webView1 = [[UIWebView alloc] init];
        NSURL *webURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://shop.mobileweb.ebay.com/searchresults;PdsSession=03fb854c13b0a5abe586b7f6fffe969e?kw=%@", ebayAction]];
        NSURLRequest *webURLRequest = [NSURLRequest requestWithURL:webURL];
        [webView1 loadRequest:webURLRequest];
        [webView1 setScalesPageToFit:NO];
        [webView1 setFrame:CGRectMake(0, 75, 320, 341.5)];
 
        [self.view addSubview:webView1];
        [webView1 release];
}

- (void)gplusAction {
                [textField1 endEditing:YES];

NSString *gplus = [textField1.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];

        UIWebView *webView1 = [[UIWebView alloc] init];
        NSURL *webURL = [NSURL URLWithString:[NSString stringWithFormat:@"https://plus.google.com/app/basic/s?sc=po&spath=/app/basic/?SearchEngineLand&sq=%@", gplus]];
        NSURLRequest *webURLRequest = [NSURLRequest requestWithURL:webURL];
        [webView1 loadRequest:webURLRequest];
        [webView1 setScalesPageToFit:NO];
        [webView1 setFrame:CGRectMake(0, 75, 320, 341.5)];
 
        [self.view addSubview:webView1];
        [webView1 release];
}

- (void)itunesAction {
                [textField1 endEditing:YES];

NSString *itunes = [textField1.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];

        UIWebView *webView1 = [[UIWebView alloc] init];
        NSURL *webURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://phobos.apple.com/WebObjects/MZSearch.woa/wa/search?WOURLEncoding=ISO8859_1&lang=1&output=lm&country=US&term=%@", itunes]];
        NSURLRequest *webURLRequest = [NSURLRequest requestWithURL:webURL];
        [webView1 loadRequest:webURLRequest];
        [webView1 setScalesPageToFit:NO];
        [webView1 setFrame:CGRectMake(0, 75, 320, 341.5)];
 
        [self.view addSubview:webView1];
        [webView1 release];
}

- (void)ibookAction {
                [textField1 endEditing:YES];

NSString *ibooks = [textField1.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];

        UIWebView *webView1 = [[UIWebView alloc] init];
        NSURL *webURL = [NSURL URLWithString:[NSString stringWithFormat:@"itms-bookss://ax.search.itunes.apple.com/WebObjects/MZSearch.woa/wa/search?media=software&term=%@", ibooks]];
        NSURLRequest *webURLRequest = [NSURLRequest requestWithURL:webURL];
        [webView1 loadRequest:webURLRequest];
        [webView1 setScalesPageToFit:NO];
        [webView1 setFrame:CGRectMake(0, 75, 320, 341.5)];
 
        [self.view addSubview:webView1];
        [webView1 release];
}

- (void)cydiaAction {
        [textField1 endEditing:YES];

NSString *cydia = [textField1.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];

        UIWebView *webView1 = [[UIWebView alloc] init];
        NSURL *webURL = [NSURL URLWithString:[NSString stringWithFormat:@"cydia://search/%@", cydia]];
        NSURLRequest *webURLRequest = [NSURLRequest requestWithURL:webURL];
        [webView1 loadRequest:webURLRequest];
        [webView1 setScalesPageToFit:NO];
        [webView1 setFrame:CGRectMake(0, 75, 320, 341.5)];
 
        [self.view addSubview:webView1];
        [webView1 release];
}

- (void)instagramAction {
        NSString *insta = [textField1.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];

        UIWebView *webView1 = [[UIWebView alloc] init];
        NSURL *webURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://web.stagram.com/search/%@/", insta]];
        NSURLRequest *webURLRequest = [NSURLRequest requestWithURL:webURL];
        [webView1 loadRequest:webURLRequest];
        [webView1 setScalesPageToFit:NO];
        [webView1 setFrame:CGRectMake(0, 75, 320, 341.5)];

        [self.view addSubview:webView1];
        [webView1 release];

}

- (void)youtubeAction {
        NSString *youtube = [textField1.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];

        UIWebView *webView1 = [[UIWebView alloc] init];
        NSURL *webURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://m.youtube.com/results?q=%@", youtube]];
        NSURLRequest *webURLRequest = [NSURLRequest requestWithURL:webURL];
        [webView1 loadRequest:webURLRequest];
        [webView1 setScalesPageToFit:NO];
        [webView1 setFrame:CGRectMake(0, 75, 320, 341.5)];

        [self.view addSubview:webView1];
        [webView1 release];
}

- (void)twitterAction {
        NSString *twitter = [textField1.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];

        UIWebView *webView1 = [[UIWebView alloc] init];
        NSURL *webURL = [NSURL URLWithString:[NSString stringWithFormat:@"https://mobile.twitter.com/search?q=%@", twitter]];
        NSURLRequest *webURLRequest = [NSURLRequest requestWithURL:webURL];
        [webView1 loadRequest:webURLRequest];
        [webView1 setScalesPageToFit:NO];
        [webView1 setFrame:CGRectMake(0, 75, 320, 341.5)];

        [self.view addSubview:webView1];
        [webView1 release];
}

- (void)facebookAction {
        [textField1 endEditing:YES];

        NSString *facebook = [textField1.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];

        UIWebView *webView1 = [[UIWebView alloc] init];
        NSURL *webURL = [NSURL URLWithString:[NSString stringWithFormat:@"https://m.facebook.com/?refsrc=http://www.facebook.com/&_rdr#!/search/?query=%@", facebook]];
        NSURLRequest *webURLRequest = [NSURLRequest requestWithURL:webURL];
        [webView1 loadRequest:webURLRequest];
        [webView1 setScalesPageToFit:NO];
        [webView1 setFrame:CGRectMake(0, 75, 320, 341.5)];

        [self.view addSubview:webView1];
        [webView1 release];
}

- (void)googleAction {

[textField1 endEditing:YES];

        NSString *google = [textField1.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];

        UIWebView *webView1 = [[UIWebView alloc] init];
        NSURL *webURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://www.google.com/search?q=%@&ie=utf-8&oe=utf-8", google]];
        NSURLRequest *webURLRequest = [NSURLRequest requestWithURL:webURL];
        [webView1 loadRequest:webURLRequest];
        [webView1 setScalesPageToFit:NO];
        [webView1 setFrame:CGRectMake(0, 75, 320, 341.5)];

        [self.view addSubview:webView1];
        [webView1 release];
}

- (void)wikiAction {

[textField1 endEditing:YES];

NSString *wiki = [textField1.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];

        UIWebView *webView1 = [[UIWebView alloc] init];
        NSURL *webURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://en.m.wikipedia.org/wiki/%@", wiki]];
        NSURLRequest *webURLRequest = [NSURLRequest requestWithURL:webURL];
        [webView1 loadRequest:webURLRequest];
        [webView1 setScalesPageToFit:NO];
        [webView1 setFrame:CGRectMake(0, 75, 320, 341.5)];
 
        [self.view addSubview:webView1];
        [webView1 release];
}

- (void)toolbar1Action1 {

UIButton *wiki = [UIButton buttonWithType:UIButtonTypeCustom];
[wiki setTitle:@"" forState:UIControlStateNormal];
[wiki setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[wiki.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[wiki setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[wiki setBackgroundImage:[UIImage imageNamed:@"wikipedia.png"] forState:UIControlStateNormal];
[wiki addTarget:refParentViewController action:@selector(wikiAction) forControlEvents:UIControlEventTouchUpInside];
[wiki setFrame:CGRectMake(3, 90, 44, 44)];
[self.view addSubview:wiki];

UIButton *google = [UIButton buttonWithType:UIButtonTypeCustom];
[google setTitle:@"" forState:UIControlStateNormal];
[google setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[google.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[google setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[google setBackgroundImage:[UIImage imageNamed:@"google.png"] forState:UIControlStateNormal];
[google addTarget:refParentViewController action:@selector(googleAction) forControlEvents:UIControlEventTouchUpInside];
[google setFrame:CGRectMake(70, 90, 44, 44)];
[self.view addSubview:google];

UIButton *facebook = [UIButton buttonWithType:UIButtonTypeCustom];
[facebook setTitle:@"" forState:UIControlStateNormal];
[facebook setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[facebook.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[facebook setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[facebook setBackgroundImage:[UIImage imageNamed:@"facebook.png"] forState:UIControlStateNormal];
[facebook addTarget:refParentViewController action:@selector(facebookAction) forControlEvents:UIControlEventTouchUpInside];
[facebook setFrame:CGRectMake(137, 90, 44, 44)];
[self.view addSubview:facebook];

UIButton *twitter = [UIButton buttonWithType:UIButtonTypeCustom];
[twitter setTitle:@"" forState:UIControlStateNormal];
[twitter setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[twitter.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[twitter setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[twitter setBackgroundImage:[UIImage imageNamed:@"twitter.png"] forState:UIControlStateNormal];
[twitter addTarget:refParentViewController action:@selector(twitterAction) forControlEvents:UIControlEventTouchUpInside];
[twitter setFrame:CGRectMake(204, 90, 44, 44)];
[self.view addSubview:twitter];

UIButton *youtube = [UIButton buttonWithType:UIButtonTypeCustom];
[youtube setTitle:@"" forState:UIControlStateNormal];
[youtube setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[youtube.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[youtube setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[youtube setBackgroundImage:[UIImage imageNamed:@"youtube.png"] forState:UIControlStateNormal];
[youtube addTarget:refParentViewController action:@selector(youtubeAction) forControlEvents:UIControlEventTouchUpInside];
[youtube setFrame:CGRectMake(271, 194, 44, 44)];
[self.view addSubview:youtube];

UIButton *instagram = [UIButton buttonWithType:UIButtonTypeCustom];
[instagram setTitle:@"" forState:UIControlStateNormal];
[instagram setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[instagram.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[instagram setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[instagram setBackgroundImage:[UIImage imageNamed:@"instagram.png"] forState:UIControlStateNormal];
[instagram addTarget:refParentViewController action:@selector(instagramAction) forControlEvents:UIControlEventTouchUpInside];
[instagram setFrame:CGRectMake(3, 142, 44, 44)];
[self.view addSubview:instagram];

UIButton *cydia = [UIButton buttonWithType:UIButtonTypeCustom];
[cydia setTitle:@"" forState:UIControlStateNormal];
[cydia setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[cydia.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[cydia setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[cydia setBackgroundImage:[UIImage imageNamed:@"cydia.png"] forState:UIControlStateNormal];
[cydia addTarget:refParentViewController action:@selector(cydiaAction) forControlEvents:UIControlEventTouchUpInside];
[cydia setFrame:CGRectMake(70, 142, 44, 44)];
[self.view addSubview:cydia];

UIButton *ibook = [UIButton buttonWithType:UIButtonTypeCustom];
[ibook setTitle:@"" forState:UIControlStateNormal];
[ibook setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[ibook.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[ibook setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[ibook setBackgroundImage:[UIImage imageNamed:@"ibooks.png"] forState:UIControlStateNormal];
[ibook addTarget:refParentViewController action:@selector(ibookAction) forControlEvents:UIControlEventTouchUpInside];
[ibook setFrame:CGRectMake(271, 142, 44, 44)];
[self.view addSubview:ibook];

UIButton *itunes = [UIButton buttonWithType:UIButtonTypeCustom];
[itunes setTitle:@"" forState:UIControlStateNormal];
[itunes setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[itunes.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[itunes setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[itunes setBackgroundImage:[UIImage imageNamed:@"itunes.png"] forState:UIControlStateNormal];
[itunes addTarget:refParentViewController action:@selector(itunesAction) forControlEvents:UIControlEventTouchUpInside];
[itunes setFrame:CGRectMake(204, 142, 44, 44)];
[self.view addSubview:itunes];

UIButton *gplus = [UIButton buttonWithType:UIButtonTypeCustom];
[gplus setTitle:@"" forState:UIControlStateNormal];
[gplus setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[gplus.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[gplus setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[gplus setBackgroundImage:[UIImage imageNamed:@"gplus.png"] forState:UIControlStateNormal];
[gplus addTarget:refParentViewController action:@selector(gplusAction) forControlEvents:UIControlEventTouchUpInside];
[gplus setFrame:CGRectMake(3, 194, 44, 44)];
[self.view addSubview:gplus];

UIButton *ebay = [UIButton buttonWithType:UIButtonTypeCustom];
[ebay setTitle:@"" forState:UIControlStateNormal];
[ebay setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[ebay.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[ebay setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[ebay setBackgroundImage:[UIImage imageNamed:@"ebay.png"] forState:UIControlStateNormal];
[ebay addTarget:refParentViewController action:@selector(ebayAction) forControlEvents:UIControlEventTouchUpInside];
[ebay setFrame:CGRectMake(70, 194, 44, 44)];
[self.view addSubview:ebay];

UIButton *appstore = [UIButton buttonWithType:UIButtonTypeCustom];
[appstore setTitle:@"" forState:UIControlStateNormal];
[appstore setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[appstore.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[appstore setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[appstore setBackgroundImage:[UIImage imageNamed:@"appstore.png"] forState:UIControlStateNormal];
[appstore addTarget:refParentViewController action:@selector(appstoreAction) forControlEvents:UIControlEventTouchUpInside];
[appstore setFrame:CGRectMake(137, 142, 44, 44)];
[self.view addSubview:appstore];

UIButton *boncoin = [UIButton buttonWithType:UIButtonTypeCustom];
[boncoin setTitle:@"" forState:UIControlStateNormal];
[boncoin setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[boncoin.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[boncoin setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[boncoin setBackgroundImage:[UIImage imageNamed:@"boncoin.png"] forState:UIControlStateNormal];
[boncoin addTarget:refParentViewController action:@selector(boncoinAction) forControlEvents:UIControlEventTouchUpInside];
[boncoin setFrame:CGRectMake(204, 194, 44, 44)];
[self.view addSubview:boncoin];

UIButton *amazon = [UIButton buttonWithType:UIButtonTypeCustom];
[amazon setTitle:@"" forState:UIControlStateNormal];
[amazon setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[amazon.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[amazon setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[amazon setBackgroundImage:[UIImage imageNamed:@"amazon.png"] forState:UIControlStateNormal];
[amazon addTarget:refParentViewController action:@selector(amazonAction) forControlEvents:UIControlEventTouchUpInside];
[amazon setFrame:CGRectMake(137, 194, 44, 44)];
[self.view addSubview:amazon];

UIButton *quran = [UIButton buttonWithType:UIButtonTypeCustom];
[quran setTitle:@"" forState:UIControlStateNormal];
[quran setTitleColor:[UIColor colorWithRed:0.196078 green:0.309804 blue:0.521569 alpha:1.000000] forState:UIControlStateNormal];
[quran.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:15]];
[quran setBackgroundColor:[UIColor clearColor]];
// Please ensure this image is added to the project, a random name has been used to prevent conflicts
[quran setBackgroundImage:[UIImage imageNamed:@"quran.png"] forState:UIControlStateNormal];
[quran addTarget:refParentViewController action:@selector(quranAction) forControlEvents:UIControlEventTouchUpInside];
[quran setFrame:CGRectMake(271, 90, 44, 44)];
[self.view addSubview:quran];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {

[textField1 endEditing:YES];

}

@end
