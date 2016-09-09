//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OnSubscribeDefer.java
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

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOnSubscribeDefer")
#ifdef RESTRICT_RxInternalOperatorsOnSubscribeDefer
#define INCLUDE_ALL_RxInternalOperatorsOnSubscribeDefer 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOnSubscribeDefer 1
#endif
#undef RESTRICT_RxInternalOperatorsOnSubscribeDefer

#if !defined (RxInternalOperatorsOnSubscribeDefer_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeDefer || defined(INCLUDE_RxInternalOperatorsOnSubscribeDefer))
#define RxInternalOperatorsOnSubscribeDefer_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_OnSubscribe 1
#include "rx/Observable.h"

@class RxSubscriber;
@protocol RxFunctionsFunc0;

/*!
 @brief Do not create the Observable until an Observer subscribes; create a fresh Observable on each
 subscription.
 <p>
 <img width="640" src="https://github.com/ReactiveX/RxJava/wiki/images/rx-operators/defer.png" alt="">
 <p>
 Pass defer an Observable factory function (a function that generates Observables), and defer will
 return an Observable that will call this function to generate its Observable sequence afresh
 each time a new Observer subscribes.
 */
@interface RxInternalOperatorsOnSubscribeDefer : NSObject < RxObservable_OnSubscribe > {
 @public
  id<RxFunctionsFunc0> observableFactory_;
}

#pragma mark Public

- (instancetype)initWithRxFunctionsFunc0:(id<RxFunctionsFunc0>)observableFactory;

- (void)callWithId:(RxSubscriber *)s;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeDefer)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeDefer, observableFactory_, id<RxFunctionsFunc0>)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeDefer_initWithRxFunctionsFunc0_(RxInternalOperatorsOnSubscribeDefer *self, id<RxFunctionsFunc0> observableFactory);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeDefer *new_RxInternalOperatorsOnSubscribeDefer_initWithRxFunctionsFunc0_(id<RxFunctionsFunc0> observableFactory) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeDefer *create_RxInternalOperatorsOnSubscribeDefer_initWithRxFunctionsFunc0_(id<RxFunctionsFunc0> observableFactory);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeDefer)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOnSubscribeDefer")
