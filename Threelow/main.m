//
//  main.m
//  Threelow
//
//  Created by Ion Sebastian Rodriguez Lara on 07/09/23.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"
#import "MyGameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Welcome to Threelow!");
        NSArray *numbers = @[@"-",@"⚀",@"⚁",@"⚂",@"⚃",@"⚄",@"⚅"];
        
        MyGameController *controller = [[MyGameController alloc] init];
        
        [controller printDie];
        while (true) {
            NSString *input = [InputHandler receiveInput];
            if([input isEqual:@"roll"])
            {
                [controller roll];
                [controller printDie];
            } else if([input containsString:@"hold"])
            {
                NSCharacterSet *newlineCharacterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
                NSMutableString *parsedString = [NSMutableString stringWithString:[input stringByTrimmingCharactersInSet:newlineCharacterSet]];
                [parsedString replaceOccurrencesOfString:@"hold" withString:@"" options:NSLiteralSearch range:NSMakeRange(0, [parsedString length])];
                NSScanner *scanner = [NSScanner scannerWithString:parsedString];
                NSInteger value;
                if([scanner scanInteger:&value] && [scanner isAtEnd])
                {
                    if(value > 0 && value < 6)
                    {
                        [controller holdDie:(value - 1)];
                        [controller printDie];
                    } else
                    {
                        NSLog(@"Index out of range!");
                    }
                } else
                {
                    NSLog(@"Invalid input!");
                }
                
            }
        }
        
    }
    return 0;
}
