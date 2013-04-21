//
//  SSViewController.m
//  SegueSample
//
//  Created by yaakaito on 2013/04/22.
//  Copyright (c) 2013年 yaakaito.org. All rights reserved.
//

#import "SSViewController.h"
#import "SSSecondViewController.h"

@interface SSViewController () <SSSecondViewControllerDelegate>

@end

@implementation SSViewController 

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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"TopToSecond"]) {
        NSLog(@"%@", segue.destinationViewController);
        ((SSSecondViewController *)segue.destinationViewController).delegate = self;
    }
}

- (void)willBack:(id)obj {
    NSLog(@"%@", obj);
}

@end
