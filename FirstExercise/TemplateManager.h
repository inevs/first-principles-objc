#import <Foundation/Foundation.h>

@interface TemplateManager : NSObject

- (void)defineName:(NSString *)name template:(NSString *)template;
- (NSString *)fill:(NSString *)templateName values:(NSDictionary *)values;

@end
