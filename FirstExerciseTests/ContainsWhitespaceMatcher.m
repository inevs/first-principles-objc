#import "ContainsWhitespaceMatcher.h"

@implementation ContainsWhitespaceMatcher

- (instancetype)init {
	self = [super init];
	if (self) {
	}
	return self;
}

-(BOOL)matches:(id)item {
	if ([item respondsToSelector:@selector(rangeOfCharacterFromSet:options:)]) {
		NSRange range = [item rangeOfCharacterFromSet:NSCharacterSet.whitespaceAndNewlineCharacterSet options:0];
		return range.location != NSNotFound;
	}
	return NO;
}

-(void)describeTo:(id<HCDescription>)description {
	[description appendText:@"string contains no white characters"];
}
@end

id containsWhitespace() {
	return [[ContainsWhitespaceMatcher alloc] init];
}