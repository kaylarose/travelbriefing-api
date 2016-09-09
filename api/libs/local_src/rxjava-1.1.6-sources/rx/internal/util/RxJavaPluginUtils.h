//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/util/RxJavaPluginUtils.java
//

/*!
 @brief Copyright 2014 Netflix, Inc.
 Licensed under the Apache License, Version 2.0 (the "License"); you may not
 use this file except in compliance with the License. You may obtain a copy of
 the License at
 http://www.apache.org/licenses/LICENSE-2.0
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 License for the specific language governing permissions and limitations under
 the License.
 */
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalUtilRxJavaPluginUtils")
#ifdef RESTRICT_RxInternalUtilRxJavaPluginUtils
#define INCLUDE_ALL_RxInternalUtilRxJavaPluginUtils 0
#else
#define INCLUDE_ALL_RxInternalUtilRxJavaPluginUtils 1
#endif
#undef RESTRICT_RxInternalUtilRxJavaPluginUtils

#if !defined (RxInternalUtilRxJavaPluginUtils_) && (INCLUDE_ALL_RxInternalUtilRxJavaPluginUtils || defined(INCLUDE_RxInternalUtilRxJavaPluginUtils))
#define RxInternalUtilRxJavaPluginUtils_

@interface RxInternalUtilRxJavaPluginUtils : NSObject

#pragma mark Public

- (instancetype)init;

+ (void)handleExceptionWithNSException:(NSException *)e;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalUtilRxJavaPluginUtils)

FOUNDATION_EXPORT void RxInternalUtilRxJavaPluginUtils_handleExceptionWithNSException_(NSException *e);

FOUNDATION_EXPORT void RxInternalUtilRxJavaPluginUtils_init(RxInternalUtilRxJavaPluginUtils *self);

FOUNDATION_EXPORT RxInternalUtilRxJavaPluginUtils *new_RxInternalUtilRxJavaPluginUtils_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalUtilRxJavaPluginUtils *create_RxInternalUtilRxJavaPluginUtils_init();

J2OBJC_TYPE_LITERAL_HEADER(RxInternalUtilRxJavaPluginUtils)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalUtilRxJavaPluginUtils")
