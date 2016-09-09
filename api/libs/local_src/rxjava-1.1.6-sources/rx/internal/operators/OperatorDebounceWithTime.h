//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorDebounceWithTime.java
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

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOperatorDebounceWithTime")
#ifdef RESTRICT_RxInternalOperatorsOperatorDebounceWithTime
#define INCLUDE_ALL_RxInternalOperatorsOperatorDebounceWithTime 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOperatorDebounceWithTime 1
#endif
#undef RESTRICT_RxInternalOperatorsOperatorDebounceWithTime

#if !defined (RxInternalOperatorsOperatorDebounceWithTime_) && (INCLUDE_ALL_RxInternalOperatorsOperatorDebounceWithTime || defined(INCLUDE_RxInternalOperatorsOperatorDebounceWithTime))
#define RxInternalOperatorsOperatorDebounceWithTime_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_Operator 1
#include "rx/Observable.h"

@class JavaUtilConcurrentTimeUnit;
@class RxScheduler;
@class RxSubscriber;

/*!
 @brief This operation filters out events which are published too quickly in succession.
 This is done by dropping events which are
 followed up by other events before a specified timer has expired. If the timer expires and no follow up event was published (yet)
 the last received event is published.
 */
@interface RxInternalOperatorsOperatorDebounceWithTime : NSObject < RxObservable_Operator > {
 @public
  jlong timeout_;
  JavaUtilConcurrentTimeUnit *unit_;
  RxScheduler *scheduler_;
}

#pragma mark Public

/*!
 @param timeout
 How long each event has to be the 'last event' before it gets published.
 @param unit
 The unit of time for the specified timeout.
 @param scheduler
 The <code>Scheduler</code> to use internally to manage the timers which handle timeout for each event.
 */
- (instancetype)initWithLong:(jlong)timeout
withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit
             withRxScheduler:(RxScheduler *)scheduler;

- (RxSubscriber *)callWithId:(RxSubscriber *)child;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorDebounceWithTime)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorDebounceWithTime, unit_, JavaUtilConcurrentTimeUnit *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorDebounceWithTime, scheduler_, RxScheduler *)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorDebounceWithTime_initWithLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(RxInternalOperatorsOperatorDebounceWithTime *self, jlong timeout, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler);

FOUNDATION_EXPORT RxInternalOperatorsOperatorDebounceWithTime *new_RxInternalOperatorsOperatorDebounceWithTime_initWithLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(jlong timeout, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorDebounceWithTime *create_RxInternalOperatorsOperatorDebounceWithTime_initWithLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(jlong timeout, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorDebounceWithTime)

#endif

#if !defined (RxInternalOperatorsOperatorDebounceWithTime_DebounceState_) && (INCLUDE_ALL_RxInternalOperatorsOperatorDebounceWithTime || defined(INCLUDE_RxInternalOperatorsOperatorDebounceWithTime_DebounceState))
#define RxInternalOperatorsOperatorDebounceWithTime_DebounceState_

@class RxSubscriber;

/*!
 @brief Tracks the last value to be emitted and manages completion.
 */
@interface RxInternalOperatorsOperatorDebounceWithTime_DebounceState : NSObject {
 @public
  /*!
   @brief Guarded by this.
   */
  jint index_;
  /*!
   @brief Guarded by this.
   */
  id value_;
  /*!
   @brief Guarded by this.
   */
  jboolean hasValue_;
  /*!
   @brief Guarded by this.
   */
  jboolean terminate_;
  /*!
   @brief Guarded by this.
   */
  jboolean emitting_;
}

#pragma mark Public

- (void)clear;

- (void)emitWithInt:(jint)index
   withRxSubscriber:(RxSubscriber *)onNextAndComplete
   withRxSubscriber:(RxSubscriber *)onError;

- (void)emitAndCompleteWithRxSubscriber:(RxSubscriber *)onNextAndComplete
                       withRxSubscriber:(RxSubscriber *)onError;

- (jint)nextWithId:(id)value;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorDebounceWithTime_DebounceState)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorDebounceWithTime_DebounceState, value_, id)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorDebounceWithTime_DebounceState_init(RxInternalOperatorsOperatorDebounceWithTime_DebounceState *self);

FOUNDATION_EXPORT RxInternalOperatorsOperatorDebounceWithTime_DebounceState *new_RxInternalOperatorsOperatorDebounceWithTime_DebounceState_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorDebounceWithTime_DebounceState *create_RxInternalOperatorsOperatorDebounceWithTime_DebounceState_init();

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorDebounceWithTime_DebounceState)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOperatorDebounceWithTime")