#import "Book.h"

@implementation Book

- (instancetype)init
{
	self = [super init];
	if (self) {
		_lendable = YES;
	}
	return self;
}

- (void)borrow {
	self.lendable = NO;
}

-(void)giveBack {
	self.lendable = YES;
}

@end
