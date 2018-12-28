//
//  ViewController.m
//  AsyncNSOperaion
//
//  Created by Cindy on 2018/12/28.
//  Copyright © 2018年 Cindy. All rights reserved.
//

#import "ViewController.h"
#import "AsyncOperaion.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    NSOperationQueue *queue = [NSOperationQueue new];
    queue.maxConcurrentOperationCount = 1;
    
    AsyncOperaion *aopt01 = [[AsyncOperaion alloc] initWithUrl:@"https://apple.com"];
    AsyncOperaion *aopt02 = [[AsyncOperaion alloc] initWithUrl:@"https://www.bbc.com"];
    
    NSBlockOperation *op2 = [NSBlockOperation blockOperationWithBlock:^{
        for (int i = 0; i < 2; ++i) {
            NSLog(@"2-----%@", [NSThread currentThread]);
        }
        
    }];
   
    [queue addOperation:aopt01];
    [queue addOperation:aopt02];
    [queue addOperation:op2];
    

    
}


@end
