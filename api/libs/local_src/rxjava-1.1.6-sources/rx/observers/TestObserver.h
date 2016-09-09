//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/observers/TestObserver.java
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

#pragma push_macro("INCLUDE_ALL_RxObserversTestObserver")
#ifdef RESTRICT_RxObserversTestObserver
#define INCLUDE_ALL_RxObserversTestObserver 0
#else
#define INCLUDE_ALL_RxObserversTestObserver 1
#endif
#undef RESTRICT_RxObserversTestObserver

#if !defined (RxObserversTestObserver_) && (INCLUDE_ALL_RxObserversTestObserver || defined(INCLUDE_RxObserversTestObserver))
#define RxObserversTestObserver_

#define RESTRICT_RxObserver 1
#define INCLUDE_RxObserver 1
#include "rx/Observer.h"

@protocol JavaUtilList;

/*!
 @brief Observer usable for unit testing to perform assertions, inspect received events or wrap a mocked Observer.
 */
@interface RxObserversTestObserver : NSObject < RxObserver >

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithRxObserver:(id<RxObserver>)delegate;

/*!
 @brief Assert that a particular sequence of items was received in order.
 @param items
 the sequence of items expected to have been observed
 @throws AssertionError
 if the sequence of items observed does not exactly match <code>items</code>
 */
- (void)assertReceivedOnNextWithJavaUtilList:(id<JavaUtilList>)items;

/*!
 @brief Assert that a single terminal event occurred, either <code>onCompleted</code> or <code>onError</code>.
 @throws AssertionError
 if not exactly one terminal event notification was received
 */
- (void)assertTerminalEvent;

/*!
 @brief Get a list containing all of the items and notifications received by this observer, where the items
 will be given as-is, any error notifications will be represented by their <code>Throwable</code>s, and any
 sequence-complete notifications will be represented by their <code>Notification</code> objects.
 @return a <code>List</code> containing one item for each item or notification received by this observer, in
 the order in which they were observed or received
 */
- (id<JavaUtilList>)getEvents;

/*!
 @brief Get the <code>Notification</code>s representing each time this observer was notified of sequence completion
 via <code>onCompleted</code>, as a <code>List</code>.
 @return a list of Notifications representing calls to this observer's <code>onCompleted</code> method
 */
- (id<JavaUtilList>)getOnCompletedEvents;

/*!
 @brief Get the <code>Throwable</code>s this observer was notified of via <code>onError</code> as a <code>List</code>.
 @return a list of Throwables passed to this observer's <code>onError</code> method
 */
- (id<JavaUtilList>)getOnErrorEvents;

/*!
 @brief Get the sequence of items observed by this observer, as an ordered <code>List</code>.
 @return a list of items observed by this observer, in the order in which they were observed
 */
- (id<JavaUtilList>)getOnNextEvents;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)t;

#pragma mark Package-Private

/*!
 @brief Combines an assertion error message with the current completion and error state of this
 TestSubscriber, giving more information when some assertXXX check fails.
 @param message the message to use for the error
 */
- (void)assertionErrorWithNSString:(NSString *)message;

@end

J2OBJC_STATIC_INIT(RxObserversTestObserver)

FOUNDATION_EXPORT void RxObserversTestObserver_initWithRxObserver_(RxObserversTestObserver *self, id<RxObserver> delegate);

FOUNDATION_EXPORT RxObserversTestObserver *new_RxObserversTestObserver_initWithRxObserver_(id<RxObserver> delegate) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxObserversTestObserver *create_RxObserversTestObserver_initWithRxObserver_(id<RxObserver> delegate);

FOUNDATION_EXPORT void RxObserversTestObserver_init(RxObserversTestObserver *self);

FOUNDATION_EXPORT RxObserversTestObserver *new_RxObserversTestObserver_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxObserversTestObserver *create_RxObserversTestObserver_init();

J2OBJC_TYPE_LITERAL_HEADER(RxObserversTestObserver)

#endif

#pragma pop_macro("INCLUDE_ALL_RxObserversTestObserver")
