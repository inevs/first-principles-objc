#import "Counter.h"

static 	NSInteger __value;

@implementation Counter

+ (void)increment {
	__value += 1;
}

+ (NSInteger)value {
	return __value;
}

+ (void)reset {
	__value = 0;
}
@end
