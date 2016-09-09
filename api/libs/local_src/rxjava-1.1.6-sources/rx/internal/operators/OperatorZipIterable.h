//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorZipIterable.java
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

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOperatorZipIterable")
#ifdef RESTRICT_RxInternalOperatorsOperatorZipIterable
#define INCLUDE_ALL_RxInternalOperatorsOperatorZipIterable 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOperatorZipIterable 1
#endif
#undef RESTRICT_RxInternalOperatorsOperatorZipIterable

#if !defined (RxInternalOperatorsOperatorZipIterable_) && (INCLUDE_ALL_RxInternalOperatorsOperatorZipIterable || defined(INCLUDE_RxInternalOperatorsOperatorZipIterable))
#define RxInternalOperatorsOperatorZipIterable_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_Operator 1
#include "rx/Observable.h"

@class RxSubscriber;
@protocol JavaLangIterable;
@protocol RxFunctionsFunc2;

@interface RxInternalOperatorsOperatorZipIterable : NSObject < RxObservable_Operator > {
 @public
  id<JavaLangIterable> iterable_;
  id<RxFunctionsFunc2> zipFunction_;
}

#pragma mark Public

- (instancetype)initWithJavaLangIterable:(id<JavaLangIterable>)iterable
                    withRxFunctionsFunc2:(id<RxFunctionsFunc2>)zipFunction;

- (RxSubscriber *)callWithId:(RxSubscriber *)subscriber;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorZipIterable)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorZipIterable, iterable_, id<JavaLangIterable>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorZipIterable, zipFunction_, id<RxFunctionsFunc2>)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorZipIterable_initWithJavaLangIterable_withRxFunctionsFunc2_(RxInternalOperatorsOperatorZipIterable *self, id<JavaLangIterable> iterable, id<RxFunctionsFunc2> zipFunction);

FOUNDATION_EXPORT RxInternalOperatorsOperatorZipIterable *new_RxInternalOperatorsOperatorZipIterable_initWithJavaLangIterable_withRxFunctionsFunc2_(id<JavaLangIterable> iterable, id<RxFunctionsFunc2> zipFunction) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorZipIterable *create_RxInternalOperatorsOperatorZipIterable_initWithJavaLangIterable_withRxFunctionsFunc2_(id<JavaLangIterable> iterable, id<RxFunctionsFunc2> zipFunction);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorZipIterable)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOperatorZipIterable")
