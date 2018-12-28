//
//  AsyncOperaion.m
//  AsyncNSOperaion
//
//  Created by Cindy on 2018/12/28.
//  Copyright © 2018年 Cindy. All rights reserved.
//

#import "AsyncOperaion.h"
@interface AsyncOperaion()
{
    BOOL finished;
    BOOL executing;
    NSString* theurl;
}
@end

@implementation AsyncOperaion
   
- (instancetype)initWithUrl:(NSString*)url
{
    self = [super init];
    theurl = url;
    return self;
}
    
- (void)start
{
    [self main];
}
    
- (void)main
{
    //-----------start-----------
    NSURLRequest *request = [NSURLRequest requestWithURL:
                             [NSURL URLWithString:theurl]];
    
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {

        [self willChangeValueForKey:@"isExecuting"];
        self->executing = NO;
        [self didChangeValueForKey:@"isExecuting"];
        
        [self willChangeValueForKey:@"isFinished"];
        self->finished = YES;
        [self didChangeValueForKey:@"isFinished"];
        
    }];
    //------------end------------
}
 
- (BOOL)isAsynchronous
{
    return YES;
}

- (BOOL)isFinished
{
    return finished;
}

- (BOOL)isExecuting
{
    return executing;
}
    
@end
