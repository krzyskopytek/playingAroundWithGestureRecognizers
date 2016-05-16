//
//  SwipeViewController.m
//  playingAroundWithGestureRecognizers
//
//  Created by Krzysztof Kopytek on 2016-05-15.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()

-(void)slideToRightWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer;
-(void)slideToLeftWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer;

@end

@implementation SwipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UISwipeGestureRecognizer *swipeRightOrange = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToRightWithGestureRecognizer:)];
    swipeRightOrange.direction = UISwipeGestureRecognizerDirectionRight;
 
    UISwipeGestureRecognizer *swipeLeftOrange = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToLeftWithGestureRecognizer:)];
    swipeLeftOrange.direction = UISwipeGestureRecognizerDirectionLeft;

    [self.viewOrange addGestureRecognizer:swipeRightOrange];
    [self.viewOrange addGestureRecognizer:swipeLeftOrange];
    
    UISwipeGestureRecognizer *swipeRightGreen = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToRightWithGestureRecognizer:)];
    swipeRightGreen.direction = UISwipeGestureRecognizerDirectionRight;
    [self.viewGreen addGestureRecognizer:swipeRightGreen];
    
        
    UISwipeGestureRecognizer *swipeLeftBlue = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToLeftWithGestureRecognizer:)];
    swipeLeftBlue.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.viewGreen addGestureRecognizer:swipeLeftBlue];

    
    
}

-(void)slideToRightWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer{
    [UIView animateWithDuration:0.5 animations:^{
        self.viewOrange.frame = CGRectOffset(self.viewOrange.frame, 414.0, 0.0);
        self.viewGreen.frame = CGRectOffset(self.viewGreen.frame, 414.0, 0.0);
        self.viewBlue.frame = CGRectOffset(self.viewBlue.frame, 414.0, 0.0);
    }];
}

-(void)slideToLeftWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer{
    [UIView animateWithDuration:0.5 animations:^{
        self.viewOrange.frame = CGRectOffset(self.viewOrange.frame, -414.0, 0.0);
        self.viewGreen.frame = CGRectOffset(self.viewGreen.frame, -414.0, 0.0);
        self.viewBlue.frame = CGRectOffset(self.viewBlue.frame, -414.0, 0.0);
    }];
}

@end
