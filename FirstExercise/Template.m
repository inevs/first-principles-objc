#import "Template.h"

@implementation Template {
	NSString *_content;
}

-(id)initWithString:(NSString *)string {
	self = [super init];
	if (self) {
		_content = [string copy];
	}
	return self;
}

-(NSString *)fill:(NSDictionary *)values {
	NSMutableString *result = [_content mutableCopy];
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
