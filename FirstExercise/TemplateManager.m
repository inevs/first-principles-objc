#import "TemplateManager.h"
#import "Template.h"

@implementation TemplateManager {
	NSMutableDictionary *_templates;
}

- (instancetype)init {
	self = [super init];
	if (self) {
		_templates = [[NSMutableDictionary alloc] init];
	}
	return self;
}

- (void)defineName:(NSString *)name template:(Template *)template {
	[_templates setObject:template forKey:name];
}

- (Template *)getTemplateByName:(NSString *)name {
	return _templates[name];
}

@end
