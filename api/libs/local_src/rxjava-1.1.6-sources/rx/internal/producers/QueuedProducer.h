//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/producers/QueuedProducer.java
//

/*!
 @brief Copyright 2015 Netflix, Inc.
 Licensed under the Apache License, Version 2.0 (the "License"); you may not
 use this file except in compliance with the License. You may obtain a copy of
 the License at
 http://www.apache.org/licenses/LICENSE-2.0
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 License for the specific language governing permissions and limitations under
 the License.
 */
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalProducersQueuedProducer")
#ifdef RESTRICT_RxInternalProducersQueuedProducer
#define INCLUDE_ALL_RxInternalProducersQueuedProducer 0
#else
#define INCLUDE_ALL_RxInternalProducersQueuedProducer 1
#endif
#undef RESTRICT_RxInternalProducersQueuedProducer

#if !defined (RxInternalProducersQueuedProducer_) && (INCLUDE_ALL_RxInternalProducersQueuedProducer || defined(INCLUDE_RxInternalProducersQueuedProducer))
#define RxInternalProducersQueuedProducer_

#define RESTRICT_JavaUtilConcurrentAtomicAtomicLong 1
#define INCLUDE_JavaUtilConcurrentAtomicAtomicLong 1
#include "java/util/concurrent/atomic/AtomicLong.h"

#define RESTRICT_RxProducer 1
#define INCLUDE_RxProducer 1
#include "rx/Producer.h"

#define RESTRICT_RxObserver 1
#define INCLUDE_RxObserver 1
#include "rx/Observer.h"

@class JavaUtilConcurrentAtomicAtomicInteger;
@class RxSubscriber;
@protocol JavaUtilQueue;

/*!
 @brief Producer that holds an unbounded (or custom) queue, handles terminal events, 
 enqueues values and relays them to a child subscriber on request.
 */
@interface RxInternalProducersQueuedProducer : JavaUtilConcurrentAtomicAtomicLong < RxProducer, RxObserver > {
 @public
  RxSubscriber *child_;
  id<JavaUtilQueue> queue_;
  JavaUtilConcurrentAtomicAtomicInteger *wip_;
  NSException *error_;
  volatile_jboolean done_;
}

+ (id)NULL_SENTINEL;

#pragma mark Public

/*!
 @brief Constructs an instance with the target child subscriber and an Spsc Linked (Atomic) Queue
 as the queue implementation.
 @param child the target child subscriber
 */
- (instancetype)initWithRxSubscriber:(RxSubscriber *)child;

/*!
 @brief Constructs an instance with the target child subscriber and a custom queue implementation
 @param child the target child subscriber
 @param queue the queue to use
 */
- (instancetype)initWithRxSubscriber:(RxSubscriber *)child
                   withJavaUtilQueue:(id<JavaUtilQueue>)queue;

/*!
 @brief Offers a value to this producer and tries to emit any queued values
 if the child requests allow it.
 @param value the value to enqueue and attempt to drain
 @return true if the queue accepted the offer, false otherwise
 */
- (jboolean)offerWithId:(id)value;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)value;

- (void)requestWithLong:(jlong)n;

@end

J2OBJC_STATIC_INIT(RxInternalProducersQueuedProducer)

J2OBJC_FIELD_SETTER(RxInternalProducersQueuedProducer, child_, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalProducersQueuedProducer, queue_, id<JavaUtilQueue>)
J2OBJC_FIELD_SETTER(RxInternalProducersQueuedProducer, wip_, JavaUtilConcurrentAtomicAtomicInteger *)
J2OBJC_FIELD_SETTER(RxInternalProducersQueuedProducer, error_, NSException *)

inline id RxInternalProducersQueuedProducer_get_NULL_SENTINEL();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id RxInternalProducersQueuedProducer_NULL_SENTINEL;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxInternalProducersQueuedProducer, NULL_SENTINEL, id)

FOUNDATION_EXPORT void RxInternalProducersQueuedProducer_initWithRxSubscriber_(RxInternalProducersQueuedProducer *self, RxSubscriber *child);

FOUNDATION_EXPORT RxInternalProducersQueuedProducer *new_RxInternalProducersQueuedProducer_initWithRxSubscriber_(RxSubscriber *child) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalProducersQueuedProducer *create_RxInternalProducersQueuedProducer_initWithRxSubscriber_(RxSubscriber *child);

FOUNDATION_EXPORT void RxInternalProducersQueuedProducer_initWithRxSubscriber_withJavaUtilQueue_(RxInternalProducersQueuedProducer *self, RxSubscriber *child, id<JavaUtilQueue> queue);

FOUNDATION_EXPORT RxInternalProducersQueuedProducer *new_RxInternalProducersQueuedProducer_initWithRxSubscriber_withJavaUtilQueue_(RxSubscriber *child, id<JavaUtilQueue> queue) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalProducersQueuedProducer *create_RxInternalProducersQueuedProducer_initWithRxSubscriber_withJavaUtilQueue_(RxSubscriber *child, id<JavaUtilQueue> queue);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalProducersQueuedProducer)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalProducersQueuedProducer")
