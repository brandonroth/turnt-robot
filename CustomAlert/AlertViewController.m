//
//  AlertViewController.m
//  CustomAlert
//
//  Created by Brandon Roth on 3/25/14.
//  Copyright (c) 2014 me. All rights reserved.
//

#import "AlertViewController.h"

@interface AlertViewController ()

@property (strong, nonatomic) UIWindow *oldWindow;
@property (strong, nonatomic) UIWindow *currentWindow;
@property (strong, nonatomic) UILabel *label;

@end

@implementation AlertViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.view.backgroundColor = [UIColor clearColor];

        self.label = [[UILabel alloc] init];
        self.label.text = @"Sample Text";
        self.label.backgroundColor = [UIColor blueColor];
        [self.label sizeToFit];
        self.label.center = self.view.center;

        [self.view addSubview:self.label];
    }
    return self;
}

- (void)viewDidLayoutSubviews
{
    self.label.center = self.view.center;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)show
{
    self.oldWindow = [UIApplication sharedApplication].keyWindow;
    self.currentWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.currentWindow.rootViewController = self;
    [self.currentWindow makeKeyAndVisible];
}

@end
