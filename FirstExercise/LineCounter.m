#import "LineCounter.h"

@implementation LineCounter {
	NSString *_string;
}

- (instancetype)initWithString:(NSString *)string {
	self = [super init];
	if (self) {
		_string = string;
	}
	return self;
}

- (NSInteger)count {
	NSArray *lines = [_string componentsSeparatedByString:@"/n"];
	return lines.count;
}

@end
