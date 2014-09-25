#import <Foundation/Foundation.h>

@interface LineCounter : NSObject

- (instancetype)initWithString:(NSString *)string;
- (NSInteger)count;

@end
