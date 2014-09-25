#import "SimpleRenderer.h"

@implementation SimpleRenderer

-(NSString *) fillTemplate:(NSString *)templ values:(NSDictionary *)values {
	NSMutableString *result = [templ mutableCopy];
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
