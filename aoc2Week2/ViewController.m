//
//  ViewController.m
//  aoc2Week2
//
//  Created by Jimmy Kim on 9/30/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "ViewController.h"
#import "calculateResult.h"
#import "SecondViewController.h"

@interface ViewController ()
// create property for BOOL check for key usage and for calculateResult class
@property (nonatomic) BOOL currentlyUsingInputKeys;
@property (nonatomic, strong) calculateResult *calcResult;
@end

@implementation ViewController
@synthesize displayResult;
@synthesize currentlyUsingInputKeys;
@synthesize calcResult = _calcResult;

// initialize and return calcResult
-(calculateResult *)calcResult
{
  if (!_calcResult){
    _calcResult = [[calculateResult alloc] init];
  }
  return _calcResult;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
  // Sets the default switch value to off
    switchOne.on = false;
}

// create label and get UILabel information, append strings more than 1 digit
-(IBAction)onClick:(id)sender
{
  // String value using current title
  NSString *value = [sender currentTitle];
  
  // BOOL to check if using keys, append the strings together, display the text
  if (self.currentlyUsingInputKeys){
    UILabel *labelValue = self.displayResult;
    NSString *displayText = labelValue.text;
    NSString *appendedText = [displayText stringByAppendingString:value];
    labelValue.text = appendedText;
  } else{
    self.displayResult.text = value;
    self.currentlyUsingInputKeys = YES;
  }
}

- (IBAction)addButton {
  // sends value to function
  [self.calcResult addInputsValues:[self.displayResult.text doubleValue]];
  self.currentlyUsingInputKeys = NO;
}

- (IBAction)displayResult:(UIButton *)sender {
  // checks on using keys
  if (self.currentlyUsingInputKeys){
    [self addButton];
  }
  // sets display after equal sign
  int answers = [self.calcResult addValues:sender.currentTitle];
  NSString *answerLabel = [NSString stringWithFormat:@"%d", answers];
  self.displayResult.text = answerLabel;
}

// Sets action for clear button
- (IBAction)clear:(id)sender {
  self.displayResult.text = 0;
}

// Action for the modal view
- (IBAction)showModalView:(id)sender {
  // Initialize second view
  SecondViewController *viewController = [[SecondViewController alloc] initWithNibName:@"SecondView" bundle:nil];
  // Shows the second view controller
  if (viewController != nil){
    [self presentViewController:viewController animated:YES completion:nil];
  }
}

// Change the background color
- (IBAction)changeBackgroundColor:(id)sender {
  // Casts the sender as segment control
  UISegmentedControl *segmentControl = (UISegmentedControl *)sender;
  // Sets an index number for different segments and colors
  if (segmentControl != nil) {
    int indexNumber = segmentControl.selectedSegmentIndex;
    if (indexNumber == 0){
      self.view.backgroundColor = [UIColor whiteColor];
    } else if (indexNumber == 1){
      self.view.backgroundColor = [UIColor blueColor];
    } else if (indexNumber == 2) {
      self.view.backgroundColor = [UIColor greenColor];
    }
  }
}

// On and Off Switch
- (IBAction)onSwitched:(id)sender {
  // Casts sender as a UISwitch
  UISwitch *switchedOn = (UISwitch *)sender;
  // Disables/Enables buttons if off or on, clears data when off
  if (switchedOn != nil) {
    if (switchOne.on){
      buttonZero.enabled = true;
      buttonOne.enabled = true;
      buttonTwo.enabled = true;
      buttonThree.enabled = true;
      buttonFour.enabled = true;
      buttonFive.enabled = true;
      buttonSix.enabled = true;
      buttonSeven.enabled = true;
      buttonEight.enabled = true;
      buttonNine.enabled = true;
      buttonAdd.enabled = true;
      buttonEquals.enabled = true;
      buttonClear.enabled = true;
    } else {
      buttonZero.enabled = false;
      buttonOne.enabled = false;
      buttonTwo.enabled = false;
      buttonThree.enabled = false;
      buttonFour.enabled = false;
      buttonFive.enabled = false;
      buttonSix.enabled = false;
      buttonSeven.enabled = false;
      buttonEight.enabled = false;
      buttonNine.enabled = false;
      buttonAdd.enabled = false;
      buttonEquals.enabled = false;
      buttonClear.enabled = false;
      self.displayResult.text = 0;
    }

  }
}


@end
