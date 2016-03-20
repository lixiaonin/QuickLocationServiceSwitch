//
//  ViewController.m
//  QuickLocationService
//
//  Created by Xiaonin Li on 3/19/16.
//  Copyright © 2016 KingCatTech. All rights reserved.
//
//
//  Mar 19 2016 7pm
//  The only reason to attach the jump to a button action:
//  it takes a 4-6 seconds lag if triggered directly after viewDidLoad for a unknown reason.
//  There might be better solution.
//
//

#import "ViewController.h"

@implementation ViewController
@synthesize  btn;

- (void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [btn sendActionsForControlEvents:UIControlEventTouchUpInside];
}

- (void) loadView
{
    [super loadView];
 
    btn = [[UIButton alloc] initWithFrame:self.view.frame];
    [btn addTarget:self action:@selector(jumpToLocService) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void) jumpToLocService
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"prefs:root=LOCATION_SERVICES"]];
}

@end
