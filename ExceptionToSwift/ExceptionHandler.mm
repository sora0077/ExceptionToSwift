//
//  ExceptionHandler.m
//  ExceptionToSwift
//
//  Created by 林達也 on 2016/11/14.
//  Copyright © 2016年 jp.sora0077. All rights reserved.
//

#import "ExceptionHandler.h"
#import <stdexcept>


@implementation ExceptionHandler

+ (BOOL)catchObjCExceptionWithTryBlock:(void (^)())tryBlock error:(NSError *__autoreleasing  _Nullable *)error
{
    @try {
        tryBlock();
        return YES;
    } @catch (NSException *exception) {
        *error = [NSError errorWithDomain:exception.name code:-9999 userInfo:exception.userInfo];
        return NO;
    } @catch (...) {
        
        return NO;
    }
}


+ (BOOL)catchCExceptionWithTryBlock:(void (^)())tryBlock error:(NSError *__autoreleasing  _Nullable *)error
{
    try {
        tryBlock();
        return YES;
    }
    catch(const std::exception & e) {
        *error = [NSError errorWithDomain:[NSString stringWithUTF8String:e.what()] code:-9999 userInfo:nil];
        return NO;
    }
}

@end
