//
//  EZOpenAIService.h
//  Easydict
//
//  Created by tisfeng on 2023/2/24.
//  Copyright © 2023 izual. All rights reserved.
//

#import "EZQueryService.h"

NS_ASSUME_NONNULL_BEGIN

static NSString *EZOpenAIAPIKey = @"EZOpenAIAPIKey";
static NSString *EZOpenAITranslationKey = @"EZOpenAITranslationKey";
static NSString *EZOpenAIDictionaryKey = @"EZOpenAIDictionaryKey";
static NSString *EZOpenAISentenceKey = @"EZOpenAISentenceKey";

static NSString *EZOpenAIServiceUsageStatusKey = @"EZOpenAIServiceUsageStatusKey";

static NSString *EZOpenAIDomainKey = @"EZOpenAIDomainKey";
static NSString *EZOpenAIModelKey = @"EZOpenAIModelKey";

@interface EZOpenAIService : EZQueryService

@end

NS_ASSUME_NONNULL_END
