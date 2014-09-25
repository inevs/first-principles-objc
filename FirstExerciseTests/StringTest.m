#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface StringTest : XCTestCase

@end

@implementation StringTest

- (void)testContainsWhiteSpace {
	NSString *string = @"foo bar";
	NSRange range = [string rangeOfCharacterFromSet:NSCharacterSet.whitespaceAndNewlineCharacterSet options:0];
	XCTAssertTrue(range.location != NSNotFound);
}
@end
