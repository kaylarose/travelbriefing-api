//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/CachedObservable.java
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

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsCachedObservable")
#ifdef RESTRICT_RxInternalOperatorsCachedObservable
#define INCLUDE_ALL_RxInternalOperatorsCachedObservable 0
#else
#define INCLUDE_ALL_RxInternalOperatorsCachedObservable 1
#endif
#undef RESTRICT_RxInternalOperatorsCachedObservable

#if !defined (RxInternalOperatorsCachedObservable_) && (INCLUDE_ALL_RxInternalOperatorsCachedObservable || defined(INCLUDE_RxInternalOperatorsCachedObservable))
#define RxInternalOperatorsCachedObservable_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable 1
#include "rx/Observable.h"

/*!
 @brief An observable which auto-connects to another observable, caches the elements
 from that observable but allows terminating the connection and completing the cache.
 */
@interface RxInternalOperatorsCachedObservable : RxObservable

#pragma mark Public

/*!
 @brief Creates a cached Observable with a default capacity hint of 16.
 @param source the source Observable to cache
 @return the CachedObservable instance
 */
+ (RxInternalOperatorsCachedObservable *)fromWithRxObservable:(RxObservable *)source;

/*!
 @brief Creates a cached Observable with the given capacity hint.
 @param source the source Observable to cache
 @param capacityHint the hint for the internal buffer size
 @return the CachedObservable instance
 */
+ (RxInternalOperatorsCachedObservable *)fromWithRxObservable:(RxObservable *)source
                                                      withInt:(jint)capacityHint;

#pragma mark Package-Private

/*!
 @brief Returns true if there are observers subscribed to this observable.
 */
- (jboolean)hasObservers;

/*!
 @brief Check if this cached observable is connected to its source.
 @return true if already connected
 */
- (jboolean)isConnected;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsCachedObservable)

FOUNDATION_EXPORT RxInternalOperatorsCachedObservable *RxInternalOperatorsCachedObservable_fromWithRxObservable_(RxObservable *source);

FOUNDATION_EXPORT RxInternalOperatorsCachedObservable *RxInternalOperatorsCachedObservable_fromWithRxObservable_withInt_(RxObservable *source, jint capacityHint);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsCachedObservable)

#endif

#if !defined (RxInternalOperatorsCachedObservable_CacheState_) && (INCLUDE_ALL_RxInternalOperatorsCachedObservable || defined(INCLUDE_RxInternalOperatorsCachedObservable_CacheState))
#define RxInternalOperatorsCachedObservable_CacheState_

#define RESTRICT_RxInternalUtilLinkedArrayList 1
#define INCLUDE_RxInternalUtilLinkedArrayList 1
#include "rx/internal/util/LinkedArrayList.h"

#define RESTRICT_RxObserver 1
#define INCLUDE_RxObserver 1
#include "rx/Observer.h"

@class IOSObjectArray;
@class RxInternalOperatorsCachedObservable_ReplayProducer;
@class RxInternalOperatorsNotificationLite;
@class RxObservable;
@class RxSubscriptionsSerialSubscription;

/*!
 @brief Contains the active child producers and the values to replay.
 */
@interface RxInternalOperatorsCachedObservable_CacheState : RxInternalUtilLinkedArrayList < RxObserver > {
 @public
  /*!
   @brief The source observable to connect to.
   */
  RxObservable *source_;
  /*!
   @brief Holds onto the subscriber connected to source.
   */
  RxSubscriptionsSerialSubscription *connection_;
  /*!
   @brief Guarded by connection (not this).
   */
  volatile_id producers_;
  RxInternalOperatorsNotificationLite *nl_;
  /*!
   @brief Set to true after connection.
   */
  volatile_jboolean isConnected_;
  /*!
   @brief Indicates that the source has completed emitting values or the
 Observable was forcefully terminated.
   */
  jboolean sourceDone_;
}

+ (IOSObjectArray *)EMPTY;

#pragma mark Public

- (instancetype)initWithRxObservable:(RxObservable *)source
                             withInt:(jint)capacityHint;

/*!
 @brief Adds a ReplayProducer to the producers array atomically.
 @param p
 */
- (void)addProducerWithRxInternalOperatorsCachedObservable_ReplayProducer:(RxInternalOperatorsCachedObservable_ReplayProducer *)p;

/*!
 @brief Connects the cache to the source.
 Make sure this is called only once.
 */
- (void)connect;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)t;

/*!
 @brief Removes the ReplayProducer (if present) from the producers array atomically.
 @param p
 */
- (void)removeProducerWithRxInternalOperatorsCachedObservable_ReplayProducer:(RxInternalOperatorsCachedObservable_ReplayProducer *)p;

#pragma mark Package-Private

/*!
 @brief Signals all known children there is work to do.
 */
- (void)dispatch;

@end

J2OBJC_STATIC_INIT(RxInternalOperatorsCachedObservable_CacheState)

J2OBJC_FIELD_SETTER(RxInternalOperatorsCachedObservable_CacheState, source_, RxObservable *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsCachedObservable_CacheState, connection_, RxSubscriptionsSerialSubscription *)
J2OBJC_VOLATILE_FIELD_SETTER(RxInternalOperatorsCachedObservable_CacheState, producers_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsCachedObservable_CacheState, nl_, RxInternalOperatorsNotificationLite *)

/*!
 @brief The default empty array of producers.
 */
inline IOSObjectArray *RxInternalOperatorsCachedObservable_CacheState_get_EMPTY();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *RxInternalOperatorsCachedObservable_CacheState_EMPTY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxInternalOperatorsCachedObservable_CacheState, EMPTY, IOSObjectArray *)

FOUNDATION_EXPORT void RxInternalOperatorsCachedObservable_CacheState_initWithRxObservable_withInt_(RxInternalOperatorsCachedObservable_CacheState *self, RxObservable *source, jint capacityHint);

FOUNDATION_EXPORT RxInternalOperatorsCachedObservable_CacheState *new_RxInternalOperatorsCachedObservable_CacheState_initWithRxObservable_withInt_(RxObservable *source, jint capacityHint) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsCachedObservable_CacheState *create_RxInternalOperatorsCachedObservable_CacheState_initWithRxObservable_withInt_(RxObservable *source, jint capacityHint);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsCachedObservable_CacheState)

#endif

#if !defined (RxInternalOperatorsCachedObservable_CachedSubscribe_) && (INCLUDE_ALL_RxInternalOperatorsCachedObservable || defined(INCLUDE_RxInternalOperatorsCachedObservable_CachedSubscribe))
#define RxInternalOperatorsCachedObservable_CachedSubscribe_

#define RESTRICT_JavaUtilConcurrentAtomicAtomicBoolean 1
#define INCLUDE_JavaUtilConcurrentAtomicAtomicBoolean 1
#include "java/util/concurrent/atomic/AtomicBoolean.h"

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_OnSubscribe 1
#include "rx/Observable.h"

@class RxInternalOperatorsCachedObservable_CacheState;
@class RxSubscriber;

/*!
 @brief Manages the subscription of child subscribers by setting up a replay producer and
 performs auto-connection of the very first subscription.
 */
@interface RxInternalOperatorsCachedObservable_CachedSubscribe : JavaUtilConcurrentAtomicAtomicBoolean < RxObservable_OnSubscribe > {
 @public
  RxInternalOperatorsCachedObservable_CacheState *state_;
}

#pragma mark Public

- (instancetype)initWithRxInternalOperatorsCachedObservable_CacheState:(RxInternalOperatorsCachedObservable_CacheState *)state;

- (void)callWithId:(RxSubscriber *)t;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsCachedObservable_CachedSubscribe)

J2OBJC_FIELD_SETTER(RxInternalOperatorsCachedObservable_CachedSubscribe, state_, RxInternalOperatorsCachedObservable_CacheState *)

FOUNDATION_EXPORT void RxInternalOperatorsCachedObservable_CachedSubscribe_initWithRxInternalOperatorsCachedObservable_CacheState_(RxInternalOperatorsCachedObservable_CachedSubscribe *self, RxInternalOperatorsCachedObservable_CacheState *state);

FOUNDATION_EXPORT RxInternalOperatorsCachedObservable_CachedSubscribe *new_RxInternalOperatorsCachedObservable_CachedSubscribe_initWithRxInternalOperatorsCachedObservable_CacheState_(RxInternalOperatorsCachedObservable_CacheState *state) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsCachedObservable_CachedSubscribe *create_RxInternalOperatorsCachedObservable_CachedSubscribe_initWithRxInternalOperatorsCachedObservable_CacheState_(RxInternalOperatorsCachedObservable_CacheState *state);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsCachedObservable_CachedSubscribe)

#endif

#if !defined (RxInternalOperatorsCachedObservable_ReplayProducer_) && (INCLUDE_ALL_RxInternalOperatorsCachedObservable || defined(INCLUDE_RxInternalOperatorsCachedObservable_ReplayProducer))
#define RxInternalOperatorsCachedObservable_ReplayProducer_

#define RESTRICT_JavaUtilConcurrentAtomicAtomicLong 1
#define INCLUDE_JavaUtilConcurrentAtomicAtomicLong 1
#include "java/util/concurrent/atomic/AtomicLong.h"

#define RESTRICT_RxProducer 1
#define INCLUDE_RxProducer 1
#include "rx/Producer.h"

#define RESTRICT_RxSubscription 1
#define INCLUDE_RxSubscription 1
#include "rx/Subscription.h"

@class IOSObjectArray;
@class RxInternalOperatorsCachedObservable_CacheState;
@class RxSubscriber;

/*!
 @brief Keeps track of the current request amount and the replay position for a child Subscriber.
 */
@interface RxInternalOperatorsCachedObservable_ReplayProducer : JavaUtilConcurrentAtomicAtomicLong < RxProducer, RxSubscription > {
 @public
  /*!
   @brief The actual child subscriber.
   */
  RxSubscriber *child_;
  /*!
   @brief The cache state object.
   */
  RxInternalOperatorsCachedObservable_CacheState *state_;
  /*!
   @brief Contains the reference to the buffer segment in replay.
   Accessed after reading state.size() and when emitting == true.
   */
  IOSObjectArray *currentBuffer_;
  /*!
   @brief Contains the index into the currentBuffer where the next value is expected.
   Accessed after reading state.size() and when emitting == true.
   */
  jint currentIndexInBuffer_;
  /*!
   @brief Contains the absolute index up until the values have been replayed so far.
   */
  jint index_;
  /*!
   @brief Indicates there is a replay going on; guarded by this.
   */
  jboolean emitting_;
  /*!
   @brief Indicates there were some state changes/replay attempts; guarded by this.
   */
  jboolean missed_;
}

#pragma mark Public

- (instancetype)initWithRxSubscriber:(RxSubscriber *)child
withRxInternalOperatorsCachedObservable_CacheState:(RxInternalOperatorsCachedObservable_CacheState *)state;

- (jboolean)isUnsubscribed;

/*!
 @brief Updates the request count to reflect values have been produced.
 @param n the produced item count, positive, not validated
 @return the latest request amount after subtracting n
 */
- (jlong)producedWithLong:(jlong)n;

/*!
 @brief Continue replaying available values if there are requests for them.
 */
- (void)replay;

- (void)requestWithLong:(jlong)n;

- (void)unsubscribe;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsCachedObservable_ReplayProducer)

J2OBJC_FIELD_SETTER(RxInternalOperatorsCachedObservable_ReplayProducer, child_, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsCachedObservable_ReplayProducer, state_, RxInternalOperatorsCachedObservable_CacheState *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsCachedObservable_ReplayProducer, currentBuffer_, IOSObjectArray *)

FOUNDATION_EXPORT void RxInternalOperatorsCachedObservable_ReplayProducer_initWithRxSubscriber_withRxInternalOperatorsCachedObservable_CacheState_(RxInternalOperatorsCachedObservable_ReplayProducer *self, RxSubscriber *child, RxInternalOperatorsCachedObservable_CacheState *state);

FOUNDATION_EXPORT RxInternalOperatorsCachedObservable_ReplayProducer *new_RxInternalOperatorsCachedObservable_ReplayProducer_initWithRxSubscriber_withRxInternalOperatorsCachedObservable_CacheState_(RxSubscriber *child, RxInternalOperatorsCachedObservable_CacheState *state) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsCachedObservable_ReplayProducer *create_RxInternalOperatorsCachedObservable_ReplayProducer_initWithRxSubscriber_withRxInternalOperatorsCachedObservable_CacheState_(RxSubscriber *child, RxInternalOperatorsCachedObservable_CacheState *state);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsCachedObservable_ReplayProducer)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsCachedObservable")