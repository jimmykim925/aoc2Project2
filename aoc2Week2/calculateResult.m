//
//  calculateResult.m
//  aoc2Week2
//
//  Created by Jimmy Kim on 10/1/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "calculateResult.h"

@interface calculateResult()

@property (nonatomic, strong) NSMutableArray *inputToArray;

@end

@implementation calculateResult
@synthesize inputToArray;


-(NSMutableArray*)inputToArray
{
  inputToArray = [[NSMutableArray alloc] init];
  return inputToArray;
}

-(void)addInputs:(int)addInputs
{
  [self.inputToArray addObject:[NSNumber numberWithInt:addInputs]];
}

-(int)getLastObject
{
  NSNumber *lastArrayObject = [self.inputToArray lastObject];
  
  // Checks to make sure the array is not empty, then removes last object in array
  if (lastArrayObject != nil)
  {
    [self.inputToArray removeLastObject];
  }
  return [lastArrayObject integerValue];
}

-(int)add:(NSString *)add
{
  int answer = 0;
  
  if ([add isEqualToString:@"+"])
  {
    answer = [self getLastObject] + [self getLastObject];
  }

  return answer;
}






@end
