//
//  SecretCircle_relationship.h
//  SecretCircle_V1
//
//  Created by stu dent on 12-09-29.
//  Copyright (c) 2012 Christy M MacMillan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecretCircle_relationship:UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>;;



@property (weak, nonatomic) IBOutlet UISwitch *sButton;
@property (weak, nonatomic) IBOutlet UILabel *lLable;
@property (weak, nonatomic) IBOutlet UISlider *sBar;
@property (weak, nonatomic) IBOutlet UILabel *howlong;
@property (weak, nonatomic) IBOutlet UIPickerView *pBoard;



@property (nonatomic, retain) NSMutableArray *relationshipState;



- (IBAction)SegmentButton:(id)sender;
- (IBAction)switchButton:(id)sender;
- (IBAction)sliderBar:(id)sender;




@end
