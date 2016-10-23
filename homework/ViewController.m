//
//  ViewController.m
//  homework
//
//  Created by SWUComputer on 2016. 10. 23..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "ViewController.h"
#import "PickerViewController.h"
#import "TextViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize display;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.hidden setHidden:YES];
}


- (IBAction)send:(UIButton *)sender {
    NSString *helloTo = [[sender titleLabel] text];
    NSString *current = display.text;
    
    if([current isEqualToString:@"비밀번호"]||[current isEqualToString:@"다시입력하세요"]){
        display.text = helloTo;
    }
    else{
        display.text = [current stringByAppendingString: helloTo];
    }
    
}

- (IBAction)change:(UIButton *)sender {
}

- (IBAction)re:(UIButton *)sender {
    
    if([display.text isEqualToString:@"1111"]){
    [self.hidden setHidden:NO];
    }else{
        
        display.text = @"다시입력하세요";
        [self.hidden setHidden:YES];
    }
}
@end
