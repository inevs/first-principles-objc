#import "TextMunger.h"

@implementation TextMunger

- (NSString *)munge:(NSString *)text {
	if ([text containsString:@" "]) {
		return [self reverseSentence:text];
	}
	if (text.length >= 4) {
		return [NSString stringWithFormat:@"%@%@%@", [self firstCharacter:text], [self reverseMiddle:text], [self lastCharacter:text]];
	}
	return @"abc";
}

- (NSString *)reverseSentence:(NSString *)text {
	NSArray *words = [text componentsSeparatedByString:@" "];
	NSMutableArray *reversed = [[NSMutableArray alloc] init];
	for (NSString *word in words) {
		NSString *reversedWord = [self munge:word];
		[reversed addObject:reversedWord];
	}
	return [reversed componentsJoinedByString:@" "];
	
}

- (NSString *)firstCharacter:(NSString *)text {
	return [text substringToIndex:1];
}

- (NSString *)lastCharacter:(NSString *)text {
	return [text substringFromIndex:text.length - 1];
}

- (NSString *)reverseMiddle:(NSString *)text {
	NSString *middle = [text substringWithRange:NSMakeRange(1, text.length - 2)];
	return [self reverse:middle];
}

- (NSString *)reverse:(NSString *)text {
	NSMutableString *reversedStr;
	NSInteger len = text.length;
	reversedStr = [NSMutableString stringWithCapacity:len];
	while (len > 0) {
		[reversedStr appendString:[NSString stringWithFormat:@"%C",[text characterAtIndex:--len]]];
	}
	return reversedStr;
}

@end
