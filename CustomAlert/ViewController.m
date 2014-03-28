//
//  ViewController.m
//  CustomAlert
//
//  Created by Brandon Roth on 3/25/14.
//  Copyright (c) 2014 me. All rights reserved.
//

#import "ViewController.h"
#import "AlertViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showAlert:(id)sender
{
    AlertViewController *vc = [[AlertViewController alloc] initWithNibName:nil bundle:nil];
    [vc show];
}

@end
