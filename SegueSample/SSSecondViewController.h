//
//  SSSecondViewController.h
//  SegueSample
//
//  Created by yaakaito on 2013/04/22.
//  Copyright (c) 2013年 yaakaito.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SSSecondViewControllerDelegate
- (void)willBack:(id)obj;
@end

@interface SSSecondViewController : UIViewController

@property (nonatomic, weak) NSObject<SSSecondViewControllerDelegate> *delegate;

@end
