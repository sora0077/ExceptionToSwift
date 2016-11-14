//
//  ExceptionHandler.h
//  ExceptionToSwift
//
//  Created by 林達也 on 2016/11/14.
//  Copyright © 2016年 jp.sora0077. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ExceptionHandler : NSObject
+ (BOOL)catchObjCExceptionWithTryBlock:(NS_NOESCAPE void(^ _Nonnull)())tryBlock error:(NSError * _Nullable __autoreleasing * _Nullable)error;
+ (BOOL)catchCExceptionWithTryBlock:(NS_NOESCAPE void(^ _Nonnull)())tryBlock error:(NSError * _Nullable __autoreleasing * _Nullable)error;
@end
