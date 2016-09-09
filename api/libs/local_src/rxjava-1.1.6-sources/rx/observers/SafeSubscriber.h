//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/observers/SafeSubscriber.java
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

#pragma push_macro("INCLUDE_ALL_RxObserversSafeSubscriber")
#ifdef RESTRICT_RxObserversSafeSubscriber
#define INCLUDE_ALL_RxObserversSafeSubscriber 0
#else
#define INCLUDE_ALL_RxObserversSafeSubscriber 1
#endif
#undef RESTRICT_RxObserversSafeSubscriber

#if !defined (RxObserversSafeSubscriber_) && (INCLUDE_ALL_RxObserversSafeSubscriber || defined(INCLUDE_RxObserversSafeSubscriber))
#define RxObserversSafeSubscriber_

#define RESTRICT_RxSubscriber 1
#define INCLUDE_RxSubscriber 1
#include "rx/Subscriber.h"

/*!
 @brief <code>SafeSubscriber</code> is a wrapper around <code>Subscriber</code> that ensures that the <code>Subscriber</code>
 complies with <a href="http://reactivex.io/documentation/contract.html">the Observable contract</a>.
 <p>
 The following is taken from <a href="http://go.microsoft.com/fwlink/?LinkID=205219">the Rx Design Guidelines
 document</a>:
 <blockquote><p>
 Messages sent to instances of the <code>IObserver</code> interface follow the following grammar:
 </p><blockquote><p> <code>OnNext* (OnCompleted | OnError)?</code> </p></blockquote><p>
 This grammar allows observable sequences to send any amount (0 or more) of <code>OnNext</code> messages to the
 subscriber, optionally followed by a single success (<code>OnCompleted</code>) or failure (<code>OnError</code>)
 message.
 </p><p>
 The single message indicating that an observable sequence has finished ensures that consumers of the
 observable sequence can deterministically establish that it is safe to perform cleanup operations.
 </p><p>
 A single failure further ensures that abort semantics can be maintained for operators that work on
 multiple observable sequences (see paragraph 6.6).
 </p></blockquote>
 <p>
 This wrapper does the following:
 <ul>
 <li>Allows only single execution of either <code>onError</code> or <code>onCompleted</code>.</li>
 <li>Ensures that once an <code>onCompleted</code> or <code>onError</code> is performed, no further calls can be executed</li>
 <li>If <code>unsubscribe</code> is called, the upstream <code>Observable</code> is notified and the event delivery will be stopped in a
 best effort manner (i.e., further onXXX calls may still slip through).</li>
 <li>When <code>onError</code> or <code>onCompleted</code> occur, unsubscribes from the <code>Observable</code> (if executing asynchronously).</li>
 </ul>
 <code>SafeSubscriber</code> will not synchronize <code>onNext</code> execution. Use <code>SerializedSubscriber</code> to do
 that.
 */
@interface RxObserversSafeSubscriber : RxSubscriber {
 @public
  jboolean done_;
}

#pragma mark Public

- (instancetype)initWithRxSubscriber:(RxSubscriber *)actual;

/*!
 @brief Returns the <code>Subscriber</code> underlying this <code>SafeSubscriber</code>.
 @return the <code>Subscriber</code> that was used to create this <code>SafeSubscriber</code>
 */
- (RxSubscriber *)getActual;

/*!
 @brief Notifies the Subscriber that the <code>Observable</code> has finished sending push-based notifications.
 <p>
 The <code>Observable</code> will not call this method if it calls <code>onError</code>.
 */
- (void)onCompleted;

/*!
 @brief Notifies the Subscriber that the <code>Observable</code> has experienced an error condition.
 <p>
 If the <code>Observable</code> calls this method, it will not thereafter call <code>onNext</code> or
 <code>onCompleted</code>.
 @param e
 the exception encountered by the Observable
 */
- (void)onErrorWithNSException:(NSException *)e;

/*!
 @brief Provides the Subscriber with a new item to observe.
 <p>
 The <code>Observable</code> may call this method 0 or more times.
 <p>
 The <code>Observable</code> will not call this method again after it calls either <code>onCompleted</code> or
 <code>onError</code>.
 @param args
 the item emitted by the Observable
 */
- (void)onNextWithId:(id)args;

#pragma mark Protected

/*!
 @brief The logic for <code>onError</code> without the <code>isFinished</code> check so it can be called from within
 <code>onCompleted</code>.
 - seealso: <a href="https://github.com/ReactiveX/RxJava/issues/630">the report of this bug</a>
 */
- (void)_onErrorWithNSException:(NSException *)e;

@end

J2OBJC_EMPTY_STATIC_INIT(RxObserversSafeSubscriber)

FOUNDATION_EXPORT void RxObserversSafeSubscriber_initWithRxSubscriber_(RxObserversSafeSubscriber *self, RxSubscriber *actual);

FOUNDATION_EXPORT RxObserversSafeSubscriber *new_RxObserversSafeSubscriber_initWithRxSubscriber_(RxSubscriber *actual) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxObserversSafeSubscriber *create_RxObserversSafeSubscriber_initWithRxSubscriber_(RxSubscriber *actual);

J2OBJC_TYPE_LITERAL_HEADER(RxObserversSafeSubscriber)

#endif

#pragma pop_macro("INCLUDE_ALL_RxObserversSafeSubscriber")