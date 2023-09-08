//
//  Dice.m
//  Threelow
//
//  Created by Ion Sebastian Rodriguez Lara on 07/09/23.
//

#import "Dice.h"

@implementation Dice

-(void)randomize
{
    _value = arc4random_uniform(6) + 1;
}

@end
