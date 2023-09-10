//
//  MyGameController.m
//  Threelow
//
//  Created by Ion Sebastian Rodriguez Lara on 10/09/23.
//

#import "MyGameController.h"

@implementation MyGameController
-(instancetype)init
{
    self = [super init];
    if(self)
    {
        _dice = @[[[Dice alloc] init], [[Dice alloc] init],[[Dice alloc] init],[[Dice alloc] init],[[Dice alloc] init]];
        _held = [[NSMutableArray alloc] init];
        for (Dice *die in _dice)
        {
            [die randomize];
        }
    }
    return self;
}
-(void) roll
{
    for(Dice *die in _dice)
    {
        if(!die.isHeld)
        {
            [die randomize];
        }
    }
}
-(void) holdDie:(NSInteger) index
{
    _dice[index].isHeld = true;
    [_held addObject:_dice[index]];
}
-(void) printDie
{
    NSArray *numbers = @[@"-",@"⚀",@"⚁",@"⚂",@"⚃",@"⚄",@"⚅"];
    NSArray *numbersHeld = @[@"-",@"[⚀]",@"[⚁]",@"[⚂]",@"[⚃]",@"[⚄]",@"[⚅]"];
    NSMutableArray *numberString = [[NSMutableArray alloc] init];
    for(Dice *die in _dice)
    {
        if(die.isHeld)
        {
            [numberString addObject:numbersHeld[die.value]];
        } else
        {
            [numberString addObject:numbers[die.value]];
        }
    }
    NSLog(@"Dice = %@ %@ %@ %@ %@", numberString[0], numberString[1], numberString[2], numberString[3], numberString[4]);
}
@end
