//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/observables/ConnectableObservable.java
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

#pragma push_macro("INCLUDE_ALL_RxObservablesConnectableObservable")
#ifdef RESTRICT_RxObservablesConnectableObservable
#define INCLUDE_ALL_RxObservablesConnectableObservable 0
#else
#define INCLUDE_ALL_RxObservablesConnectableObservable 1
#endif
#undef RESTRICT_RxObservablesConnectableObservable

#if !defined (RxObservablesConnectableObservable_) && (INCLUDE_ALL_RxObservablesConnectableObservable || defined(INCLUDE_RxObservablesConnectableObservable))
#define RxObservablesConnectableObservable_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable 1
#include "rx/Observable.h"

@protocol RxFunctionsAction1;
@protocol RxObservable_OnSubscribe;
@protocol RxSubscription;

/*!
 @brief A <code>ConnectableObservable</code> resembles an ordinary <code>Observable</code>, except that it does not begin
 emitting items when it is subscribed to, but only when its <code>connect</code> method is called.
 In this way you
 can wait for all intended <code>Subscriber</code>s to <code>Observable.subscribe</code> to the <code>Observable</code>
 before the <code>Observable</code> begins emitting items.
 <p>
 <img width="640" height="510" src="https://github.com/ReactiveX/RxJava/wiki/images/rx-operators/publishConnect.png" alt="">
 - seealso: <a href="https://github.com/ReactiveX/RxJava/wiki/Connectable-Observable-Operators">RxJava Wiki:
 *      Connectable Observable Operators</a>
 */
@interface RxObservablesConnectableObservable : RxObservable

#pragma mark Public

/*!
 @brief Returns an Observable that automatically connects to this ConnectableObservable
 when the first Subscriber subscribes.
 @return an Observable that automatically connects to this ConnectableObservable
 when the first Subscriber subscribes
 @since (if this graduates from Experimental/Beta to supported, replace this parenthetical with the release number)
 */
- (RxObservable *)autoConnect;

/*!
 @brief Returns an Observable that automatically connects to this ConnectableObservable
 when the specified number of Subscribers subscribe to it.
 @param numberOfSubscribers the number of subscribers to await before calling connect
 on the ConnectableObservable. A non-positive value indicates
 an immediate connection.
 @return an Observable that automatically connects to this ConnectableObservable
 when the specified number of Subscribers subscribe to it
 @since (if this graduates from Experimental/Beta to supported, replace this parenthetical with the release number)
 */
- (RxObservable *)autoConnectWithInt:(jint)numberOfSubscribers;

/*!
 @brief Returns an Observable that automatically connects to this ConnectableObservable
 when the specified number of Subscribers subscribe to it and calls the 
 specified callback with the Subscription associated with the established connection.
 @param numberOfSubscribers the number of subscribers to await before calling connect
 on the ConnectableObservable. A non-positive value indicates
 an immediate connection.
 @param connection the callback Action1 that will receive the Subscription representing the
 established connection
 @return an Observable that automatically connects to this ConnectableObservable
 when the specified number of Subscribers subscribe to it and calls the 
 specified callback with the Subscription associated with the established connection
 @since (if this graduates from Experimental/Beta to supported, replace this parenthetical with the release number)
 */
- (RxObservable *)autoConnectWithInt:(jint)numberOfSubscribers
              withRxFunctionsAction1:(id<RxFunctionsAction1>)connection;

/*!
 @brief Instructs the <code>ConnectableObservable</code> to begin emitting the items from its underlying
 <code>Observable</code> to its <code>Subscriber</code>s.
 <p>
 To disconnect from a synchronous source, use the <code>connect(rx.functions.Action1)</code> method.
 @return the subscription representing the connection
 - seealso: <a href="http://reactivex.io/documentation/operators/connect.html">ReactiveX documentation: Connect</a>
 */
- (id<RxSubscription>)connect;

/*!
 @brief Instructs the <code>ConnectableObservable</code> to begin emitting the items from its underlying
 <code>Observable</code> to its <code>Subscriber</code>s.
 @param connection
 the action that receives the connection subscription before the subscription to source happens
 allowing the caller to synchronously disconnect a synchronous source
 - seealso: <a href="http://reactivex.io/documentation/operators/connect.html">ReactiveX documentation: Connect</a>
 */
- (void)connectWithRxFunctionsAction1:(id<RxFunctionsAction1>)connection;

/*!
 @brief Returns an <code>Observable</code> that stays connected to this <code>ConnectableObservable</code> as long as there
 is at least one subscription to this <code>ConnectableObservable</code>.
 @return a <code>Observable</code>
 - seealso: <a href="http://reactivex.io/documentation/operators/refcount.html">ReactiveX documentation: RefCount</a>
 */
- (RxObservable *)refCount;

#pragma mark Protected

- (instancetype)initWithRxObservable_OnSubscribe:(id<RxObservable_OnSubscribe>)onSubscribe;

@end

J2OBJC_EMPTY_STATIC_INIT(RxObservablesConnectableObservable)

FOUNDATION_EXPORT void RxObservablesConnectableObservable_initWithRxObservable_OnSubscribe_(RxObservablesConnectableObservable *self, id<RxObservable_OnSubscribe> onSubscribe);

J2OBJC_TYPE_LITERAL_HEADER(RxObservablesConnectableObservable)

#endif

#pragma pop_macro("INCLUDE_ALL_RxObservablesConnectableObservable")
