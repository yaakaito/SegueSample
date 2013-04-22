//
//  SSSecondViewController.m
//  SegueSample
//
//  Created by yaakaito on 2013/04/22.
//  Copyright (c) 2013年 yaakaito.org. All rights reserved.
//

#import "SSSecondViewController.h"

@interface SSSecondViewController ()

@end

@implementation SSSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewWillDisappear:(BOOL)animated {
    
    [super viewWillDisappear:animated];
    [self.delegate willBack:@{@"A" : @"HOGE"}];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"TopToSecond"]) {
        NSLog(@"%@", sender);
    }
}
- (IBAction)touchDismiss:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
