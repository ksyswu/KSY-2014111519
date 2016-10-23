//
//  TextViewController.m
//  homework
//
//  Created by SWUComputer on 2016. 10. 23..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "TextViewController.h"

@interface TextViewController ()

@end

@implementation TextViewController
@synthesize  input, display;

- (void)viewDidLoad {
    [super viewDidLoad];
   [self.hidden setHidden:YES];
}


- (BOOL) textFieldShouldReturn: (UITextField *) textField { [textField resignFirstResponder];
    self.display.text = [NSString stringWithFormat:@"%@", input.text];
    return YES;
    
}


- (IBAction)pass:(UIButton *)sender {
    if([display.text isEqualToString:@"1111"]){
    [self.hidden setHidden:NO];
    }
    else{
        display.text = @"다시입력하세요";
        [self.hidden setHidden:YES];
    }
}

@end
