#import "TemplateManager.h"

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

- (void)defineName:(NSString *)name template:(NSString *)template {
	[_templates setObject:template forKey:name];
}

-(NSString *)fill:(NSString *)templateName values:(NSDictionary *)values {
	NSString *template = _templates[templateName];
	NSMutableString *result = [template mutableCopy];
	for (NSString *placeholder in [values allKeys]) {
		NSString *toBeReplaced = [NSString stringWithFormat:@"{%@}", placeholder];
		NSRange range = [result rangeOfString:toBeReplaced options:0];
		if (range.location != NSNotFound) {
			[result replaceCharactersInRange:range withString:values[placeholder]];
		}
	}
	return result;
}

@end
