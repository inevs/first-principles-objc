#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "TemplateManager.h"

@interface TemplateManagerTest : XCTestCase

@end

@implementation TemplateManagerTest

- (void)testReplacesPlaceholderWithValues {
	TemplateManager *templateManager = [[TemplateManager alloc] init];
	[templateManager defineName:@"foo" template:@"foo {bar}"];
	NSDictionary *values = @{@"bar" : @"baz"};
	NSString *result = [templateManager fill:@"foo" values:values];
	XCTAssertEqualObjects(result, @"foo baz");
}
@end
