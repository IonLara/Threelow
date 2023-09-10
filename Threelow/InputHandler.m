//
//  InputHandler.m
//  Threelow
//
//  Created by Ion Sebastian Rodriguez Lara on 07/09/23.
//

#import "InputHandler.h"

@implementation InputHandler
+ (NSString*)receiveInput {
    char inputChar[255];
    fgets(inputChar, 255, stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChar];
    NSCharacterSet *newlineCharacterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *parsedString = [inputString stringByTrimmingCharactersInSet:newlineCharacterSet];
    return parsedString;
}
@end
