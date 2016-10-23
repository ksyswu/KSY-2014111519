//
//  TextViewController.h
//  homework
//
//  Created by SWUComputer on 2016. 10. 23..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TextViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *display;

@property (strong, nonatomic) IBOutlet UITextField *input;

- (IBAction)pass:(UIButton *)sender;

- (BOOL) textFieldShouldReturn:(UITextField *)textField;


@property (strong, nonatomic) IBOutlet UIButton *hidden;

@end
