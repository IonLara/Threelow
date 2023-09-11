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
    if (!_dice[index].isHeld)
    {
        _dice[index].isHeld = true;
        [_held addObject:_dice[index]];
    } else
    {
        _dice[index].isHeld = false;
        [_held removeObject:_dice[index]];
    }

}
-(void) printDie
{
    NSArray *numbers = @[@"-",@"⚀",@"⚁",@"⚂",@"⚃",@"⚄",@"⚅"];
    NSArray *numbersHeld = @[@"-",@"[⚀]",@"[⚁]",@"[⚂]",@"[⚃]",@"[⚄]",@"[⚅]"];
    NSMutableArray *numberString = [[NSMutableArray alloc] init];
    NSInteger score = 0;
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
    for(Dice *die in _held)
    {
        score += die.value;
    }
    NSLog(@"\nChoose your action:\nroll - Rolls all unheld dice\nhold <dieNumber> - Holds chosen die\nunhold <dieNumber> - Unholds chosen die\nreset - Unholds all dice\nDice = %@ %@ %@ %@ %@\nScore: %ld", numberString[0], numberString[1], numberString[2], numberString[3], numberString[4], (long)score);
}
-(void) resetDie
{
    for(Dice *die in _dice)
    {
        die.isHeld = false;
    }
    [_held removeAllObjects];
}
@end
