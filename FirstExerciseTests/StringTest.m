#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#define HC_SHORTHAND
#import "OCHamcrest/OCHamcrest.h"
#import "ContainsWhitespaceMatcher.h"

@interface StringTest : XCTestCase

@end

@implementation StringTest

- (void)testContainsWhiteSpace {
	NSString *string = @"foo bar";
	assertThat(string, containsWhitespace());
}
@end
