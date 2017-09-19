//
//  ViewController.m
//  Scroll View Image Gallery
//
//  Created by Paul on 2017-09-18.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollViewOutlet;
@property (nonatomic) UIImageView *firstPicture;
@property (nonatomic) UIImageView *secondPicture;
@property (nonatomic) UIImageView *thirdPicture;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
//
//-(void)createPictures{
//
//    //adding pictures to the scroll view.
//    self.firstPicture = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"toronto"]];
//    [self.scrollViewOutlet addSubview:self.firstPicture];
//    self.firstPicture.contentMode = UIViewContentModeScaleAspectFill;
//    self.firstPicture.clipsToBounds = YES;
//    
//    
//    self.secondPicture = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"chicago"]];
//    [self.scrollViewOutlet addSubview:self.secondPicture];
//    self.secondPicture.contentMode = UIViewContentModeScaleAspectFill;
//    self.secondPicture.clipsToBounds = YES;
//    
//    
//    self.thirdPicture = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"montreal"]];
//    [self.scrollViewOutlet addSubview:self.thirdPicture];
//    self.thirdPicture.contentMode = UIViewContentModeScaleAspectFill;
//    self.thirdPicture.clipsToBounds = YES;
//
//}
//
//-(void)setUpLayout{
//    self.firstPicture.translatesAutoresizingMaskIntoConstraints = NO;
//    self.secondPicture.translatesAutoresizingMaskIntoConstraints = NO;
//
//    //set top and bottom anchors
//    [self.firstPicture.topAnchor constraintEqualToAnchor:self.scrollViewOutlet.topAnchor].active = YES;
//    [self.firstPicture.bottomAnchor constraintEqualToAnchor:self.scrollViewOutlet.bottomAnchor].active = YES;
//    
//    
//    

//}

@end
