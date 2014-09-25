#import <Foundation/Foundation.h>

@interface Book : NSObject

@property (nonatomic, getter=isLendable) BOOL lendable;
- (void)borrow;
- (void)giveBack;

@end
