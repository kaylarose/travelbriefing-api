//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorOnErrorResumeNextViaFunction.java
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

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOperatorOnErrorResumeNextViaFunction")
#ifdef RESTRICT_RxInternalOperatorsOperatorOnErrorResumeNextViaFunction
#define INCLUDE_ALL_RxInternalOperatorsOperatorOnErrorResumeNextViaFunction 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOperatorOnErrorResumeNextViaFunction 1
#endif
#undef RESTRICT_RxInternalOperatorsOperatorOnErrorResumeNextViaFunction

#if !defined (RxInternalOperatorsOperatorOnErrorResumeNextViaFunction_) && (INCLUDE_ALL_RxInternalOperatorsOperatorOnErrorResumeNextViaFunction || defined(INCLUDE_RxInternalOperatorsOperatorOnErrorResumeNextViaFunction))
#define RxInternalOperatorsOperatorOnErrorResumeNextViaFunction_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_Operator 1
#include "rx/Observable.h"

@class RxObservable;
@class RxSubscriber;
@protocol RxFunctionsFunc1;

/*!
 @brief Instruct an Observable to pass control to another Observable (the return value of a function)
 rather than invoking <code>onError</code> if it encounters an error.
 <p>
 <img width="640" src="https://github.com/ReactiveX/RxJava/wiki/images/rx-operators/onErrorResumeNext.png" alt="">
 <p>
 By default, when an Observable encounters an error that prevents it from emitting the expected item to its
 Observer, the Observable invokes its Observer's <code>onError</code> method, and then quits without invoking any
 more of its Observer's methods. The <code>onErrorResumeNext</code> operation changes this behavior. If you pass a
 function that returns an Observable (<code>resumeFunction</code>) to <code>onErrorResumeNext</code>, if the source
 Observable encounters an error, instead of invoking its Observer's <code>onError</code> method, it will instead
 relinquish control to this new Observable, which will invoke the Observer's <code>onNext</code> method if it is
 able to do so. In such a case, because no Observable necessarily invokes <code>onError</code>, the Observer may
 never know that an error happened.
 <p>
 You can use this to prevent errors from propagating or to supply fallback data should errors be
 encountered.
 */
@interface RxInternalOperatorsOperatorOnErrorResumeNextViaFunction : NSObject < RxObservable_Operator > {
 @public
  id<RxFunctionsFunc1> resumeFunction_;
}

#pragma mark Public

- (instancetype)initWithRxFunctionsFunc1:(id<RxFunctionsFunc1>)f;

- (RxSubscriber *)callWithId:(RxSubscriber *)child;

+ (RxInternalOperatorsOperatorOnErrorResumeNextViaFunction *)withExceptionWithRxObservable:(RxObservable *)other;

+ (RxInternalOperatorsOperatorOnErrorResumeNextViaFunction *)withOtherWithRxObservable:(RxObservable *)other;

+ (RxInternalOperatorsOperatorOnErrorResumeNextViaFunction *)withSingleWithRxFunctionsFunc1:(id<RxFunctionsFunc1>)resumeFunction;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorOnErrorResumeNextViaFunction)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorOnErrorResumeNextViaFunction, resumeFunction_, id<RxFunctionsFunc1>)

FOUNDATION_EXPORT RxInternalOperatorsOperatorOnErrorResumeNextViaFunction *RxInternalOperatorsOperatorOnErrorResumeNextViaFunction_withSingleWithRxFunctionsFunc1_(id<RxFunctionsFunc1> resumeFunction);

FOUNDATION_EXPORT RxInternalOperatorsOperatorOnErrorResumeNextViaFunction *RxInternalOperatorsOperatorOnErrorResumeNextViaFunction_withOtherWithRxObservable_(RxObservable *other);

FOUNDATION_EXPORT RxInternalOperatorsOperatorOnErrorResumeNextViaFunction *RxInternalOperatorsOperatorOnErrorResumeNextViaFunction_withExceptionWithRxObservable_(RxObservable *other);

FOUNDATION_EXPORT void RxInternalOperatorsOperatorOnErrorResumeNextViaFunction_initWithRxFunctionsFunc1_(RxInternalOperatorsOperatorOnErrorResumeNextViaFunction *self, id<RxFunctionsFunc1> f);

FOUNDATION_EXPORT RxInternalOperatorsOperatorOnErrorResumeNextViaFunction *new_RxInternalOperatorsOperatorOnErrorResumeNextViaFunction_initWithRxFunctionsFunc1_(id<RxFunctionsFunc1> f) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorOnErrorResumeNextViaFunction *create_RxInternalOperatorsOperatorOnErrorResumeNextViaFunction_initWithRxFunctionsFunc1_(id<RxFunctionsFunc1> f);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorOnErrorResumeNextViaFunction)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOperatorOnErrorResumeNextViaFunction")