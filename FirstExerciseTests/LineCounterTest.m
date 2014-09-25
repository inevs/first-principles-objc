#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "LineCounter.h"

#define MOCKITO_SHORTHAND
#import "OCMockito/OCMockito.h"

@interface LineCounterTest : XCTestCase

@end

@implementation LineCounterTest

- (void)testCountsLines {
	NSString *string = [self stringWith3Lines];
	LineCounter *lineCounter = [[LineCounter alloc] initWithString:string];
	XCTAssertEqual(lineCounter.count, 3);
}

- (NSString *)stringWith3Lines {
	NSArray *lines = @[@"foo", @"bar", @"baz"];
	id stringMock = mock([NSString class]);
	[given([stringMock componentsSeparatedByString:@"\n"]) willReturn:lines];
	return stringMock;
}
@end
