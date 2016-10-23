//
//  PickerViewController.h
//  homework
//
//  Created by SWUComputer on 2016. 10. 23..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource> {
    NSArray * data; // 과목
    NSArray * week; // 주차
}

@property (strong, nonatomic) IBOutlet UILabel *info;
@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) IBOutlet UILabel *show;


- (IBAction)add:(UIButton *)sender;

@end
