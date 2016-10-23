//
//  ViewController.h
//  homework
//
//  Created by SWUComputer on 2016. 10. 23..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *display;

- (IBAction)send:(UIButton *)sender;
- (IBAction)change:(UIButton *)sender;
- (IBAction)re:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UIButton *hidden;

@end

