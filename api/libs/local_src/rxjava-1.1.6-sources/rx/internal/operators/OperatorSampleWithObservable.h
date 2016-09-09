//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorSampleWithObservable.java
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

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOperatorSampleWithObservable")
#ifdef RESTRICT_RxInternalOperatorsOperatorSampleWithObservable
#define INCLUDE_ALL_RxInternalOperatorsOperatorSampleWithObservable 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOperatorSampleWithObservable 1
#endif
#undef RESTRICT_RxInternalOperatorsOperatorSampleWithObservable

#if !defined (RxInternalOperatorsOperatorSampleWithObservable_) && (INCLUDE_ALL_RxInternalOperatorsOperatorSampleWithObservable || defined(INCLUDE_RxInternalOperatorsOperatorSampleWithObservable))
#define RxInternalOperatorsOperatorSampleWithObservable_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_Operator 1
#include "rx/Observable.h"

@class RxObservable;
@class RxSubscriber;

/*!
 @brief Sample with the help of another observable.
 - seealso: <a href="http://msdn.microsoft.com/en-us/library/hh229742.aspx">MSDN: Observable.Sample</a>
 */
@interface RxInternalOperatorsOperatorSampleWithObservable : NSObject < RxObservable_Operator > {
 @public
  RxObservable *sampler_;
}

+ (id)EMPTY_TOKEN;

#pragma mark Public

- (instancetype)initWithRxObservable:(RxObservable *)sampler;

- (RxSubscriber *)callWithId:(RxSubscriber *)child;

@end

J2OBJC_STATIC_INIT(RxInternalOperatorsOperatorSampleWithObservable)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorSampleWithObservable, sampler_, RxObservable *)

/*!
 @brief Indicates that no value is available.
 */
inline id RxInternalOperatorsOperatorSampleWithObservable_get_EMPTY_TOKEN();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id RxInternalOperatorsOperatorSampleWithObservable_EMPTY_TOKEN;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxInternalOperatorsOperatorSampleWithObservable, EMPTY_TOKEN, id)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorSampleWithObservable_initWithRxObservable_(RxInternalOperatorsOperatorSampleWithObservable *self, RxObservable *sampler);

FOUNDATION_EXPORT RxInternalOperatorsOperatorSampleWithObservable *new_RxInternalOperatorsOperatorSampleWithObservable_initWithRxObservable_(RxObservable *sampler) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorSampleWithObservable *create_RxInternalOperatorsOperatorSampleWithObservable_initWithRxObservable_(RxObservable *sampler);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorSampleWithObservable)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOperatorSampleWithObservable")