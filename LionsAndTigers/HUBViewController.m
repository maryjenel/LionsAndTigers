//
//  HUBViewController.m
//  LionsAndTigers
//
//  Created by Mary Jenel Myers on 1/15/15.
//  Copyright (c) 2015 Mary Jenel Myers. All rights reserved.
//

#import "HUBViewController.h"

@interface HUBViewController ()


@end

@implementation HUBViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)lionsButtonTapped:(UIButton *)sender
{
   
    [self.hubDelegate lionsImagesRevealed]; 

}

- (IBAction)tigersButtonTapped:(UIButton *)sender
{
    [self.hubDelegate tigersImagesRevealed];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
