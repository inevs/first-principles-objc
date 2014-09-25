#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "LineCounter.h"

@interface LineCounterTest : XCTestCase

@end

@implementation LineCounterTest

- (void)testCountsLines {
	NSURL *url = [NSURL URLWithString:@"http://agileinaflash.blogspot.com/feeds/posts/default"];
	NSError *error;
	NSString *string = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:&error];
	LineCounter *lineCounter = [[LineCounter alloc] initWithString:string];
	XCTAssertEqual(lineCounter.count, 87);
}
@end
