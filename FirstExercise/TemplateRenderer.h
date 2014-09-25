#import <UIKit/UIKit.h>

@protocol TemplateRenderer <NSObject>

- (NSString *)fillTemplate:(NSString *)templ values:(NSDictionary *)values;

@end

