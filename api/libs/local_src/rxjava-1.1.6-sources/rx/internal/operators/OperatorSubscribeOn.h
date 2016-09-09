//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorSubscribeOn.java
//

/*!
 @brief Copyright 2014 Netflix, Inc.
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

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOperatorSubscribeOn")
#ifdef RESTRICT_RxInternalOperatorsOperatorSubscribeOn
#define INCLUDE_ALL_RxInternalOperatorsOperatorSubscribeOn 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOperatorSubscribeOn 1
#endif
#undef RESTRICT_RxInternalOperatorsOperatorSubscribeOn

#if !defined (RxInternalOperatorsOperatorSubscribeOn_) && (INCLUDE_ALL_RxInternalOperatorsOperatorSubscribeOn || defined(INCLUDE_RxInternalOperatorsOperatorSubscribeOn))
#define RxInternalOperatorsOperatorSubscribeOn_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_OnSubscribe 1
#include "rx/Observable.h"

@class RxObservable;
@class RxScheduler;
@class RxSubscriber;

/*!
 @brief Subscribes Observers on the specified <code>Scheduler</code>.
 <p>
 <img width="640" src="https://github.com/ReactiveX/RxJava/wiki/images/rx-operators/subscribeOn.png" alt="">
 */
@interface RxInternalOperatorsOperatorSubscribeOn : NSObject < RxObservable_OnSubscribe > {
 @public
  RxScheduler *scheduler_;
  RxObservable *source_;
}

#pragma mark Public

- (instancetype)initWithRxObservable:(RxObservable *)source
                     withRxScheduler:(RxScheduler *)scheduler;

- (void)callWithId:(RxSubscriber *)subscriber;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorSubscribeOn)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorSubscribeOn, scheduler_, RxScheduler *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorSubscribeOn, source_, RxObservable *)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorSubscribeOn_initWithRxObservable_withRxScheduler_(RxInternalOperatorsOperatorSubscribeOn *self, RxObservable *source, RxScheduler *scheduler);

FOUNDATION_EXPORT RxInternalOperatorsOperatorSubscribeOn *new_RxInternalOperatorsOperatorSubscribeOn_initWithRxObservable_withRxScheduler_(RxObservable *source, RxScheduler *scheduler) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorSubscribeOn *create_RxInternalOperatorsOperatorSubscribeOn_initWithRxObservable_withRxScheduler_(RxObservable *source, RxScheduler *scheduler);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorSubscribeOn)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOperatorSubscribeOn")
