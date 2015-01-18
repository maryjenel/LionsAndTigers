//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Mary Jenel Myers on 1/15/15.
//  Copyright (c) 2015 Mary Jenel Myers. All rights reserved.
//

#import "TopViewController.h"
#import "HUBViewController.h"
#import "RootViewController.h"
#import "CustomCollectionViewCell.h"

@interface TopViewController () < UICollectionViewDataSource, UICollectionViewDelegate>
@property NSMutableArray *lionsArray;
@property NSMutableArray *tigerArray;
@property NSMutableArray *currentImagesArray;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath]; //referencing the cell.
    cell.imageViewCell.image = [self.currentImagesArray objectAtIndex:indexPath.row]; //puts the array in each imagepath.row from 0-5 //changed it to current images array from moon images array
    return cell;

}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 3;

}

- (IBAction)onLeftBarButtonTapped:(UIBarButtonItem *)sender

{
    [self.topDelegate topRevealButtonTapped];

}

-(void)lionsImagesRevealed
{
    self.lionsArray = [[NSMutableArray alloc]initWithObjects:
                       [UIImage imageNamed:@"lion1"],
                       [UIImage imageNamed:@"lion2"],
                       [UIImage imageNamed:@"lion3"], nil];
    self.currentImagesArray = self.lionsArray;
    [self.collectionView reloadData];
    
}
-(void)tigersImagesRevealed
{
    self.tigerArray = [[NSMutableArray alloc]initWithObjects:
                       [UIImage imageNamed:@"tiger1"],
                       [UIImage imageNamed:@"tiger2"],
                       [UIImage imageNamed:@"tiger3"], nil];
    self.currentImagesArray = self.tigerArray;
    [self.collectionView reloadData];

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
