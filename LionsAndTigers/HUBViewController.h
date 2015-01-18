//
//  HUBViewController.h
//  LionsAndTigers
//
//  Created by Mary Jenel Myers on 1/15/15.
//  Copyright (c) 2015 Mary Jenel Myers. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HUBDelegate <NSObject>

-(void)lionsImagesRevealed;
-(void)tigersImagesRevealed;

@end

@interface HUBViewController : UIViewController
@property (weak, nonatomic) id <HUBDelegate> hubDelegate;


@end
