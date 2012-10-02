//
//  ViewController.m
//  aoc2Week2
//
//  Created by Jimmy Kim on 9/30/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "ViewController.h"
#import "calculateResult.h"

@interface ViewController ()

@property (nonatomic) BOOL currentlyUsingInputKeys;
@property (nonatomic, strong) calculateResult *calcResult;
@end

@implementation ViewController
@synthesize displayResult;
@synthesize currentlyUsingInputKeys;
@synthesize calcResult;

-(calculateResult *)Result
{
  calcResult = [[calculateResult alloc] init];
  return calcResult;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

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

- (IBAction)addition:(id)sender {
  //[self addInputs:[self.displayResult.text intValue]];
}


- (IBAction)displayResult:(id)sender {
  int result;
  NSString *resultAmount = [NSString stringWithFormat:@"%d", result];
  self.displayResult.text = resultAmount;
}



@end
