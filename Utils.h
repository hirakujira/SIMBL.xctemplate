//
//  Utils.h
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

#import <objc/runtime.h>

void SIMBLHookMessage(Class hookClass, NSString* origMethodName, NSString* newMethodName) {
    Method origMethod = class_getInstanceMethod(hookClass, NSSelectorFromString(origMethodName));
    Method newMethod = class_getInstanceMethod(hookClass, NSSelectorFromString(newMethodName));
    method_exchangeImplementations(origMethod, newMethod);
}