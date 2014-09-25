#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "SimpleRenderer.h"

@interface SimpleRendererTest : XCTestCase

@end

@implementation SimpleRendererTest

- (void)testReplacesPlaceholderWithValues {
	SimpleRenderer *renderer = [[SimpleRenderer alloc] init];
	NSString *result = [renderer fillTemplate:@"foo {bar}" values:@{@"bar" : @"baz"}];
	XCTAssertEqualObjects(result, @"foo baz");
}

@end
