//
//  BasicsViewController.h
//  Basics
//
//  Created by Stellent Software on 8/6/14.
//  Copyright (c) 2014 Stellent Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BasicsViewController : UIViewController<UITextFieldDelegate>

@property (strong, nonatomic) UILabel *lbl;
@property (strong, nonatomic) IBOutlet UILabel *demoLabel;
@property (strong, nonatomic) IBOutlet UITextField *demoTextfield;
@property (strong, nonatomic) IBOutlet UITextField *demoTextfield2;
@property (strong, nonatomic) IBOutlet UISlider *slider1;

- (IBAction)testAction:(id)sender;
- (IBAction)slidervalueModifed:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *goToSecondView;
- (IBAction)goToSecondViewAction:(id)sender;

@end
