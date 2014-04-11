//
//  Q7DetailViewController.h
//  Quiz7
//
//  Created by Arek Bolton on 4/9/14.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Task.h"


@interface Q7DetailViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) Task *detailItem;
@property (nonatomic, copy) void (^dismissBlock)(void);

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UILabel *urgencyLabel;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

- (IBAction)urgencySlider:(id)sender;

- (IBAction)save:(id)sender;

@end
