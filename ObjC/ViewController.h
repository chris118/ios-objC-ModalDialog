//
//  ViewController.h
//  ObjC
//
//  Created by wang xiaopeng on 8/13/15.
//  Copyright (c) 2015 Triton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController2.h"

@interface ViewController : UIViewController{
    ViewController2     * modalController;
}


- (IBAction)Clicked:(id)sender;
@end

