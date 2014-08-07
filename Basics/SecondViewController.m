//
//  SecondViewController.m
//  Basics
//
//  Created by Stellent Software on 8/6/14.
//  Copyright (c) 2014 Stellent Software. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

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
    // Do any additional setup after loading the view from its nib.
}

-(void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden=NO;
}

-(void)textViewDidBeginEditing:(UITextView *)textView
{
    ThirdViewController *thirdvc=[[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil];

   // [self.navigationController pushViewController:thirdvc animated:NO];

    [self presentViewController:thirdvc animated:YES completion:nil];

}
  
-(void)textViewDidEndEditing:(UITextView *)textView
{

}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if([text isEqualToString:@"\n"])
    {
        [textView resignFirstResponder];
        return NO;
    }

    return YES;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
