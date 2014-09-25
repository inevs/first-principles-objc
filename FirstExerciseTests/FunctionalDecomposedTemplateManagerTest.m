#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Template.h"

@interface FunctionalDecomposedTemplateManagerTest : XCTestCase

@end

@implementation FunctionalDecomposedTemplateManagerTest

- (void)testReplacesPlaceholderWithValues {
	Template *template = [[Template alloc] initWithString:@"foo {bar}"];
	NSString *result = [template fill:@{@"bar" : @"baz"}];
	XCTAssertEqualObjects(result, @"foo baz");
}

@end
