//
//  ___PACKAGENAME___.m
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

#import "___PACKAGENAME___.h"

@interface ___PACKAGENAME___()

@end


@implementation ___PACKAGENAME___

/**
 * @return the single static instance of the plugin object
 */
+ (instancetype)sharedInstance
{
    static id plugin = nil;
    if (!plugin)
    {
        plugin = [[self alloc] init];
    }
    return plugin;
}


/**
 * A special method called by SIMBL once the application has started and all classes are initialized.
 */
+ (void)load
{
    NSLog(@"___PACKAGENAME___ loaded");
    id plugin = [self sharedInstance];
    if (plugin)
    {
        NSLog(@"___PACKAGENAME___ plugin loaded");
        SIMBLHookMessage(NSClassFromString(@"TargetClass"), @"targetMethod", @"targetMethodHook");
    }
}
@end

@implementation NSObject (___PACKAGENAME___)
- (BOOL)targetMethodHook {
    return YES;
}
@end
