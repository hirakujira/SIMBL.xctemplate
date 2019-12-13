//
//  ___PACKAGENAME___.m
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

#import "___PACKAGENAME___.h"

@implementation ___PACKAGENAME___

+ (instancetype)sharedInstance
{
    static id plugin = nil;
    if (!plugin)
    {
        plugin = [[self alloc] init];
    }
    return plugin;
}

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

//=============================================================================

@implementation NSObject (___PACKAGENAME___)
- (BOOL)targetMethodHook {
    return YES;
}
@end
