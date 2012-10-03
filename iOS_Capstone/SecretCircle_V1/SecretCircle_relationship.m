//
//  SecretCircle_relationship.m
//  SecretCircle_V1
//
//  Created by stu dent on 12-09-29.
//  Copyright (c) 2012 Christy M MacMillan. All rights reserved.
//

#import "SecretCircle_relationship.h"
#import "SecretCircle_relationClass.h"

@interface SecretCircle_relationship ()

@end

@implementation SecretCircle_relationship
@synthesize sButton;
@synthesize lLable;
@synthesize sBar;
@synthesize howlong;
@synthesize pBoard;



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
    
    pBoard.frame=CGRectMake(59, 144, 204, 30);
    [self.view addSubview:pBoard];
    
    
    self.relationshipState = [[NSMutableArray alloc] initWithObjects:
                              @"Single", @"Divorced", @"Uncertain",
                              @"Widowed", @"Non-committed Relationship",@"Married /Common law",@"None of the above", nil];
    
    
    sBar.maximumValue=50;
    sBar.minimumValue=0;
    
    pBoard.hidden=NO;
    
    howlong.hidden=YES;
    sBar.hidden=YES;
    
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    
    [self setSButton:nil];
    [self setLLable:nil];
    [self setHowlong:nil];
    [self setSBar:nil];
    [self setHowlong:nil];
    [self setPBoard:nil];
    [self setSButton:nil];
    [self setPBoard:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    
}

- (NSInteger)numberOfComponentsInPickerView:
(UIPickerView *)pickerView
{
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component
{
    return [self.relationshipState count];
}
- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component
{
    return [self.relationshipState objectAtIndex:row];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row
      inComponent:(NSInteger)component
{
    
    SecretCircle_relationClass *rela=[[SecretCircle_relationClass alloc] init];
    
    NSString *relation=[self.relationshipState objectAtIndex:row];
    
    if (relation!=nil) {
        howlong.hidden=NO;
        sBar.hidden=NO;
    }
    
    rela.status=relation;
    
}


- (IBAction)SegmentButton:(id)sender {
    
    if([sender selectedSegmentIndex]==1)
    {
        lLable.hidden=NO;
        sButton.hidden=NO;
        pBoard.hidden=YES;
        howlong.hidden=YES;
        sBar.hidden=YES;
        if([sButton isOn])
        {
            howlong.hidden=NO;
            sBar.hidden=NO;
        }
    }
    else
    {
        sButton.hidden=YES;
        lLable.hidden=YES;
        pBoard.hidden=NO;
        if ([sButton isOn])
        {
            howlong.hidden=YES;
            sBar.hidden=YES;
        }
    }
    
}

- (IBAction)switchButton:(id)sender {
    
    UISwitch *lSwitch=(UISwitch *)sender;
    if ([lSwitch isOn]) {
        howlong.hidden=NO;
        sBar.hidden=NO;
        [sButton setOn:YES];
    }
    else
    {
        howlong.hidden=YES;
        sBar.hidden=YES;
        [sButton setOn:NO];
    }
    
}

- (IBAction)sliderBar:(id)sender {
    
    UISlider *slider=(UISlider *)sender;
    int num=(int)roundf(slider.value);
    SecretCircle_relationClass *rela=[[SecretCircle_relationClass alloc] init];
    rela.howLongNumber=num;
    
    howlong.text=[NSString stringWithFormat:@"How long:%d",num];
    
}
@end
