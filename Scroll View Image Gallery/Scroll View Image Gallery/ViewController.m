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
    [self createPictures];
    [self setUpLayout];
    
    
}

-(void)createPictures{

    //adding pictures to the scroll view.
    self.firstPicture = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"toronto"]];
    [self.scrollViewOutlet addSubview:self.firstPicture];
    self.firstPicture.contentMode = UIViewContentModeScaleAspectFill;
    self.firstPicture.clipsToBounds = YES;
    
    
    self.secondPicture = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"chicago"]];
    [self.scrollViewOutlet addSubview:self.secondPicture];
    self.secondPicture.contentMode = UIViewContentModeScaleAspectFill;
    self.secondPicture.clipsToBounds = YES;
    
    
    self.thirdPicture = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"montreal"]];
    [self.scrollViewOutlet addSubview:self.thirdPicture];
    self.thirdPicture.contentMode = UIViewContentModeScaleAspectFill;
    self.thirdPicture.clipsToBounds = YES;

}

-(void)setUpLayout{
    self.firstPicture.translatesAutoresizingMaskIntoConstraints = NO;
    

}


/*
 - (void)setupLayout {
 self.imageView1.translatesAutoresizingMaskIntoConstraints = NO;
 self.imageView2.translatesAutoresizingMaskIntoConstraints = NO;
 
 //set top and bottom anchors
 [self.imageView1.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
 [self.imageView1.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;
 
 */


/*
 In your view controller's -viewDidLoad method, create three UIImageView and place them inside the UIScrollView next to each other. Now would be a good time to consider your layout strategy: are you going to use explicit constraints, or set the frame and rely on translatesAutoresizingMaskIntoConstraints?
 
 */

@end
