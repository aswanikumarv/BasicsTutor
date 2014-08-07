//
//  ThirdViewController.m
//  Basics
//
//  Created by Stellent Software on 8/6/14.
//  Copyright (c) 2014 Stellent Software. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

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

    self.navigationController.navigationBar.hidden=YES;
   // self.navigationController
}

-(void)viewWillAppear:(BOOL)animated
{

    UILabel *lbl= [[UILabel alloc] initWithFrame:CGRectMake(20, 200, 100, 21)];
    lbl.text=@"First Label";

    [self.view addSubview:lbl];
    //self.lbl.frame=CGRectMake(20, 400, 100, 21);

}

-(void)viewDidAppear:(BOOL)animated
{
    UILabel *lbl= [[UILabel alloc] initWithFrame:CGRectMake(20, 300, 100, 21)];
    lbl.text=@"Second Label";

    [self.view addSubview:lbl];

}
-(void)viewWillDisappear:(BOOL)animated
{


}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)gotoHome:(id)sender
{

    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (IBAction)dimissVC:(id)sender
{


    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
