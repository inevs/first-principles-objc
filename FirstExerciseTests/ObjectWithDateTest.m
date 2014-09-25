#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface ObjectWithDate : NSObject
@property (nonatomic) NSDate *date;
@end

@implementation ObjectWithDate

- (instancetype)init {
	self = [super init];
	if (self) {
		_date = [NSDate date];
	}
	return self;
}

@end

@interface ObjectWithDateTest : XCTestCase

@end

@implementation ObjectWithDateTest {
	ObjectWithDate *o;
}

-(void)setUp {
	o = [[ObjectWithDate alloc] init];
}

- (void)testMerktSichWannEsErstelltWurde {
	XCTAssertEqualWithAccuracy([o.date timeIntervalSinceDate:[NSDate date]], 0, 0.01);
}

- (void)testMerktSichWannEsErstelltWurde2 {
	NSLog(@"Date = %@", o.date);
}
@end
