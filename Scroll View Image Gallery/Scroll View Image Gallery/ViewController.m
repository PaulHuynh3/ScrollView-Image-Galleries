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
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createPageControl];
    self.scrollViewOutlet.pagingEnabled = YES;
    
}


/*
 Add a UIPageControl to the root view of the view controller you made in part 1.
 Using the UIScrollViewDelegate method scrollViewDidScroll:, set the currentPage property to the correct page index as the user scrolls.
 
 */


#define pageControlHeight 20.0

- (void)createPageControl {
    CGRect frame = CGRectMake(0.0, self.view.frame.size.height - pageControlHeight, self.view.frame.size.width, pageControlHeight);
    
    self.pageControl = [[UIPageControl alloc] initWithFrame:frame];
    [self.view addSubview:self.pageControl];
    self.pageControl.layer.zPosition = 2;
    self.pageControl.numberOfPages = 2;
    self.pageControl.backgroundColor = [UIColor blackColor];
    self.pageControl.alpha = 0.5;
}


#pragma mark - ScrollViewDelegate

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    [self updatePageControl];
}

- (void)updatePageControl {
    CGFloat width = self.view.frame.size.width;
    CGFloat xOffset = self.scrollViewOutlet.contentOffset.x;
    NSInteger pageNumber = xOffset / width;
    self.pageControl.currentPage = pageNumber;
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
