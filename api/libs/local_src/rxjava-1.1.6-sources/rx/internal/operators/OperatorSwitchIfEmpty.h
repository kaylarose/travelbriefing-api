//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorSwitchIfEmpty.java
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

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOperatorSwitchIfEmpty")
#ifdef RESTRICT_RxInternalOperatorsOperatorSwitchIfEmpty
#define INCLUDE_ALL_RxInternalOperatorsOperatorSwitchIfEmpty 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOperatorSwitchIfEmpty 1
#endif
#undef RESTRICT_RxInternalOperatorsOperatorSwitchIfEmpty

#if !defined (RxInternalOperatorsOperatorSwitchIfEmpty_) && (INCLUDE_ALL_RxInternalOperatorsOperatorSwitchIfEmpty || defined(INCLUDE_RxInternalOperatorsOperatorSwitchIfEmpty))
#define RxInternalOperatorsOperatorSwitchIfEmpty_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_Operator 1
#include "rx/Observable.h"

@class RxObservable;
@class RxSubscriber;

/*!
 @brief If the Observable completes without emitting any items, subscribe to an alternate Observable.
 Allows for similar
 functionality to <code>rx.internal.operators.OperatorDefaultIfEmpty</code> except instead of one item being emitted when
 empty, the results of the given Observable will be emitted.
 */
@interface RxInternalOperatorsOperatorSwitchIfEmpty : NSObject < RxObservable_Operator >

#pragma mark Public

- (instancetype)initWithRxObservable:(RxObservable *)alternate;

- (RxSubscriber *)callWithId:(RxSubscriber *)child;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorSwitchIfEmpty)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorSwitchIfEmpty_initWithRxObservable_(RxInternalOperatorsOperatorSwitchIfEmpty *self, RxObservable *alternate);

FOUNDATION_EXPORT RxInternalOperatorsOperatorSwitchIfEmpty *new_RxInternalOperatorsOperatorSwitchIfEmpty_initWithRxObservable_(RxObservable *alternate) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorSwitchIfEmpty *create_RxInternalOperatorsOperatorSwitchIfEmpty_initWithRxObservable_(RxObservable *alternate);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorSwitchIfEmpty)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOperatorSwitchIfEmpty")
