//
//  UIViewController+ResizeFormSheet.m
//  ObjC
//
//  Created by wang xiaopeng on 8/13/15.
//  Copyright (c) 2015 Triton. All rights reserved.
//

#import "UIViewController+ResizeFormSheet.h"
#import <objc/runtime.h>

@implementation UIViewController (ResizeFormSheet)

-(void)Resize:(CGSize)size{

    //Resize
    //CGSize size = CGSizeMake([[UIScreen mainScreen] bounds].size.width*0.3f, [[UIScreen mainScreen] bounds].size.height*0.3f);
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;
    if ([[[UIDevice currentDevice]systemVersion] floatValue] >= 8.0 )
    {
        // Resizing for iOS 8
        self.preferredContentSize = CGSizeMake(size.width, size.height);
    }
    else
    {
        // Resizing for <= iOS 7
        self.view.superview.frame = CGRectMake((screenWidth - size.width)/2, (screenHeight - size.height)/2, size.width, size.height);
    }
}

//+(void)load{
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        Class class = [self class];
//        // When swizzling a class method, use the following:
//        // Class class = object_getClass((id)self);
//        
//        SEL originalSelector = @selector(viewWillAppear:);
//        SEL swizzledSelector = @selector(xxx_viewWillAppear:);
//        
//        Method originalMethod = class_getInstanceMethod(class, originalSelector);
//        Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
//        
//        BOOL didAddMethod =
//        class_addMethod(class,
//                        originalSelector,
//                        method_getImplementation(swizzledMethod),
//                        method_getTypeEncoding(swizzledMethod));
//        
//        if (didAddMethod) {
//            class_replaceMethod(class,
//                                swizzledSelector,
//                                method_getImplementation(originalMethod),
//                                method_getTypeEncoding(originalMethod));
//        } else {
//            method_exchangeImplementations(originalMethod, swizzledMethod);
//        }
//    });
//}
//
//#pragma mark - Method Swizzling
//
//- (void)xxx_viewWillAppear:(BOOL)animated {
//    [self xxx_viewWillAppear:animated];
//    NSLog(@"viewWillAppear: %@", self);
//}

@end
