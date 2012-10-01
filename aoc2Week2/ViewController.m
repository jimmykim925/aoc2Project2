//
//  ViewController.m
//  aoc2Week2
//
//  Created by Jimmy Kim on 9/30/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *inputArray;
@end

@implementation ViewController
@synthesize inputArray;

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(NSMutableArray*)inputArray
{
  inputArray = [[NSMutableArray alloc] init];
  return inputArray;
}

-(IBAction)onClick:(id)sender
{
  UIButton *button = (UIButton *)sender;
  
  NSString *value = [sender currentTitle];
  UILabel *labelValue = self.displayResult;
  NSString *displayText = labelValue.text;
  NSString *appendedText = [displayText stringByAppendingString:value];
  labelValue.text = appendedText;
  
}

- (IBAction)addition:(id)sender {
}


- (IBAction)displayResult:(id)sender {
}



@end
