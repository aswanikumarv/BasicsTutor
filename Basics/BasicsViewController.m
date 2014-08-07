//
//  BasicsViewController.m
//  Basics
//
//  Created by Stellent Software on 8/6/14.
//  Copyright (c) 2014 Stellent Software. All rights reserved.
//

#import "BasicsViewController.h"
#import "SecondViewController.h"

@interface BasicsViewController ()

@end

@implementation BasicsViewController

@synthesize demoLabel;

#pragma mark - View Lifecycle Methods

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


    self.demoLabel.text=@"Demo";

    self.lbl=[[UILabel alloc] initWithFrame:CGRectMake(20, 150, 100, 21)];

    self.lbl.text=@"First Project";

    self.demoTextfield.secureTextEntry=YES;

    [self.view addSubview:self.lbl];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)testAction:(id)sender {

    self.demoLabel.text=@"Demo Test";

    self.lbl.frame=CGRectMake(20, 400, 100, 21);

    self.lbl.hidden=YES;

    [self.demoTextfield resignFirstResponder];
    [self.demoTextfield2 resignFirstResponder];

}

- (IBAction)slidervalueModifed:(id)sender {

    self.demoLabel.text=[NSString stringWithFormat:@"%f",self.slider1.value];

}

#pragma mark - Textfield Methods

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    if(textField==self.demoTextfield)
    {
        self.demoLabel.text=@"Text 1 begin";

    }
    else if (textField==self.demoTextfield2)
    {
        self.demoLabel.text=@"Text 2 begin";

    }


}
-(void)textFieldDidEndEditing:(UITextField *)textField
{
    if(textField.tag==1)
    {
        self.demoLabel.text=@"Text 1 End ";

    }
    else if (textField.tag==2)
    {
        self.demoLabel.text=@"Text 2 End";
        
    }

}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{

    self.demoLabel.text=textField.text;
    if([string isEqualToString:@"a"])
    {
        return NO;
    }

    return YES;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;

}


- (IBAction)goToSecondViewAction:(id)sender {

    SecondViewController *secondVC=[[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    [self.navigationController pushViewController:secondVC animated:YES];

}
@end
