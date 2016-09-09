//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorTakeTimed.java
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

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOperatorTakeTimed")
#ifdef RESTRICT_RxInternalOperatorsOperatorTakeTimed
#define INCLUDE_ALL_RxInternalOperatorsOperatorTakeTimed 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOperatorTakeTimed 1
#endif
#undef RESTRICT_RxInternalOperatorsOperatorTakeTimed

#if !defined (RxInternalOperatorsOperatorTakeTimed_) && (INCLUDE_ALL_RxInternalOperatorsOperatorTakeTimed || defined(INCLUDE_RxInternalOperatorsOperatorTakeTimed))
#define RxInternalOperatorsOperatorTakeTimed_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_Operator 1
#include "rx/Observable.h"

@class JavaUtilConcurrentTimeUnit;
@class RxScheduler;
@class RxSubscriber;

/*!
 @brief Takes values from the source until the specific time elapses.
 */
@interface RxInternalOperatorsOperatorTakeTimed : NSObject < RxObservable_Operator > {
 @public
  jlong time_;
  JavaUtilConcurrentTimeUnit *unit_;
  RxScheduler *scheduler_;
}

#pragma mark Public

- (instancetype)initWithLong:(jlong)time
withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit
             withRxScheduler:(RxScheduler *)scheduler;

- (RxSubscriber *)callWithId:(RxSubscriber *)child;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorTakeTimed)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorTakeTimed, unit_, JavaUtilConcurrentTimeUnit *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorTakeTimed, scheduler_, RxScheduler *)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorTakeTimed_initWithLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(RxInternalOperatorsOperatorTakeTimed *self, jlong time, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler);

FOUNDATION_EXPORT RxInternalOperatorsOperatorTakeTimed *new_RxInternalOperatorsOperatorTakeTimed_initWithLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(jlong time, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorTakeTimed *create_RxInternalOperatorsOperatorTakeTimed_initWithLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(jlong time, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorTakeTimed)

#endif

#if !defined (RxInternalOperatorsOperatorTakeTimed_TakeSubscriber_) && (INCLUDE_ALL_RxInternalOperatorsOperatorTakeTimed || defined(INCLUDE_RxInternalOperatorsOperatorTakeTimed_TakeSubscriber))
#define RxInternalOperatorsOperatorTakeTimed_TakeSubscriber_

#define RESTRICT_RxSubscriber 1
#define INCLUDE_RxSubscriber 1
#include "rx/Subscriber.h"

#define RESTRICT_RxFunctionsAction0 1
#define INCLUDE_RxFunctionsAction0 1
#include "rx/functions/Action0.h"

/*!
 @brief Subscribed to source and scheduled on a worker.
 */
@interface RxInternalOperatorsOperatorTakeTimed_TakeSubscriber : RxSubscriber < RxFunctionsAction0 > {
 @public
  RxSubscriber *child_;
}

#pragma mark Public

- (instancetype)initWithRxSubscriber:(RxSubscriber *)child;

- (void)call;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)t;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorTakeTimed_TakeSubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorTakeTimed_TakeSubscriber, child_, RxSubscriber *)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorTakeTimed_TakeSubscriber_initWithRxSubscriber_(RxInternalOperatorsOperatorTakeTimed_TakeSubscriber *self, RxSubscriber *child);

FOUNDATION_EXPORT RxInternalOperatorsOperatorTakeTimed_TakeSubscriber *new_RxInternalOperatorsOperatorTakeTimed_TakeSubscriber_initWithRxSubscriber_(RxSubscriber *child) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorTakeTimed_TakeSubscriber *create_RxInternalOperatorsOperatorTakeTimed_TakeSubscriber_initWithRxSubscriber_(RxSubscriber *child);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorTakeTimed_TakeSubscriber)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOperatorTakeTimed")
