#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Book.h"

@interface BookTest : XCTestCase
@end

@implementation BookTest

- (void)testCanBeLentAndReturned {
	Book *book = [[Book alloc] init];
	XCTAssert([book isLendable]);
	[book borrow];
	XCTAssertFalse([book isLendable]);
	[book giveBack];
	XCTAssert([book isLendable]);
}

@end


