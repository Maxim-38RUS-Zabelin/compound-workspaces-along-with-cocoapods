//
//  main.m
//  demo
//

#import <pad/pad-Swift.h>
#import <phone/phone-Swift.h>

#import <UIKit/UIKit.h>

int main(int argc, char * argv[])
{
    @autoreleasepool {
        NSString *const delegateClassName =
            ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPhone) ?
        NSStringFromClass([AppDelegate_phone class]) :
        NSStringFromClass([AppDelegate_pad class]);

        return UIApplicationMain(argc, argv, nil, delegateClassName);
    }
}

