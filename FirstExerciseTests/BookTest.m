#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Book.h"

@interface BookTest : XCTestCase {
	Book *newBook;
	Book *borrowedBook;
}
@end

@implementation BookTest

-(void)setUp {
	newBook = [[Book alloc] init];
	borrowedBook = [[Book alloc] init];
	[borrowedBook borrow];
}

- (void)testCanBeLentByDefault {
	XCTAssert([newBook isLendable]);
}

- (void)testBorrowedBooksCantBeLent {
	[newBook borrow];
	XCTAssertFalse([newBook isLendable]);
}

- (void)testBorrowedBooksCanBeLentAfterReturn {
	[borrowedBook giveBack];
	XCTAssert([borrowedBook isLendable]);
}
@end


