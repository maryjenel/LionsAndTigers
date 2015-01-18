//
//  TopViewController.h
//  LionsAndTigers
//
//  Created by Mary Jenel Myers on 1/15/15.
//  Copyright (c) 2015 Mary Jenel Myers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HUBViewController.h"


@protocol TopDelegate <NSObject> //protocol goes in the class that is telling the other class what to do.

-(void)topRevealButtonTapped;


@end

@interface TopViewController : UIViewController<HUBDelegate>
@property (weak, nonatomic) id <TopDelegate> topDelegate;
@end
