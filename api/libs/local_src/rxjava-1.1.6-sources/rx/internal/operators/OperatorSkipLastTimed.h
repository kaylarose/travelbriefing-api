//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorSkipLastTimed.java
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

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOperatorSkipLastTimed")
#ifdef RESTRICT_RxInternalOperatorsOperatorSkipLastTimed
#define INCLUDE_ALL_RxInternalOperatorsOperatorSkipLastTimed 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOperatorSkipLastTimed 1
#endif
#undef RESTRICT_RxInternalOperatorsOperatorSkipLastTimed

#if !defined (RxInternalOperatorsOperatorSkipLastTimed_) && (INCLUDE_ALL_RxInternalOperatorsOperatorSkipLastTimed || defined(INCLUDE_RxInternalOperatorsOperatorSkipLastTimed))
#define RxInternalOperatorsOperatorSkipLastTimed_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_Operator 1
#include "rx/Observable.h"

@class JavaUtilConcurrentTimeUnit;
@class RxScheduler;
@class RxSubscriber;

/*!
 @brief Skip delivering values in the time window before the values.
 */
@interface RxInternalOperatorsOperatorSkipLastTimed : NSObject < RxObservable_Operator > {
 @public
  jlong timeInMillis_;
  RxScheduler *scheduler_;
}

#pragma mark Public

- (instancetype)initWithLong:(jlong)time
withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit
             withRxScheduler:(RxScheduler *)scheduler;

- (RxSubscriber *)callWithId:(RxSubscriber *)subscriber;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorSkipLastTimed)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorSkipLastTimed, scheduler_, RxScheduler *)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorSkipLastTimed_initWithLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(RxInternalOperatorsOperatorSkipLastTimed *self, jlong time, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler);

FOUNDATION_EXPORT RxInternalOperatorsOperatorSkipLastTimed *new_RxInternalOperatorsOperatorSkipLastTimed_initWithLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(jlong time, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorSkipLastTimed *create_RxInternalOperatorsOperatorSkipLastTimed_initWithLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(jlong time, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorSkipLastTimed)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOperatorSkipLastTimed")