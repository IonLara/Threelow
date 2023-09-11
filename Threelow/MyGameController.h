//
//  MyGameController.h
//  Threelow
//
//  Created by Ion Sebastian Rodriguez Lara on 10/09/23.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

NS_ASSUME_NONNULL_BEGIN

@interface MyGameController : NSObject
@property (nonatomic) NSArray<Dice*>* dice;
@property (nonatomic) NSMutableArray<Dice*>* held;
-(instancetype)init;
-(void) roll;
-(void) holdDie:(NSInteger) index;
-(void) printDie;
-(void) resetDie;
@end

NS_ASSUME_NONNULL_END
