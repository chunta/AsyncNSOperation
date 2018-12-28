//
//  AsyncOperaion.h
//  AsyncNSOperaion
//
//  Created by Cindy on 2018/12/28.
//  Copyright © 2018年 Cindy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AsyncOperaion : NSOperation
    - (instancetype)initWithUrl:(NSString*)url;
@end

NS_ASSUME_NONNULL_END
