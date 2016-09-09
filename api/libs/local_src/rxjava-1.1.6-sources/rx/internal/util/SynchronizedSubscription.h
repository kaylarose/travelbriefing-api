//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/util/SynchronizedSubscription.java
//

/*!
 @brief Copyright 2014 Netflix, Inc.
 Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in
 compliance with the License. You may obtain a copy of the License at
 http://www.apache.org/licenses/LICENSE-2.0
 Unless required by applicable law or agreed to in writing, software distributed under the License is
 distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See
 the License for the specific language governing permissions and limitations under the License.
 */
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalUtilSynchronizedSubscription")
#ifdef RESTRICT_RxInternalUtilSynchronizedSubscription
#define INCLUDE_ALL_RxInternalUtilSynchronizedSubscription 0
#else
#define INCLUDE_ALL_RxInternalUtilSynchronizedSubscription 1
#endif
#undef RESTRICT_RxInternalUtilSynchronizedSubscription

#if !defined (RxInternalUtilSynchronizedSubscription_) && (INCLUDE_ALL_RxInternalUtilSynchronizedSubscription || defined(INCLUDE_RxInternalUtilSynchronizedSubscription))
#define RxInternalUtilSynchronizedSubscription_

#define RESTRICT_RxSubscription 1
#define INCLUDE_RxSubscription 1
#include "rx/Subscription.h"

@interface RxInternalUtilSynchronizedSubscription : NSObject < RxSubscription >

#pragma mark Public

- (instancetype)initWithRxSubscription:(id<RxSubscription>)s;

- (jboolean)isUnsubscribed;

- (void)unsubscribe;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalUtilSynchronizedSubscription)

FOUNDATION_EXPORT void RxInternalUtilSynchronizedSubscription_initWithRxSubscription_(RxInternalUtilSynchronizedSubscription *self, id<RxSubscription> s);

FOUNDATION_EXPORT RxInternalUtilSynchronizedSubscription *new_RxInternalUtilSynchronizedSubscription_initWithRxSubscription_(id<RxSubscription> s) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalUtilSynchronizedSubscription *create_RxInternalUtilSynchronizedSubscription_initWithRxSubscription_(id<RxSubscription> s);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalUtilSynchronizedSubscription)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalUtilSynchronizedSubscription")