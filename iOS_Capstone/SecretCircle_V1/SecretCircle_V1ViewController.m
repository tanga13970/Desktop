//
//  SecretCircle_V1ViewController.m
//  SecretCircle_V1
//
//  Created by Christy M MacMillan on 12-09-23.
//  Copyright (c) 2012 Christy M MacMillan. All rights reserved.
//

#import "SecretCircle_V1ViewController.h"

@interface SecretCircle_V1ViewController ()

@end

@implementation SecretCircle_V1ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)nextButton:(id)sender {
    
    if (secretCircle_relationship==nil) {
        
        secretCircle_relationship =[[SecretCircle_relationship alloc] initWithNibName:@"SecretCircle_relationship" bundle:nil];
        
    }
    
    [self presentModalViewController:secretCircle_relationship animated:YES];
    
}
@end
