#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "TemplateRenderer.h"
#import "TemplateManagerWithRenderer.h"

#define MOCKITO_SHORTHAND
#import "OCMockito/OCMockito.h"

@interface CollaborativDecomposedTemplateManagerTest : XCTestCase

@end

@implementation CollaborativDecomposedTemplateManagerTest

- (void)testUsesRenderer {
	id renderer = mockProtocol(@protocol(TemplateRenderer));
	
	TemplateManagerWithRenderer *manager = [[TemplateManagerWithRenderer alloc] init];
	[manager setRenderer:renderer];
	
	NSDictionary *dict = @{};
	[given([renderer fillTemplate:@"template" values:dict]) willReturn:@"result"];
	XCTAssertEqualObjects(@"result", [manager fill:@"template" values:dict]);
}

@end
