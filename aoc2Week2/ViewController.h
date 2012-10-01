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
  
}

-(void)addInputs:(int)addInputs;
-(int)add:(NSString *)add;

@property (weak, nonatomic) IBOutlet UILabel *displayResult;


-(IBAction)onClick:(id)sender;

@end
