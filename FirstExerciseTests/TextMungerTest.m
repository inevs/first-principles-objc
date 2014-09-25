#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "TextMunger.h"

@interface TextMungerTest : XCTestCase

@end

@implementation TextMungerTest {
	TextMunger *_textMunger;
}

-(void)setUp {
	_textMunger = [[TextMunger alloc] init];
}

- (void)testLeavesShortWordUnchanged {
	XCTAssertEqualObjects([_textMunger munge:@"abc"], @"abc");
}

- (void)testReversesMiddleInLongerWords {
	XCTAssertEqualObjects([_textMunger munge:@"abcd"], @"acbd");
}

- (void)testMungesSentenceWordByWord {
	XCTAssertEqualObjects([_textMunger munge:@"abc abc"], @"abc abc");
	XCTAssertEqualObjects([_textMunger munge:@"abcd efgh"], @"acbd egfh");
}

@end
