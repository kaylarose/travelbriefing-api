//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/observers/SafeCompletableSubscriber.java
//

/*!
 @brief Copyright 2016 Netflix, Inc.
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 http://www.apache.org/licenses/LICENSE-2.0
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxObserversSafeCompletableSubscriber")
#ifdef RESTRICT_RxObserversSafeCompletableSubscriber
#define INCLUDE_ALL_RxObserversSafeCompletableSubscriber 0
#else
#define INCLUDE_ALL_RxObserversSafeCompletableSubscriber 1
#endif
#undef RESTRICT_RxObserversSafeCompletableSubscriber

#if !defined (RxObserversSafeCompletableSubscriber_) && (INCLUDE_ALL_RxObserversSafeCompletableSubscriber || defined(INCLUDE_RxObserversSafeCompletableSubscriber))
#define RxObserversSafeCompletableSubscriber_

#define RESTRICT_RxCompletable 1
#define INCLUDE_RxCompletable_CompletableSubscriber 1
#include "rx/Completable.h"

#define RESTRICT_RxSubscription 1
#define INCLUDE_RxSubscription 1
#include "rx/Subscription.h"

/*!
 @brief Wraps another CompletableSubscriber and handles exceptions thrown
 from onError and onCompleted.
 @since (if this graduates from Experimental/Beta to supported, replace this parenthetical with the release number)
 */
@interface RxObserversSafeCompletableSubscriber : NSObject < RxCompletable_CompletableSubscriber, RxSubscription > {
 @public
  id<RxCompletable_CompletableSubscriber> actual_;
  id<RxSubscription> s_;
  jboolean done_;
}

#pragma mark Public

- (instancetype)initWithRxCompletable_CompletableSubscriber:(id<RxCompletable_CompletableSubscriber>)actual;

- (jboolean)isUnsubscribed;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onSubscribeWithRxSubscription:(id<RxSubscription>)d;

- (void)unsubscribe;

@end

J2OBJC_EMPTY_STATIC_INIT(RxObserversSafeCompletableSubscriber)

J2OBJC_FIELD_SETTER(RxObserversSafeCompletableSubscriber, actual_, id<RxCompletable_CompletableSubscriber>)
J2OBJC_FIELD_SETTER(RxObserversSafeCompletableSubscriber, s_, id<RxSubscription>)

FOUNDATION_EXPORT void RxObserversSafeCompletableSubscriber_initWithRxCompletable_CompletableSubscriber_(RxObserversSafeCompletableSubscriber *self, id<RxCompletable_CompletableSubscriber> actual);

FOUNDATION_EXPORT RxObserversSafeCompletableSubscriber *new_RxObserversSafeCompletableSubscriber_initWithRxCompletable_CompletableSubscriber_(id<RxCompletable_CompletableSubscriber> actual) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxObserversSafeCompletableSubscriber *create_RxObserversSafeCompletableSubscriber_initWithRxCompletable_CompletableSubscriber_(id<RxCompletable_CompletableSubscriber> actual);

J2OBJC_TYPE_LITERAL_HEADER(RxObserversSafeCompletableSubscriber)

#endif

#pragma pop_macro("INCLUDE_ALL_RxObserversSafeCompletableSubscriber")
