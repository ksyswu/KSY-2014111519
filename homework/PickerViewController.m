//
//  PickerViewController.m
//  homework
//
//  Created by SWUComputer on 2016. 10. 23..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "PickerViewController.h"

@interface PickerViewController ()

@end

@implementation PickerViewController
@synthesize  info, picker, show;

- (void)viewDidLoad {
    [super viewDidLoad];
    data = [[NSArray alloc] initWithObjects:@"모바일프로그래밍", @"데이터베이스",
            @"소프트웨어공학",nil];
    week = [[NSArray alloc] initWithObjects:@"1주차", @"2주차",
            @"3주차", @"4주차",nil]; }
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}


- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if (component == 0)
        return [data count];
    else
        return [week count];
}

- (NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (component == 0)
        return [data objectAtIndex:row];
    else
        return [week objectAtIndex:row];
}



- (IBAction)add:(UIButton *)sender {
    NSString* first = [data objectAtIndex:[self.picker selectedRowInComponent: 0]];
    NSString* second = [week objectAtIndex:[self.picker selectedRowInComponent: 1]];
    self.info.text = [first stringByAppendingFormat:@" %@", second];
    
    NSInteger index = [self.picker selectedRowInComponent:0];
    NSInteger index2 = [self.picker selectedRowInComponent:1];
    
    if(index == 0 && index2 ==0){
        show.text = @"모바일 프로그래밍 1주차 \n 과제는 실습입니다 \n 기한은 10월3일 까지입니다";
    }else if(index == 0 && index2 ==1){
        show.text = @"모바일 프로그래밍 2주차 \n 과제는 버튼 구현입니다 \n 기한은 10월10일 까지입니다";
    }else if(index == 0 && index2 ==2){
        show.text = @"모바일 프로그래밍 3주차 \n 과제는 컨트롤 구현입니다 \n 기한은 10월17일 까지입니다";
    }else if(index == 0 && index2 ==3){
        show.text = @"모바일 프로그래밍 4주차 \n 과제가 없습니다";
    }
    else if(index == 1 && index2 ==0){
        show.text = @"데이터베이스 1주차 \n 과제는 없습니다 \n 10월 4일에 퀴즈가 있습니다";
    }else if(index == 1 && index2 ==1){
        show.text = @"휴강입니다";
    }else if(index == 1 && index2 ==2){
        show.text = @"데이터베이스 3주차 \n 과제는 문제풀기입니다 \n 기한은 10월11일 까지입니다";
    }else if(index == 1 && index2 ==3){
        show.text = @"데이터베이스 4주차 \n 과제는 실습입니다 \n 기한은 10월18일 까지입니다";
    }
    else if(index == 2 && index2 ==0){
        show.text = @"소프트웨어공학 1주차 \n 과제는 실습입니다 \n 기한은 10월6일 까지입니다";
    }else if(index == 2 && index2 ==1){
        show.text = @"소프트웨어공학 2주차 \n 과제는 문제풀기입니다 \n 기한은 10월13일 까지입니다 \n 10월 13일에 퀴즈가 있습니다";
    }else if(index == 2 && index2 ==2){
        show.text = @"소프트웨어공학 3주차 \n 과제가 없습니다";
    }else if(index == 2 && index2 ==3){
        show.text = @"소프트웨어공학 4주차 \n 과제가 없습니다.";
    }
    
    
}

@end
