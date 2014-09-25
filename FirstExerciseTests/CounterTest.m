#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Counter.h"

@interface CounterTest : XCTestCase
@end

@implementation CounterTest

- (void)testCanBeIncremented {
	[Counter increment];
	XCTAssertEqual(Counter.value, 1);
}

- (void)testCanBeIncrementedMultipleTimes {
	[Counter increment];
	XCTAssertEqual(Counter.value, 2);
}

@end
