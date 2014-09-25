#import <Foundation/Foundation.h>
#import "TemplateRenderer.h"

@interface TemplateManagerWithRenderer : NSObject

- (void)setRenderer:(id<TemplateRenderer>) renderer;
- (void)defineName:(NSString *)name template:(NSString *)template;
- (NSString *)fill:(NSString *)template values:(NSDictionary *)values;

@end
