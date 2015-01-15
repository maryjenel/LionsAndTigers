//
//  ViewController.m
//  LionsAndTigers
//
//  Created by Mary Jenel Myers on 1/15/15.
//  Copyright (c) 2015 Mary Jenel Myers. All rights reserved.
//

#import "RootViewController.h"
#import "TopViewController.h"

@interface RootViewController ()<TopDelegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftTopViewConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rightTopViewConstraint;
@property (strong, nonatomic) UIPushBehavior *pushBehavior;


@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}



-(void)topRevealButtonTapped
{
    self.pushBehavior = [[UIPushBehavior alloc]initWithItems:<#(NSArray *)#> mode:<#(UIPushBehaviorMode)#>]
}


@end
