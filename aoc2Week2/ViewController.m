//
//  ViewController.m
//  aoc2Week2
//
//  Created by Jimmy Kim on 9/30/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)onClick:(id)sender
{
  UIButton *button = (UIButton *)sender;
  if (button != nil){
    switch ([button tag]) {
      case 0:
        NSLog(@"0");
        break;
      case 1:
        NSLog(@"1");
        break;
      case 2:
        NSLog(@"2");
        break;
      case 3:
        NSLog(@"3");
        break;
      case 4:
        NSLog(@"4");
        break;
      case 5:
        NSLog(@"5");
        break;
      case 6:
        NSLog(@"6");
        break;
      case 7:
        NSLog(@"7");
        break;
      case 8:
        NSLog(@"8");
        break;
      case 9:
        NSLog(@"9");
        break;
      case 10:
        NSLog(@"10");
        break;
      case 11:
        NSLog(@"11");
        break;
      case 12:
        NSLog(@"12");
        break;
      
      default:
        break;
    }
   
  }
  
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
