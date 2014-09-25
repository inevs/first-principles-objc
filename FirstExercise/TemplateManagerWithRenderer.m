#import "TemplateManagerWithRenderer.h"

@implementation TemplateManagerWithRenderer {
	id <TemplateRenderer> _renderer;
	NSMutableDictionary *_templates;
}

- (void)setRenderer:(id<TemplateRenderer>) renderer {
	_renderer = renderer;
}

- (void)defineName:(NSString *)name template:(NSString *)template {
	[_templates setValue:template forKey:name];
}

- (NSString *)fill:(NSString *)template values:(NSDictionary *)values {
	return [_renderer fillTemplate:template values:values];
}
@end
