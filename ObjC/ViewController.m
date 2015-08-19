//
//  ViewController.m
//  ObjC
//
//  Created by wang xiaopeng on 8/13/15.
//  Copyright (c) 2015 Triton. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+ResizeFormSheet.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Clicked:(id)sender {
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"test"]) {
        UIViewController *vc = segue.destinationViewController;
        [vc Resize:CGSizeMake(200, 200)];
        
    }

}
@end
