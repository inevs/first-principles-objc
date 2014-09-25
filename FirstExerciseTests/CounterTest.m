#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Counter.h"

@interface CounterTest : XCTestCase
@end

@implementation CounterTest

-(void)setUp {
	[Counter reset];
}

- (void)testCanBeIncremented {
	[Counter increment];
	XCTAssertEqual(Counter.value, 1);
}

- (void)testCanBeIncrementedMultipleTimes {
	[Counter increment];
	[Counter increment];
	XCTAssertEqual(Counter.value, 2);
}

@end
