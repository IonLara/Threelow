//
//  main.m
//  Threelow
//
//  Created by Ion Sebastian Rodriguez Lara on 07/09/23.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Welcome to Threelow!");
        NSArray *numbers = @[@"-",@"⚀",@"⚁",@"⚂",@"⚃",@"⚄",@"⚅"];
        
        Dice *dice1 = [[Dice alloc] init];
        [dice1 randomize];
        Dice *dice2 = [[Dice alloc] init];
        [dice2 randomize];
        Dice *dice3 = [[Dice alloc] init];
        [dice3 randomize];
        Dice *dice4 = [[Dice alloc] init];
        [dice4 randomize];
        Dice *dice5 = [[Dice alloc] init];
        [dice5 randomize];
        
        NSLog(@"Dice = %@ %@ %@ %@ %@", numbers[[dice1 value]],numbers[[dice2 value]],numbers[[dice3 value]],numbers[[dice4 value]],numbers[[dice5 value]]);
        while (true) {
            NSString *input = [InputHandler receiveInput];
            if([input isEqual:@"roll"])
            {
                [dice1 randomize];
                [dice2 randomize];
                [dice3 randomize];
                [dice4 randomize];
                [dice5 randomize];
                NSLog(@"Dice = %@ %@ %@ %@ %@", numbers[[dice1 value]],numbers[[dice2 value]],numbers[[dice3 value]],numbers[[dice4 value]],numbers[[dice5 value]]);
            }
        }
        
    }
    return 0;
}
