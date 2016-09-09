//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorAll.java
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

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOperatorAll")
#ifdef RESTRICT_RxInternalOperatorsOperatorAll
#define INCLUDE_ALL_RxInternalOperatorsOperatorAll 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOperatorAll 1
#endif
#undef RESTRICT_RxInternalOperatorsOperatorAll

#if !defined (RxInternalOperatorsOperatorAll_) && (INCLUDE_ALL_RxInternalOperatorsOperatorAll || defined(INCLUDE_RxInternalOperatorsOperatorAll))
#define RxInternalOperatorsOperatorAll_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_Operator 1
#include "rx/Observable.h"

@class RxSubscriber;
@protocol RxFunctionsFunc1;

/*!
 @brief Returns an Observable that emits a Boolean that indicates whether all items emitted by an
 Observable satisfy a condition.
 <p>
 <img width="640" src="https://github.com/ReactiveX/RxJava/wiki/images/rx-operators/all.png" alt="">
 */
@interface RxInternalOperatorsOperatorAll : NSObject < RxObservable_Operator > {
 @public
  id<RxFunctionsFunc1> predicate_;
}

#pragma mark Public

- (instancetype)initWithRxFunctionsFunc1:(id<RxFunctionsFunc1>)predicate;

- (RxSubscriber *)callWithId:(RxSubscriber *)child;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorAll)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorAll, predicate_, id<RxFunctionsFunc1>)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorAll_initWithRxFunctionsFunc1_(RxInternalOperatorsOperatorAll *self, id<RxFunctionsFunc1> predicate);

FOUNDATION_EXPORT RxInternalOperatorsOperatorAll *new_RxInternalOperatorsOperatorAll_initWithRxFunctionsFunc1_(id<RxFunctionsFunc1> predicate) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorAll *create_RxInternalOperatorsOperatorAll_initWithRxFunctionsFunc1_(id<RxFunctionsFunc1> predicate);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorAll)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOperatorAll")
