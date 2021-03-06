#import "GithubTrendingAppDelegate.h"
#import "TrendingTableViewController.h"

SpecBegin(AppDelegate)

describe(@"AppDelegate", ^{

    __block GithubTrendingAppDelegate *appDelegate;

    beforeAll(^{
    });
    
    beforeEach(^{
        appDelegate = [[GithubTrendingAppDelegate alloc] init];

    });

    describe(@"application:didFinishLaunchingWithOptions:", ^{

        beforeEach(^{
            [appDelegate application:nil didFinishLaunchingWithOptions:nil];
        });

        it(@"should set the root view controller", ^{
            expect(appDelegate.window.rootViewController).to.beKindOf([UINavigationController class]);
        });
        
        it(@"should set the tableview controller as root controller in the navigation controller", ^{
            UINavigationController * navigationController = (UINavigationController *) appDelegate.window.rootViewController;
            NSArray *controllers = [navigationController viewControllers];
            expect([controllers firstObject]).to.beKindOf([TrendingTableViewController class]);
        });
        
    });
    

});

SpecEnd
