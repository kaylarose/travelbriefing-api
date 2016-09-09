//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/observers/Observers.java
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

#pragma push_macro("INCLUDE_ALL_RxObserversObservers")
#ifdef RESTRICT_RxObserversObservers
#define INCLUDE_ALL_RxObserversObservers 0
#else
#define INCLUDE_ALL_RxObserversObservers 1
#endif
#undef RESTRICT_RxObserversObservers

#if !defined (RxObserversObservers_) && (INCLUDE_ALL_RxObserversObservers || defined(INCLUDE_RxObserversObservers))
#define RxObserversObservers_

@protocol RxFunctionsAction0;
@protocol RxFunctionsAction1;
@protocol RxObserver;

/*!
 @brief Helper methods and utilities for creating and working with <code>Observer</code> objects.
 */
@interface RxObserversObservers : NSObject

#pragma mark Public

/*!
 @brief Creates an <code>Observer</code> that receives the emissions of any <code>Observable</code> it subscribes to via
 <code>onNext</code> but ignores <code>onCompleted</code> notifications; 
 it will throw an <code>OnErrorNotImplementedException</code> if <code>onError</code> is invoked.
 @param onNext
 a function that handles each item emitted by an <code>Observable</code>
 @throws IllegalArgumentException
 if <code>onNext</code> is <code>null</code>
 @return an <code>Observer</code> that calls <code>onNext</code> for each emitted item from the <code>Observable</code>
 the <code>Observer</code> subscribes to
 */
+ (id<RxObserver>)createWithRxFunctionsAction1:(id<RxFunctionsAction1>)onNext;

/*!
 @brief Creates an <code>Observer</code> that receives the emissions of any <code>Observable</code> it subscribes to via
 <code>onNext</code> and handles any <code>onError</code> notification but ignores
 an <code>onCompleted</code> notification.
 @param onNext
 a function that handles each item emitted by an <code>Observable</code>
 @param onError
 a function that handles an error notification if one is sent by an <code>Observable</code>
 @throws IllegalArgumentException
 if either <code>onNext</code> or <code>onError</code> are <code>null</code>
 @return an <code>Observer</code> that calls <code>onNext</code> for each emitted item from the <code>Observable</code>
 the <code>Observer</code> subscribes to, and calls <code>onError</code> if the <code>Observable</code> notifies
 of an error
 */
+ (id<RxObserver>)createWithRxFunctionsAction1:(id<RxFunctionsAction1>)onNext
                        withRxFunctionsAction1:(id<RxFunctionsAction1>)onError;

/*!
 @brief Creates an <code>Observer</code> that receives the emissions of any <code>Observable</code> it subscribes to via
 <code>onNext</code> and handles any <code>onError</code> or
 <code>onCompleted</code> notifications.
 @param onNext
 a function that handles each item emitted by an <code>Observable</code>
 @param onError
 a function that handles an error notification if one is sent by an <code>Observable</code>
 @param onComplete
 a function that handles a sequence complete notification if one is sent by an <code>Observable</code>
 @throws IllegalArgumentException
 if either <code>onNext</code>, <code>onError</code>, or <code>onComplete</code> are <code>null</code>
 @return an <code>Observer</code> that calls <code>onNext</code> for each emitted item from the <code>Observable</code>
 the <code>Observer</code> subscribes to, calls <code>onError</code> if the <code>Observable</code> notifies
 of an error, and calls <code>onComplete</code> if the <code>Observable</code> notifies that the observable
 sequence is complete
 */
+ (id<RxObserver>)createWithRxFunctionsAction1:(id<RxFunctionsAction1>)onNext
                        withRxFunctionsAction1:(id<RxFunctionsAction1>)onError
                        withRxFunctionsAction0:(id<RxFunctionsAction0>)onComplete;

/*!
 @brief Returns an inert <code>Observer</code> that does nothing in response to the emissions or notifications from
 any <code>Observable</code> it subscribes to but will throw an exception if its
 <code>onError</code> method is called.
 @return an inert <code>Observer</code>
 */
+ (id<RxObserver>)empty;

@end

J2OBJC_STATIC_INIT(RxObserversObservers)

FOUNDATION_EXPORT id<RxObserver> RxObserversObservers_empty();

FOUNDATION_EXPORT id<RxObserver> RxObserversObservers_createWithRxFunctionsAction1_(id<RxFunctionsAction1> onNext);

FOUNDATION_EXPORT id<RxObserver> RxObserversObservers_createWithRxFunctionsAction1_withRxFunctionsAction1_(id<RxFunctionsAction1> onNext, id<RxFunctionsAction1> onError);

FOUNDATION_EXPORT id<RxObserver> RxObserversObservers_createWithRxFunctionsAction1_withRxFunctionsAction1_withRxFunctionsAction0_(id<RxFunctionsAction1> onNext, id<RxFunctionsAction1> onError, id<RxFunctionsAction0> onComplete);

J2OBJC_TYPE_LITERAL_HEADER(RxObserversObservers)

#endif

#pragma pop_macro("INCLUDE_ALL_RxObserversObservers")