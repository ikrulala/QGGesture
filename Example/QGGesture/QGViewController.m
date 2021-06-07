//
//  QGViewController.m
//  QGGesture
//
//  Created by ikrulala on 06/01/2021.
//  Copyright (c) 2021 ikrulala. All rights reserved.
//

#import "QGViewController.h"
#import <QGGesture/UIView+QGGesture.h>

@interface QGViewController ()

@end

@implementation QGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] init];
    [self.view qg_onGesture:tap callback:^(UIGestureRecognizer * _Nonnull sender, UIGestureRecognizerState state) {
        NSLog(@"%@ %ld",sender, (long)state);
    }];
    
    [self.view qg_tapWithCallback:^(UIGestureRecognizer * _Nonnull sender, UIGestureRecognizerState state) {
        NSLog(@"%@ %ld",sender, (long)state);
    }];

    [self.view qg_swipeWithCallback:^(UIGestureRecognizer * _Nonnull sender, UIGestureRecognizerState state) {
        NSLog(@"%@ %ld",sender, (long)state);
    }];

    [self.view qg_rotationWithCallback:^(UIGestureRecognizer * _Nonnull sender, UIGestureRecognizerState state) {
        NSLog(@"%@ %ld",sender, (long)state);
    }];

    [self.view qg_pinchWithCallback:^(UIGestureRecognizer * _Nonnull sender, UIGestureRecognizerState state) {
        NSLog(@"%@ %ld",sender, (long)state);
    }];

    [self.view qg_panWithCallback:^(UIGestureRecognizer * _Nonnull sender, UIGestureRecognizerState state) {
        NSLog(@"%@ %ld",sender, (long)state);
    }];

    [self.view qg_pinchWithCallback:^(UIGestureRecognizer * _Nonnull sender, UIGestureRecognizerState state) {
        NSLog(@"%@ %ld",sender, (long)state);
    }];

    [self.view qg_longPressWithCallback:^(UIGestureRecognizer * _Nonnull sender, UIGestureRecognizerState state) {
        NSLog(@"%@ %ld",sender, (long)state);
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
