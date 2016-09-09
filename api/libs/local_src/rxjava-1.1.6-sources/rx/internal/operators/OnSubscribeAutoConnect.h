//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OnSubscribeAutoConnect.java
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

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOnSubscribeAutoConnect")
#ifdef RESTRICT_RxInternalOperatorsOnSubscribeAutoConnect
#define INCLUDE_ALL_RxInternalOperatorsOnSubscribeAutoConnect 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOnSubscribeAutoConnect 1
#endif
#undef RESTRICT_RxInternalOperatorsOnSubscribeAutoConnect

#if !defined (RxInternalOperatorsOnSubscribeAutoConnect_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeAutoConnect || defined(INCLUDE_RxInternalOperatorsOnSubscribeAutoConnect))
#define RxInternalOperatorsOnSubscribeAutoConnect_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_OnSubscribe 1
#include "rx/Observable.h"

@class JavaUtilConcurrentAtomicAtomicInteger;
@class RxObservablesConnectableObservable;
@class RxSubscriber;
@protocol RxFunctionsAction1;

/*!
 @brief Wraps a ConnectableObservable and calls its connect() method once
 the specified number of Subscribers have subscribed.
 */
@interface RxInternalOperatorsOnSubscribeAutoConnect : NSObject < RxObservable_OnSubscribe > {
 @public
  RxObservablesConnectableObservable *source_;
  jint numberOfSubscribers_;
  id<RxFunctionsAction1> connection_;
  JavaUtilConcurrentAtomicAtomicInteger *clients_;
}

#pragma mark Public

- (instancetype)initWithRxObservablesConnectableObservable:(RxObservablesConnectableObservable *)source
                                                   withInt:(jint)numberOfSubscribers
                                    withRxFunctionsAction1:(id<RxFunctionsAction1>)connection;

- (void)callWithId:(RxSubscriber *)child;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeAutoConnect)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeAutoConnect, source_, RxObservablesConnectableObservable *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeAutoConnect, connection_, id<RxFunctionsAction1>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeAutoConnect, clients_, JavaUtilConcurrentAtomicAtomicInteger *)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeAutoConnect_initWithRxObservablesConnectableObservable_withInt_withRxFunctionsAction1_(RxInternalOperatorsOnSubscribeAutoConnect *self, RxObservablesConnectableObservable *source, jint numberOfSubscribers, id<RxFunctionsAction1> connection);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeAutoConnect *new_RxInternalOperatorsOnSubscribeAutoConnect_initWithRxObservablesConnectableObservable_withInt_withRxFunctionsAction1_(RxObservablesConnectableObservable *source, jint numberOfSubscribers, id<RxFunctionsAction1> connection) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeAutoConnect *create_RxInternalOperatorsOnSubscribeAutoConnect_initWithRxObservablesConnectableObservable_withInt_withRxFunctionsAction1_(RxObservablesConnectableObservable *source, jint numberOfSubscribers, id<RxFunctionsAction1> connection);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeAutoConnect)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOnSubscribeAutoConnect")
