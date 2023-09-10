//
//  Dice.h
//  Threelow
//
//  Created by Ion Sebastian Rodriguez Lara on 07/09/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject
@property (nonatomic) NSInteger value;
@property (nonatomic) BOOL isHeld;
-(void)randomize;
@end

NS_ASSUME_NONNULL_END
