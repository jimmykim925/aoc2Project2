//
//  ViewController.h
//  aoc2Week2
//
//  Created by Jimmy Kim on 9/30/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
  IBOutlet UISwitch *switchOne;
  IBOutlet UIButton *buttonZero;
  IBOutlet UIButton *buttonOne;
  IBOutlet UIButton *buttonTwo;
  IBOutlet UIButton *buttonThree;
  IBOutlet UIButton *buttonFour;
  IBOutlet UIButton *buttonFive;
  IBOutlet UIButton *buttonSix;
  IBOutlet UIButton *buttonSeven;
  IBOutlet UIButton *buttonEight;
  IBOutlet UIButton *buttonNine;
  IBOutlet UIButton *buttonAdd;
  IBOutlet UIButton *buttonEquals;
  IBOutlet UIButton *buttonClear;
}

@property (weak, nonatomic) IBOutlet UILabel *displayResult;

-(IBAction)onClick:(id)sender;

- (IBAction)showModalView:(id)sender;

- (IBAction)changeBackgroundColor:(id)sender;

- (IBAction)onSwitched:(id)sender;

@end
