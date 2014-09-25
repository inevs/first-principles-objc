#import <Foundation/Foundation.h>

@interface Template : NSObject

- (id)initWithString:(NSString *)string;
- (NSString *)fill:(NSDictionary *)values;

@end
