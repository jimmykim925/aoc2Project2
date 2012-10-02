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
}

// create label and get UILabel information, append strings more than 1 digit
-(IBAction)onClick:(id)sender
{
  NSString *value = [sender currentTitle];
  
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
  [self.calcResult addInputsValues:[self.displayResult.text doubleValue]];
  self.currentlyUsingInputKeys = NO;
}

- (IBAction)displayResult:(UIButton *)sender {
  if (self.currentlyUsingInputKeys){
    [self addButton];
  }
  int answers = [self.calcResult addValues:sender.currentTitle];
  NSString *answerLabel = [NSString stringWithFormat:@"%d", answers];
  self.displayResult.text = answerLabel;
}

// Sets action for clear button
- (IBAction)clear:(id)sender {
  self.displayResult.text = 0;
}

- (IBAction)showModalView:(id)sender {
  SecondViewController *viewController = [[SecondViewController alloc] initWithNibName:@"SecondView" bundle:nil];
  if (viewController != nil){
    [self presentViewController:viewController animated:YES completion:nil];
  }
}


@end
