//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorReplay.java
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

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOperatorReplay")
#ifdef RESTRICT_RxInternalOperatorsOperatorReplay
#define INCLUDE_ALL_RxInternalOperatorsOperatorReplay 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOperatorReplay 1
#endif
#undef RESTRICT_RxInternalOperatorsOperatorReplay
#ifdef INCLUDE_RxInternalOperatorsOperatorReplay_SizeAndTimeBoundReplayBuffer
#define INCLUDE_RxInternalOperatorsOperatorReplay_BoundedReplayBuffer 1
#endif
#ifdef INCLUDE_RxInternalOperatorsOperatorReplay_SizeBoundReplayBuffer
#define INCLUDE_RxInternalOperatorsOperatorReplay_BoundedReplayBuffer 1
#endif
#ifdef INCLUDE_RxInternalOperatorsOperatorReplay_BoundedReplayBuffer
#define INCLUDE_RxInternalOperatorsOperatorReplay_ReplayBuffer 1
#endif
#ifdef INCLUDE_RxInternalOperatorsOperatorReplay_UnboundedReplayBuffer
#define INCLUDE_RxInternalOperatorsOperatorReplay_ReplayBuffer 1
#endif

#if !defined (RxInternalOperatorsOperatorReplay_) && (INCLUDE_ALL_RxInternalOperatorsOperatorReplay || defined(INCLUDE_RxInternalOperatorsOperatorReplay))
#define RxInternalOperatorsOperatorReplay_

#define RESTRICT_RxObservablesConnectableObservable 1
#define INCLUDE_RxObservablesConnectableObservable 1
#include "rx/observables/ConnectableObservable.h"

@class JavaUtilConcurrentAtomicAtomicReference;
@class JavaUtilConcurrentTimeUnit;
@class RxObservable;
@class RxScheduler;
@protocol RxFunctionsAction1;
@protocol RxFunctionsFunc0;
@protocol RxFunctionsFunc1;

@interface RxInternalOperatorsOperatorReplay : RxObservablesConnectableObservable {
 @public
  /*!
   @brief The source observable.
   */
  RxObservable *source_;
  /*!
   @brief Holds the current subscriber that is, will be or just was subscribed to the source observable.
   */
  JavaUtilConcurrentAtomicAtomicReference *current_;
  /*!
   @brief A factory that creates the appropriate buffer for the ReplaySubscriber.
   */
  id<RxFunctionsFunc0> bufferFactory_;
}

+ (id<RxFunctionsFunc0>)DEFAULT_UNBOUNDED_FACTORY;

#pragma mark Public

- (void)connectWithRxFunctionsAction1:(id<RxFunctionsAction1>)connection;

/*!
 @brief Creates a replaying ConnectableObservable with an unbounded buffer.
 @param source the source Observable
 @return the replaying ConnectableObservable
 */
+ (RxObservablesConnectableObservable *)createWithRxObservable:(RxObservable *)source;

/*!
 @brief Creates a replaying ConnectableObservable with a size bound buffer.
 @param source the source Observable
 @param bufferSize the maximum number of elements buffered
 @return the replaying ConnectableObservable
 */
+ (RxObservablesConnectableObservable *)createWithRxObservable:(RxObservable *)source
                                                       withInt:(jint)bufferSize;

/*!
 @brief Creates a replaying ConnectableObservable with a time bound buffer.
 @param source the source Observable
 @param maxAge the maximum age (exclusive) of each item when timestamped with the given scheduler
 @param unit the time unit of the maximum age
 @param scheduler the scheduler providing the notion of current time
 @return the replaying ConnectableObservable
 */
+ (RxObservablesConnectableObservable *)createWithRxObservable:(RxObservable *)source
                                                      withLong:(jlong)maxAge
                                withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit
                                               withRxScheduler:(RxScheduler *)scheduler;

/*!
 @brief Creates a replaying ConnectableObservable with a size and time bound buffer.
 @param source the source Observable
 @param maxAge the maximum age (exclusive) of each item when timestamped with the given scheduler
 @param unit the time unit of the maximum age
 @param scheduler the scheduler providing the notion of current time
 @param bufferSize the maximum number of elements buffered
 @return the replaying ConnectableObservable
 */
+ (RxObservablesConnectableObservable *)createWithRxObservable:(RxObservable *)source
                                                      withLong:(jlong)maxAge
                                withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit
                                               withRxScheduler:(RxScheduler *)scheduler
                                                       withInt:(jint)bufferSize;

/*!
 @brief Given a connectable observable factory, it multicasts over the generated
 ConnectableObservable via a selector function.
 @param connectableFactory the factory that returns a ConnectableObservable instance
 @param selector the function applied on the ConnectableObservable and returns the Observable
 the downstream will subscribe to.
 @return the Observable multicasting over a transformation of a ConnectableObserable
 */
+ (RxObservable *)multicastSelectorWithRxFunctionsFunc0:(id<RxFunctionsFunc0>)connectableFactory
                                   withRxFunctionsFunc1:(id<RxFunctionsFunc1>)selector;

/*!
 @brief Child Subscribers will observe the events of the ConnectableObservable on the
 specified scheduler.
 @param co the ConnectableObservable to schedule on the specified scheduler
 @param scheduler the target Scheduler instance
 @return the ConnectableObservable instance that is observed on the specified scheduler
 */
+ (RxObservablesConnectableObservable *)observeOnWithRxObservablesConnectableObservable:(RxObservablesConnectableObservable *)co
                                                                        withRxScheduler:(RxScheduler *)scheduler;

#pragma mark Package-Private

/*!
 @brief Creates a OperatorReplay instance to replay values of the given source observable.
 @param source the source observable
 @param bufferFactory the factory to instantiate the appropriate buffer when the observable becomes active
 @return the connectable observable
 */
+ (RxObservablesConnectableObservable *)createWithRxObservable:(RxObservable *)source
                                          withRxFunctionsFunc0:(id<RxFunctionsFunc0>)bufferFactory;

@end

J2OBJC_STATIC_INIT(RxInternalOperatorsOperatorReplay)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorReplay, source_, RxObservable *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorReplay, current_, JavaUtilConcurrentAtomicAtomicReference *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorReplay, bufferFactory_, id<RxFunctionsFunc0>)

inline id<RxFunctionsFunc0> RxInternalOperatorsOperatorReplay_get_DEFAULT_UNBOUNDED_FACTORY();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id<RxFunctionsFunc0> RxInternalOperatorsOperatorReplay_DEFAULT_UNBOUNDED_FACTORY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxInternalOperatorsOperatorReplay, DEFAULT_UNBOUNDED_FACTORY, id<RxFunctionsFunc0>)

FOUNDATION_EXPORT RxObservable *RxInternalOperatorsOperatorReplay_multicastSelectorWithRxFunctionsFunc0_withRxFunctionsFunc1_(id<RxFunctionsFunc0> connectableFactory, id<RxFunctionsFunc1> selector);

FOUNDATION_EXPORT RxObservablesConnectableObservable *RxInternalOperatorsOperatorReplay_observeOnWithRxObservablesConnectableObservable_withRxScheduler_(RxObservablesConnectableObservable *co, RxScheduler *scheduler);

FOUNDATION_EXPORT RxObservablesConnectableObservable *RxInternalOperatorsOperatorReplay_createWithRxObservable_(RxObservable *source);

FOUNDATION_EXPORT RxObservablesConnectableObservable *RxInternalOperatorsOperatorReplay_createWithRxObservable_withInt_(RxObservable *source, jint bufferSize);

FOUNDATION_EXPORT RxObservablesConnectableObservable *RxInternalOperatorsOperatorReplay_createWithRxObservable_withLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(RxObservable *source, jlong maxAge, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler);

FOUNDATION_EXPORT RxObservablesConnectableObservable *RxInternalOperatorsOperatorReplay_createWithRxObservable_withLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_withInt_(RxObservable *source, jlong maxAge, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler, jint bufferSize);

FOUNDATION_EXPORT RxObservablesConnectableObservable *RxInternalOperatorsOperatorReplay_createWithRxObservable_withRxFunctionsFunc0_(RxObservable *source, id<RxFunctionsFunc0> bufferFactory);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorReplay)

#endif

#if !defined (RxInternalOperatorsOperatorReplay_ReplaySubscriber_) && (INCLUDE_ALL_RxInternalOperatorsOperatorReplay || defined(INCLUDE_RxInternalOperatorsOperatorReplay_ReplaySubscriber))
#define RxInternalOperatorsOperatorReplay_ReplaySubscriber_

#define RESTRICT_RxSubscriber 1
#define INCLUDE_RxSubscriber 1
#include "rx/Subscriber.h"

#define RESTRICT_RxSubscription 1
#define INCLUDE_RxSubscription 1
#include "rx/Subscription.h"

@class IOSObjectArray;
@class JavaUtilConcurrentAtomicAtomicBoolean;
@class JavaUtilConcurrentAtomicAtomicReference;
@class RxInternalOperatorsNotificationLite;
@class RxInternalOperatorsOperatorReplay_InnerProducer;
@class RxInternalUtilOpenHashSet;
@protocol JavaUtilList;
@protocol RxInternalOperatorsOperatorReplay_ReplayBuffer;
@protocol RxProducer;

@interface RxInternalOperatorsOperatorReplay_ReplaySubscriber : RxSubscriber < RxSubscription > {
 @public
  /*!
   @brief Holds notifications from upstream.
   */
  id<RxInternalOperatorsOperatorReplay_ReplayBuffer> buffer_;
  /*!
   @brief The notification-lite factory.
   */
  RxInternalOperatorsNotificationLite *nl_;
  /*!
   @brief Contains either an onCompleted or an onError token from upstream.
   */
  jboolean done_;
  /*!
   @brief Indicates no further InnerProducers are accepted.
   */
  volatile_jboolean terminated_;
  /*!
   @brief Tracks the subscribed producers.
   Guarded by itself. 
   */
  RxInternalUtilOpenHashSet *producers_;
  /*!
   @brief Contains a copy of the producers.
   Modified only from the source side. 
   */
  IOSObjectArray *producersCache_;
  /*!
   @brief Contains number of modifications to the producers set.
   */
  volatile_jlong producersVersion_;
  /*!
   @brief Contains the number of modifications that the producersCache holds.
   */
  jlong producersCacheVersion_;
  /*!
   @brief Atomically changed from false to true by connect to make sure the 
 connection is only performed by one thread.
   */
  JavaUtilConcurrentAtomicAtomicBoolean *shouldConnect_;
  /*!
   @brief Guarded by this.
   */
  jboolean emitting_;
  /*!
   @brief Guarded by this.
   */
  jboolean missed_;
  /*!
   @brief Contains the maximum element index the child Subscribers requested so far.
   Accessed while emitting is true. 
   */
  jlong maxChildRequested_;
  /*!
   @brief Counts the outstanding upstream requests until the producer arrives.
   */
  jlong maxUpstreamRequested_;
  /*!
   @brief The upstream producer.
   */
  volatile_id producer_ReplaySubscriber_;
  /*!
   @brief The queue that holds producers with request changes that need to be coordinated.
   */
  id<JavaUtilList> coordinationQueue_;
  /*!
   @brief Indicate that all request amounts should be considered.
   */
  jboolean coordinateAll_;
}

+ (IOSObjectArray *)EMPTY;

+ (IOSObjectArray *)TERMINATED;

#pragma mark Public

- (instancetype)initWithJavaUtilConcurrentAtomicAtomicReference:(JavaUtilConcurrentAtomicAtomicReference *)current
             withRxInternalOperatorsOperatorReplay_ReplayBuffer:(id<RxInternalOperatorsOperatorReplay_ReplayBuffer>)buffer;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)t;

- (void)setProducerWithRxProducer:(id<RxProducer>)p;

#pragma mark Package-Private

/*!
 @brief Atomically try adding a new InnerProducer to this Subscriber or return false if this
 Subscriber was terminated.
 @param producer the producer to add
 @return true if succeeded, false otherwise
 */
- (jboolean)addWithRxInternalOperatorsOperatorReplay_InnerProducer:(RxInternalOperatorsOperatorReplay_InnerProducer *)producer;

- (IOSObjectArray *)copyProducers OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Should be called after the constructor finished to setup nulling-out the current reference.
 */
- (void)init__ OBJC_METHOD_FAMILY_NONE;

- (void)makeRequestWithLong:(jlong)maxTotalRequests
                   withLong:(jlong)previousTotalRequests;

/*!
 @brief Coordinates the request amounts of various child Subscribers.
 */
- (void)manageRequestsWithRxInternalOperatorsOperatorReplay_InnerProducer:(RxInternalOperatorsOperatorReplay_InnerProducer *)inner;

/*!
 @brief Atomically removes the given producer from the producers array.
 @param producer the producer to remove
 */
- (void)removeWithRxInternalOperatorsOperatorReplay_InnerProducer:(RxInternalOperatorsOperatorReplay_InnerProducer *)producer;

/*!
 @brief Tries to replay the buffer contents to all known subscribers.
 */
- (void)replay;

@end

J2OBJC_STATIC_INIT(RxInternalOperatorsOperatorReplay_ReplaySubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorReplay_ReplaySubscriber, buffer_, id<RxInternalOperatorsOperatorReplay_ReplayBuffer>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorReplay_ReplaySubscriber, nl_, RxInternalOperatorsNotificationLite *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorReplay_ReplaySubscriber, producers_, RxInternalUtilOpenHashSet *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorReplay_ReplaySubscriber, producersCache_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorReplay_ReplaySubscriber, shouldConnect_, JavaUtilConcurrentAtomicAtomicBoolean *)
J2OBJC_VOLATILE_FIELD_SETTER(RxInternalOperatorsOperatorReplay_ReplaySubscriber, producer_ReplaySubscriber_, id<RxProducer>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorReplay_ReplaySubscriber, coordinationQueue_, id<JavaUtilList>)

/*!
 @brief Indicates an empty array of inner producers.
 */
inline IOSObjectArray *RxInternalOperatorsOperatorReplay_ReplaySubscriber_get_EMPTY();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *RxInternalOperatorsOperatorReplay_ReplaySubscriber_EMPTY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxInternalOperatorsOperatorReplay_ReplaySubscriber, EMPTY, IOSObjectArray *)

/*!
 @brief Indicates a terminated ReplaySubscriber.
 */
inline IOSObjectArray *RxInternalOperatorsOperatorReplay_ReplaySubscriber_get_TERMINATED();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *RxInternalOperatorsOperatorReplay_ReplaySubscriber_TERMINATED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxInternalOperatorsOperatorReplay_ReplaySubscriber, TERMINATED, IOSObjectArray *)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorReplay_ReplaySubscriber_initWithJavaUtilConcurrentAtomicAtomicReference_withRxInternalOperatorsOperatorReplay_ReplayBuffer_(RxInternalOperatorsOperatorReplay_ReplaySubscriber *self, JavaUtilConcurrentAtomicAtomicReference *current, id<RxInternalOperatorsOperatorReplay_ReplayBuffer> buffer);

FOUNDATION_EXPORT RxInternalOperatorsOperatorReplay_ReplaySubscriber *new_RxInternalOperatorsOperatorReplay_ReplaySubscriber_initWithJavaUtilConcurrentAtomicAtomicReference_withRxInternalOperatorsOperatorReplay_ReplayBuffer_(JavaUtilConcurrentAtomicAtomicReference *current, id<RxInternalOperatorsOperatorReplay_ReplayBuffer> buffer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorReplay_ReplaySubscriber *create_RxInternalOperatorsOperatorReplay_ReplaySubscriber_initWithJavaUtilConcurrentAtomicAtomicReference_withRxInternalOperatorsOperatorReplay_ReplayBuffer_(JavaUtilConcurrentAtomicAtomicReference *current, id<RxInternalOperatorsOperatorReplay_ReplayBuffer> buffer);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorReplay_ReplaySubscriber)

#endif

#if !defined (RxInternalOperatorsOperatorReplay_InnerProducer_) && (INCLUDE_ALL_RxInternalOperatorsOperatorReplay || defined(INCLUDE_RxInternalOperatorsOperatorReplay_InnerProducer))
#define RxInternalOperatorsOperatorReplay_InnerProducer_

#define RESTRICT_JavaUtilConcurrentAtomicAtomicLong 1
#define INCLUDE_JavaUtilConcurrentAtomicAtomicLong 1
#include "java/util/concurrent/atomic/AtomicLong.h"

#define RESTRICT_RxProducer 1
#define INCLUDE_RxProducer 1
#include "rx/Producer.h"

#define RESTRICT_RxSubscription 1
#define INCLUDE_RxSubscription 1
#include "rx/Subscription.h"

@class RxInternalOperatorsOperatorReplay_ReplaySubscriber;
@class RxSubscriber;

/*!
 @brief A Producer and Subscription that manages the request and unsubscription state of a
 child subscriber in thread-safe manner.
 We use AtomicLong as a base class to save on extra allocation of an AtomicLong and also
 save the overhead of the AtomicIntegerFieldUpdater.
 */
@interface RxInternalOperatorsOperatorReplay_InnerProducer : JavaUtilConcurrentAtomicAtomicLong < RxProducer, RxSubscription > {
 @public
  /*!
   @brief The parent subscriber-to-source used to allow removing the child in case of
 child unsubscription.
   */
  RxInternalOperatorsOperatorReplay_ReplaySubscriber *parent_;
  /*!
   @brief The actual child subscriber.
   */
  RxSubscriber *child_;
  /*!
   @brief Holds an object that represents the current location in the buffer.
   Guarded by the emitter loop. 
   */
  id index_;
  /*!
   @brief Keeps the sum of all requested amounts.
   */
  JavaUtilConcurrentAtomicAtomicLong *totalRequested_;
  /*!
   @brief Indicates an emission state.
   Guarded by this. 
   */
  jboolean emitting_;
  /*!
   @brief Indicates a missed update.
   Guarded by this. 
   */
  jboolean missed_;
}

+ (jlong)UNSUBSCRIBED;

#pragma mark Public

- (instancetype)initWithRxInternalOperatorsOperatorReplay_ReplaySubscriber:(RxInternalOperatorsOperatorReplay_ReplaySubscriber *)parent
                                                          withRxSubscriber:(RxSubscriber *)child;

- (jboolean)isUnsubscribed;

/*!
 @brief Indicate that values have been emitted to this child subscriber by the dispatch() method.
 @param n the number of items emitted
 @return the updated request value (may indicate how much can be produced or a terminal state)
 */
- (jlong)producedWithLong:(jlong)n;

- (void)requestWithLong:(jlong)n;

- (void)unsubscribe;

#pragma mark Package-Private

/*!
 @brief Increments the total requested amount.
 @param n the additional request amount
 */
- (void)addTotalRequestedWithLong:(jlong)n;

/*!
 @brief Convenience method to auto-cast the index object.
 */
- (id)index;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorReplay_InnerProducer)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorReplay_InnerProducer, parent_, RxInternalOperatorsOperatorReplay_ReplaySubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorReplay_InnerProducer, child_, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorReplay_InnerProducer, index_, id)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorReplay_InnerProducer, totalRequested_, JavaUtilConcurrentAtomicAtomicLong *)

/*!
 @brief Indicates this child has been unsubscribed: the state is swapped in atomically and
 will prevent the dispatch() to emit (too many) values to a terminated child subscriber.
 */
inline jlong RxInternalOperatorsOperatorReplay_InnerProducer_get_UNSUBSCRIBED();
#define RxInternalOperatorsOperatorReplay_InnerProducer_UNSUBSCRIBED ((jlong) 0x8000000000000000LL)
J2OBJC_STATIC_FIELD_CONSTANT(RxInternalOperatorsOperatorReplay_InnerProducer, UNSUBSCRIBED, jlong)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorReplay_InnerProducer_initWithRxInternalOperatorsOperatorReplay_ReplaySubscriber_withRxSubscriber_(RxInternalOperatorsOperatorReplay_InnerProducer *self, RxInternalOperatorsOperatorReplay_ReplaySubscriber *parent, RxSubscriber *child);

FOUNDATION_EXPORT RxInternalOperatorsOperatorReplay_InnerProducer *new_RxInternalOperatorsOperatorReplay_InnerProducer_initWithRxInternalOperatorsOperatorReplay_ReplaySubscriber_withRxSubscriber_(RxInternalOperatorsOperatorReplay_ReplaySubscriber *parent, RxSubscriber *child) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorReplay_InnerProducer *create_RxInternalOperatorsOperatorReplay_InnerProducer_initWithRxInternalOperatorsOperatorReplay_ReplaySubscriber_withRxSubscriber_(RxInternalOperatorsOperatorReplay_ReplaySubscriber *parent, RxSubscriber *child);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorReplay_InnerProducer)

#endif

#if !defined (RxInternalOperatorsOperatorReplay_ReplayBuffer_) && (INCLUDE_ALL_RxInternalOperatorsOperatorReplay || defined(INCLUDE_RxInternalOperatorsOperatorReplay_ReplayBuffer))
#define RxInternalOperatorsOperatorReplay_ReplayBuffer_

@class RxInternalOperatorsOperatorReplay_InnerProducer;

/*!
 @brief The interface for interacting with various buffering logic.
 */
@protocol RxInternalOperatorsOperatorReplay_ReplayBuffer < JavaObject >

/*!
 @brief Adds a regular value to the buffer.
 @param value
 */
- (void)nextWithId:(id)value;

/*!
 @brief Adds a terminal exception to the buffer
 @param e
 */
- (void)errorWithNSException:(NSException *)e;

/*!
 @brief Adds a completion event to the buffer
 */
- (void)complete;

/*!
 @brief Tries to replay the buffered values to the
 subscriber inside the output if there
 is new value and requests available at the
 same time.
 @param output
 */
- (void)replayWithRxInternalOperatorsOperatorReplay_InnerProducer:(RxInternalOperatorsOperatorReplay_InnerProducer *)output;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorReplay_ReplayBuffer)

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorReplay_ReplayBuffer)

#endif

#if !defined (RxInternalOperatorsOperatorReplay_UnboundedReplayBuffer_) && (INCLUDE_ALL_RxInternalOperatorsOperatorReplay || defined(INCLUDE_RxInternalOperatorsOperatorReplay_UnboundedReplayBuffer))
#define RxInternalOperatorsOperatorReplay_UnboundedReplayBuffer_

#define RESTRICT_JavaUtilArrayList 1
#define INCLUDE_JavaUtilArrayList 1
#include "java/util/ArrayList.h"

@class RxInternalOperatorsNotificationLite;
@class RxInternalOperatorsOperatorReplay_InnerProducer;

/*!
 @brief Holds an unbounded list of events.
 */
@interface RxInternalOperatorsOperatorReplay_UnboundedReplayBuffer : JavaUtilArrayList < RxInternalOperatorsOperatorReplay_ReplayBuffer > {
 @public
  RxInternalOperatorsNotificationLite *nl_;
  /*!
   @brief The total number of events in the buffer.
   */
  volatile_jint size_UnboundedReplayBuffer_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)capacityHint;

- (void)complete;

- (void)errorWithNSException:(NSException *)e;

- (void)nextWithId:(id)value;

- (void)replayWithRxInternalOperatorsOperatorReplay_InnerProducer:(RxInternalOperatorsOperatorReplay_InnerProducer *)output;

#pragma mark Package-Private

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorReplay_UnboundedReplayBuffer)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorReplay_UnboundedReplayBuffer, nl_, RxInternalOperatorsNotificationLite *)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorReplay_UnboundedReplayBuffer_initWithInt_(RxInternalOperatorsOperatorReplay_UnboundedReplayBuffer *self, jint capacityHint);

FOUNDATION_EXPORT RxInternalOperatorsOperatorReplay_UnboundedReplayBuffer *new_RxInternalOperatorsOperatorReplay_UnboundedReplayBuffer_initWithInt_(jint capacityHint) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorReplay_UnboundedReplayBuffer *create_RxInternalOperatorsOperatorReplay_UnboundedReplayBuffer_initWithInt_(jint capacityHint);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorReplay_UnboundedReplayBuffer)

#endif

#if !defined (RxInternalOperatorsOperatorReplay_Node_) && (INCLUDE_ALL_RxInternalOperatorsOperatorReplay || defined(INCLUDE_RxInternalOperatorsOperatorReplay_Node))
#define RxInternalOperatorsOperatorReplay_Node_

#define RESTRICT_JavaUtilConcurrentAtomicAtomicReference 1
#define INCLUDE_JavaUtilConcurrentAtomicAtomicReference 1
#include "java/util/concurrent/atomic/AtomicReference.h"

/*!
 @brief Represents a node in a bounded replay buffer's linked list.
 */
@interface RxInternalOperatorsOperatorReplay_Node : JavaUtilConcurrentAtomicAtomicReference {
 @public
  /*!
   @brief The contained value.
   */
  id value_Node_;
  /*!
   @brief The absolute index of the value.
   */
  jlong index_;
}

#pragma mark Public

- (instancetype)initWithId:(id)value
                  withLong:(jlong)index;

- (RxInternalOperatorsOperatorReplay_Node *)get;

- (RxInternalOperatorsOperatorReplay_Node *)getAndSetWithId:(RxInternalOperatorsOperatorReplay_Node *)arg0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorReplay_Node)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorReplay_Node, value_Node_, id)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorReplay_Node_initWithId_withLong_(RxInternalOperatorsOperatorReplay_Node *self, id value, jlong index);

FOUNDATION_EXPORT RxInternalOperatorsOperatorReplay_Node *new_RxInternalOperatorsOperatorReplay_Node_initWithId_withLong_(id value, jlong index) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorReplay_Node *create_RxInternalOperatorsOperatorReplay_Node_initWithId_withLong_(id value, jlong index);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorReplay_Node)

#endif

#if !defined (RxInternalOperatorsOperatorReplay_BoundedReplayBuffer_) && (INCLUDE_ALL_RxInternalOperatorsOperatorReplay || defined(INCLUDE_RxInternalOperatorsOperatorReplay_BoundedReplayBuffer))
#define RxInternalOperatorsOperatorReplay_BoundedReplayBuffer_

#define RESTRICT_JavaUtilConcurrentAtomicAtomicReference 1
#define INCLUDE_JavaUtilConcurrentAtomicAtomicReference 1
#include "java/util/concurrent/atomic/AtomicReference.h"

@class RxInternalOperatorsNotificationLite;
@class RxInternalOperatorsOperatorReplay_InnerProducer;
@class RxInternalOperatorsOperatorReplay_Node;
@protocol JavaUtilCollection;

/*!
 @brief Base class for bounded buffering with options to specify an
 enter and leave transforms and custom truncation behavior.
 */
@interface RxInternalOperatorsOperatorReplay_BoundedReplayBuffer : JavaUtilConcurrentAtomicAtomicReference < RxInternalOperatorsOperatorReplay_ReplayBuffer > {
 @public
  RxInternalOperatorsNotificationLite *nl_;
  RxInternalOperatorsOperatorReplay_Node *tail_;
  jint size_;
  /*!
   @brief The total number of received values so far.
   */
  jlong index_;
}

#pragma mark Public

- (instancetype)init;

- (void)complete;

- (void)errorWithNSException:(NSException *)e;

- (RxInternalOperatorsOperatorReplay_Node *)get;

- (RxInternalOperatorsOperatorReplay_Node *)getAndSetWithId:(RxInternalOperatorsOperatorReplay_Node *)arg0;

- (void)nextWithId:(id)value;

- (void)replayWithRxInternalOperatorsOperatorReplay_InnerProducer:(RxInternalOperatorsOperatorReplay_InnerProducer *)output;

#pragma mark Package-Private

/*!
 @brief Add a new node to the linked list.
 @param n
 */
- (void)addLastWithRxInternalOperatorsOperatorReplay_Node:(RxInternalOperatorsOperatorReplay_Node *)n;

- (void)collectWithJavaUtilCollection:(id<JavaUtilCollection>)output;

/*!
 @brief Override this to wrap the NotificationLite object into a
 container to be used later by truncate.
 @param value
 */
- (id)enterTransformWithId:(id)value;

- (jboolean)hasCompleted;

- (jboolean)hasError;

/*!
 @brief Override this to unwrap the transformed value into a
 NotificationLite object.
 @param value
 */
- (id)leaveTransformWithId:(id)value;

/*!
 @brief Remove the first node from the linked list.
 */
- (void)removeFirst;

- (void)removeSomeWithInt:(jint)n;

/*!
 @brief Arranges the given node is the new head from now on.
 @param n
 */
- (void)setFirstWithRxInternalOperatorsOperatorReplay_Node:(RxInternalOperatorsOperatorReplay_Node *)n;

/*!
 @brief Override this method to truncate a non-terminated buffer
 based on its current properties.
 */
- (void)truncate;

/*!
 @brief Override this method to truncate a terminated buffer
 based on its properties (i.e., truncate but the very last node).
 */
- (void)truncateFinal;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorReplay_BoundedReplayBuffer)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorReplay_BoundedReplayBuffer, nl_, RxInternalOperatorsNotificationLite *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorReplay_BoundedReplayBuffer, tail_, RxInternalOperatorsOperatorReplay_Node *)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorReplay_BoundedReplayBuffer_init(RxInternalOperatorsOperatorReplay_BoundedReplayBuffer *self);

FOUNDATION_EXPORT RxInternalOperatorsOperatorReplay_BoundedReplayBuffer *new_RxInternalOperatorsOperatorReplay_BoundedReplayBuffer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorReplay_BoundedReplayBuffer *create_RxInternalOperatorsOperatorReplay_BoundedReplayBuffer_init();

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorReplay_BoundedReplayBuffer)

#endif

#if !defined (RxInternalOperatorsOperatorReplay_SizeBoundReplayBuffer_) && (INCLUDE_ALL_RxInternalOperatorsOperatorReplay || defined(INCLUDE_RxInternalOperatorsOperatorReplay_SizeBoundReplayBuffer))
#define RxInternalOperatorsOperatorReplay_SizeBoundReplayBuffer_

@class RxInternalOperatorsOperatorReplay_Node;

/*!
 @brief A bounded replay buffer implementation with size limit only.
 */
@interface RxInternalOperatorsOperatorReplay_SizeBoundReplayBuffer : RxInternalOperatorsOperatorReplay_BoundedReplayBuffer {
 @public
  jint limit_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)limit;

- (RxInternalOperatorsOperatorReplay_Node *)get;

- (RxInternalOperatorsOperatorReplay_Node *)getAndSetWithId:(RxInternalOperatorsOperatorReplay_Node *)arg0;

#pragma mark Package-Private

- (void)truncate;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorReplay_SizeBoundReplayBuffer)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorReplay_SizeBoundReplayBuffer_initWithInt_(RxInternalOperatorsOperatorReplay_SizeBoundReplayBuffer *self, jint limit);

FOUNDATION_EXPORT RxInternalOperatorsOperatorReplay_SizeBoundReplayBuffer *new_RxInternalOperatorsOperatorReplay_SizeBoundReplayBuffer_initWithInt_(jint limit) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorReplay_SizeBoundReplayBuffer *create_RxInternalOperatorsOperatorReplay_SizeBoundReplayBuffer_initWithInt_(jint limit);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorReplay_SizeBoundReplayBuffer)

#endif

#if !defined (RxInternalOperatorsOperatorReplay_SizeAndTimeBoundReplayBuffer_) && (INCLUDE_ALL_RxInternalOperatorsOperatorReplay || defined(INCLUDE_RxInternalOperatorsOperatorReplay_SizeAndTimeBoundReplayBuffer))
#define RxInternalOperatorsOperatorReplay_SizeAndTimeBoundReplayBuffer_

@class RxInternalOperatorsOperatorReplay_Node;
@class RxScheduler;

/*!
 @brief Size and time bound replay buffer.
 */
@interface RxInternalOperatorsOperatorReplay_SizeAndTimeBoundReplayBuffer : RxInternalOperatorsOperatorReplay_BoundedReplayBuffer {
 @public
  RxScheduler *scheduler_;
  jlong maxAgeInMillis_;
  jint limit_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)limit
                   withLong:(jlong)maxAgeInMillis
            withRxScheduler:(RxScheduler *)scheduler;

- (RxInternalOperatorsOperatorReplay_Node *)get;

- (RxInternalOperatorsOperatorReplay_Node *)getAndSetWithId:(RxInternalOperatorsOperatorReplay_Node *)arg0;

#pragma mark Package-Private

- (id)enterTransformWithId:(id)value;

- (id)leaveTransformWithId:(id)value;

- (void)truncate;

- (void)truncateFinal;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorReplay_SizeAndTimeBoundReplayBuffer)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorReplay_SizeAndTimeBoundReplayBuffer, scheduler_, RxScheduler *)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorReplay_SizeAndTimeBoundReplayBuffer_initWithInt_withLong_withRxScheduler_(RxInternalOperatorsOperatorReplay_SizeAndTimeBoundReplayBuffer *self, jint limit, jlong maxAgeInMillis, RxScheduler *scheduler);

FOUNDATION_EXPORT RxInternalOperatorsOperatorReplay_SizeAndTimeBoundReplayBuffer *new_RxInternalOperatorsOperatorReplay_SizeAndTimeBoundReplayBuffer_initWithInt_withLong_withRxScheduler_(jint limit, jlong maxAgeInMillis, RxScheduler *scheduler) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorReplay_SizeAndTimeBoundReplayBuffer *create_RxInternalOperatorsOperatorReplay_SizeAndTimeBoundReplayBuffer_initWithInt_withLong_withRxScheduler_(jint limit, jlong maxAgeInMillis, RxScheduler *scheduler);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorReplay_SizeAndTimeBoundReplayBuffer)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOperatorReplay")