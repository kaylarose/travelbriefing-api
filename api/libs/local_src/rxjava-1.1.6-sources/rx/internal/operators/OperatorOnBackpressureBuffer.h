//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorOnBackpressureBuffer.java
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

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOperatorOnBackpressureBuffer")
#ifdef RESTRICT_RxInternalOperatorsOperatorOnBackpressureBuffer
#define INCLUDE_ALL_RxInternalOperatorsOperatorOnBackpressureBuffer 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOperatorOnBackpressureBuffer 1
#endif
#undef RESTRICT_RxInternalOperatorsOperatorOnBackpressureBuffer

#if !defined (RxInternalOperatorsOperatorOnBackpressureBuffer_) && (INCLUDE_ALL_RxInternalOperatorsOperatorOnBackpressureBuffer || defined(INCLUDE_RxInternalOperatorsOperatorOnBackpressureBuffer))
#define RxInternalOperatorsOperatorOnBackpressureBuffer_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_Operator 1
#include "rx/Observable.h"

@class RxSubscriber;
@protocol RxBackpressureOverflow_Strategy;
@protocol RxFunctionsAction0;

@interface RxInternalOperatorsOperatorOnBackpressureBuffer : NSObject < RxObservable_Operator >

#pragma mark Public

/*!
 @brief Construct a new instance that will handle overflows with <code>ON_OVERFLOW_DEFAULT</code>, providing the
 following behavior config:
 @param capacity the max number of items to be admitted in the buffer, must be greater than 0.
 */
- (instancetype)initWithLong:(jlong)capacity;

/*!
 @brief Construct a new instance that will handle overflows with <code>ON_OVERFLOW_DEFAULT</code>, providing the
 following behavior config:
 @param capacity the max number of items to be admitted in the buffer, must be greater than 0.
 @param onOverflow the <code>Action0</code> to execute when the buffer overflows, may be null.
 */
- (instancetype)initWithLong:(jlong)capacity
      withRxFunctionsAction0:(id<RxFunctionsAction0>)onOverflow;

/*!
 @brief Construct a new instance feeding the following behavior config:
 @param capacity the max number of items to be admitted in the buffer, must be greater than 0.
 @param onOverflow the <code>Action0</code> to execute when the buffer overflows, may be null.
 @param overflowStrategy the <code>BackpressureOverflow.Strategy</code> to handle overflows, it must not be null.
 */
- (instancetype)initWithLong:(jlong)capacity
      withRxFunctionsAction0:(id<RxFunctionsAction0>)onOverflow
withRxBackpressureOverflow_Strategy:(id<RxBackpressureOverflow_Strategy>)overflowStrategy;

- (RxSubscriber *)callWithId:(RxSubscriber *)child;

+ (RxInternalOperatorsOperatorOnBackpressureBuffer *)instance;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorOnBackpressureBuffer)

FOUNDATION_EXPORT RxInternalOperatorsOperatorOnBackpressureBuffer *RxInternalOperatorsOperatorOnBackpressureBuffer_instance();

FOUNDATION_EXPORT void RxInternalOperatorsOperatorOnBackpressureBuffer_init(RxInternalOperatorsOperatorOnBackpressureBuffer *self);

FOUNDATION_EXPORT RxInternalOperatorsOperatorOnBackpressureBuffer *new_RxInternalOperatorsOperatorOnBackpressureBuffer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorOnBackpressureBuffer *create_RxInternalOperatorsOperatorOnBackpressureBuffer_init();

FOUNDATION_EXPORT void RxInternalOperatorsOperatorOnBackpressureBuffer_initWithLong_(RxInternalOperatorsOperatorOnBackpressureBuffer *self, jlong capacity);

FOUNDATION_EXPORT RxInternalOperatorsOperatorOnBackpressureBuffer *new_RxInternalOperatorsOperatorOnBackpressureBuffer_initWithLong_(jlong capacity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorOnBackpressureBuffer *create_RxInternalOperatorsOperatorOnBackpressureBuffer_initWithLong_(jlong capacity);

FOUNDATION_EXPORT void RxInternalOperatorsOperatorOnBackpressureBuffer_initWithLong_withRxFunctionsAction0_(RxInternalOperatorsOperatorOnBackpressureBuffer *self, jlong capacity, id<RxFunctionsAction0> onOverflow);

FOUNDATION_EXPORT RxInternalOperatorsOperatorOnBackpressureBuffer *new_RxInternalOperatorsOperatorOnBackpressureBuffer_initWithLong_withRxFunctionsAction0_(jlong capacity, id<RxFunctionsAction0> onOverflow) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorOnBackpressureBuffer *create_RxInternalOperatorsOperatorOnBackpressureBuffer_initWithLong_withRxFunctionsAction0_(jlong capacity, id<RxFunctionsAction0> onOverflow);

FOUNDATION_EXPORT void RxInternalOperatorsOperatorOnBackpressureBuffer_initWithLong_withRxFunctionsAction0_withRxBackpressureOverflow_Strategy_(RxInternalOperatorsOperatorOnBackpressureBuffer *self, jlong capacity, id<RxFunctionsAction0> onOverflow, id<RxBackpressureOverflow_Strategy> overflowStrategy);

FOUNDATION_EXPORT RxInternalOperatorsOperatorOnBackpressureBuffer *new_RxInternalOperatorsOperatorOnBackpressureBuffer_initWithLong_withRxFunctionsAction0_withRxBackpressureOverflow_Strategy_(jlong capacity, id<RxFunctionsAction0> onOverflow, id<RxBackpressureOverflow_Strategy> overflowStrategy) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorOnBackpressureBuffer *create_RxInternalOperatorsOperatorOnBackpressureBuffer_initWithLong_withRxFunctionsAction0_withRxBackpressureOverflow_Strategy_(jlong capacity, id<RxFunctionsAction0> onOverflow, id<RxBackpressureOverflow_Strategy> overflowStrategy);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorOnBackpressureBuffer)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOperatorOnBackpressureBuffer")