//
//  NSString+EZChineseText.m
//  Easydict
//
//  Created by tisfeng on 2023/5/4.
//  Copyright © 2023 izual. All rights reserved.
//

#import "NSString+EZChineseText.h"

@implementation NSString (EZChineseText)

/// Convert Simplified Chinese to Traditional Chinese.  开门 --> 開門
- (NSString *)toTraditionalChineseText {
    NSString *traditionalChinese = [self stringByApplyingTransform:@"Hans-Hant" reverse:NO];
    return traditionalChinese;
}

/// Convert Traditional Chinese to Simplified Chinese.  開門 --> 开门
- (NSString *)toSimplifiedChineseText {
    NSString *simplifiedChinese = [self stringByApplyingTransform:@"Hant-Hans" reverse:NO];
    return simplifiedChinese;
}

/// Is simplified Chinese.
/// !!!: Characters in the text must be all simplified Chinese, otherwise it will return NO.
- (BOOL)isSimplifiedChinese {
    NSString *simplifiedChinese = [self toSimplifiedChineseText];
    if ([simplifiedChinese isEqualToString:self]) {
        return YES;
    }
    return NO;
}

/// Is traditional Chinese.
/// !!!: Characters in the text must be all traditional Chinese, otherwise it will return NO.
- (BOOL)isTraditionalChinese {
    NSString *traditionalChinese = [self toTraditionalChineseText];
    if ([traditionalChinese isEqualToString:self]) {
        return YES;
    }
    return NO;
}

@end
