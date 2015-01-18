//
//  ViewController.m
//  LionsAndTigers
//
//  Created by Mary Jenel Myers on 1/15/15.
//  Copyright (c) 2015 Mary Jenel Myers. All rights reserved.
//

#import "RootViewController.h"
#import "TopViewController.h"
#import "HUBViewController.h"

@interface RootViewController ()<TopDelegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftTopViewConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rightTopViewConstraint;

@property TopViewController *tvc;
@property HUBViewController *hvc;
@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.hvc.hubDelegate = self.tvc;


}


//-(void)topRevealButtonTapped
//{
//if (self.leftTopViewConstraint.constant == 65)
//    {
//
//   self.leftTopViewConstraint.constant = -16;
//    self.rightTopViewConstraint.constant = -16;
//        
//    }
//else
//    {
//    self.rightTopViewConstraint.constant = -40;
//        self.leftTopViewConstraint.constant = 65;
//
//   }
//}

-(void)topRevealButtonTapped
{
    [UIView animateWithDuration:0.5
//                          delay:0.0
//                        options: 0
                     animations:^{
                         if ([self.leftTopViewConstraint constant] == -16.0)
                         {
                             [self.leftTopViewConstraint setConstant:100.0];
                             [self.rightTopViewConstraint setConstant:-116.0];
                         }
                         else
                         {
                             [self.leftTopViewConstraint setConstant:-16.0];
                             [self.rightTopViewConstraint setConstant:-16.0];
                         }
                         [self.view layoutIfNeeded];
                     }
//                     completion:^(BOOL finished)

                     ];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"navSegue"])
    {
        UINavigationController *nc = segue.destinationViewController;
        self.tvc = [nc.viewControllers objectAtIndex:0]; //viewcontrollers is an array. 0 is the top view controller.. linked to it first
        self.tvc.topDelegate = self;
    }
    else
    {
        self.hvc = segue.destinationViewController;
    }
}


@end
