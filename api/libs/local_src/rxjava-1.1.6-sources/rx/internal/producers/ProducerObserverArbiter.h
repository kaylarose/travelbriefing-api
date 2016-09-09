//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/producers/ProducerObserverArbiter.java
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

#pragma push_macro("INCLUDE_ALL_RxInternalProducersProducerObserverArbiter")
#ifdef RESTRICT_RxInternalProducersProducerObserverArbiter
#define INCLUDE_ALL_RxInternalProducersProducerObserverArbiter 0
#else
#define INCLUDE_ALL_RxInternalProducersProducerObserverArbiter 1
#endif
#undef RESTRICT_RxInternalProducersProducerObserverArbiter

#if !defined (RxInternalProducersProducerObserverArbiter_) && (INCLUDE_ALL_RxInternalProducersProducerObserverArbiter || defined(INCLUDE_RxInternalProducersProducerObserverArbiter))
#define RxInternalProducersProducerObserverArbiter_

#define RESTRICT_RxProducer 1
#define INCLUDE_RxProducer 1
#include "rx/Producer.h"

#define RESTRICT_RxObserver 1
#define INCLUDE_RxObserver 1
#include "rx/Observer.h"

@class RxSubscriber;
@protocol JavaUtilList;

/*!
 @brief Producer that serializes any event emission with requesting and producer changes.
 <p>
 The implementation shortcuts on error and overwrites producers that got delayed, similar
 to ProducerArbiter.
 */
@interface RxInternalProducersProducerObserverArbiter : NSObject < RxProducer, RxObserver > {
 @public
  RxSubscriber *child_;
  jboolean emitting_;
  id<JavaUtilList> queue_;
  id<RxProducer> currentProducer_;
  jlong requested_;
  jlong missedRequested_;
  id<RxProducer> missedProducer_;
  id missedTerminal_;
  volatile_jboolean hasError_;
}

+ (id<RxProducer>)NULL_PRODUCER;

#pragma mark Public

- (instancetype)initWithRxSubscriber:(RxSubscriber *)child;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)t;

- (void)requestWithLong:(jlong)n;

- (void)setProducerWithRxProducer:(id<RxProducer>)p;

#pragma mark Package-Private

- (void)emitLoop;

@end

J2OBJC_STATIC_INIT(RxInternalProducersProducerObserverArbiter)

J2OBJC_FIELD_SETTER(RxInternalProducersProducerObserverArbiter, child_, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalProducersProducerObserverArbiter, queue_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(RxInternalProducersProducerObserverArbiter, currentProducer_, id<RxProducer>)
J2OBJC_FIELD_SETTER(RxInternalProducersProducerObserverArbiter, missedProducer_, id<RxProducer>)
J2OBJC_FIELD_SETTER(RxInternalProducersProducerObserverArbiter, missedTerminal_, id)

inline id<RxProducer> RxInternalProducersProducerObserverArbiter_get_NULL_PRODUCER();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id<RxProducer> RxInternalProducersProducerObserverArbiter_NULL_PRODUCER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxInternalProducersProducerObserverArbiter, NULL_PRODUCER, id<RxProducer>)

FOUNDATION_EXPORT void RxInternalProducersProducerObserverArbiter_initWithRxSubscriber_(RxInternalProducersProducerObserverArbiter *self, RxSubscriber *child);

FOUNDATION_EXPORT RxInternalProducersProducerObserverArbiter *new_RxInternalProducersProducerObserverArbiter_initWithRxSubscriber_(RxSubscriber *child) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalProducersProducerObserverArbiter *create_RxInternalProducersProducerObserverArbiter_initWithRxSubscriber_(RxSubscriber *child);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalProducersProducerObserverArbiter)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalProducersProducerObserverArbiter")
