//
//  Q7DetailViewController.m
//  Quiz7
//
//  Created by Arek Bolton on 4/9/14.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import "Q7DetailViewController.h"
#import "Task.h"

@interface Q7DetailViewController ()
- (void)configureView;
@end

@implementation Q7DetailViewController
@synthesize dismissBlock;
#pragma mark - Managing the detail item


- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
        // Update the user interface for the detail item.
    
    if (self.detailItem) {
        [self.nameTextField setText:[self.detailItem name]];
        [self.slider setValue:[self.detailItem urgency]];
        [self.urgencyLabel setText:[NSString stringWithFormat:@"%i", (int)[self.detailItem urgency]]];
        [self.datePicker setDate:[self.detailItem dueDate]];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [_nameTextField setText: self.detailItem.name];
    [self configureView];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)urgencySlider:(id)sender {
    [self.urgencyLabel setText:[NSString stringWithFormat:@"%i", (int)self.slider.value ]];
}

- (IBAction)save:(id)sender {
    [self.detailItem setName:[self.nameTextField text]];
    [self.detailItem setUrgency:[self.slider value]];
    [self.detailItem setDueDate:[self.datePicker date]];
    [self.presentingViewController dismissViewControllerAnimated:NO completion:dismissBlock];
}

@end
