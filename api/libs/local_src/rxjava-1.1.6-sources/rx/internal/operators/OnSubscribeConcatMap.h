//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OnSubscribeConcatMap.java
//

/*!
 @brief Copyright 2016 Netflix, Inc.
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

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOnSubscribeConcatMap")
#ifdef RESTRICT_RxInternalOperatorsOnSubscribeConcatMap
#define INCLUDE_ALL_RxInternalOperatorsOnSubscribeConcatMap 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOnSubscribeConcatMap 1
#endif
#undef RESTRICT_RxInternalOperatorsOnSubscribeConcatMap

#if !defined (RxInternalOperatorsOnSubscribeConcatMap_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeConcatMap || defined(INCLUDE_RxInternalOperatorsOnSubscribeConcatMap))
#define RxInternalOperatorsOnSubscribeConcatMap_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_OnSubscribe 1
#include "rx/Observable.h"

@class RxObservable;
@class RxSubscriber;
@protocol RxFunctionsFunc1;

/*!
 @brief Maps a source sequence into Observables and concatenates them in order, subscribing
 to one at a time.
 @since 1.1.2
 */
@interface RxInternalOperatorsOnSubscribeConcatMap : NSObject < RxObservable_OnSubscribe > {
 @public
  RxObservable *source_;
  id<RxFunctionsFunc1> mapper_;
  jint prefetch_;
  /*!
   @brief How to handle errors from the main and inner Observables.
   See the constants below.
   */
  jint delayErrorMode_;
}

+ (jint)IMMEDIATE;

+ (jint)BOUNDARY;

+ (jint)END;

#pragma mark Public

- (instancetype)initWithRxObservable:(RxObservable *)source
                withRxFunctionsFunc1:(id<RxFunctionsFunc1>)mapper
                             withInt:(jint)prefetch
                             withInt:(jint)delayErrorMode;

- (void)callWithId:(RxSubscriber *)child;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeConcatMap)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeConcatMap, source_, RxObservable *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeConcatMap, mapper_, id<RxFunctionsFunc1>)

/*!
 @brief Whenever any Observable fires an error, terminate with that error immediately.
 */
inline jint RxInternalOperatorsOnSubscribeConcatMap_get_IMMEDIATE();
#define RxInternalOperatorsOnSubscribeConcatMap_IMMEDIATE 0
J2OBJC_STATIC_FIELD_CONSTANT(RxInternalOperatorsOnSubscribeConcatMap, IMMEDIATE, jint)

/*!
 @brief Whenever the main fires an error, wait until the inner terminates.
 */
inline jint RxInternalOperatorsOnSubscribeConcatMap_get_BOUNDARY();
#define RxInternalOperatorsOnSubscribeConcatMap_BOUNDARY 1
J2OBJC_STATIC_FIELD_CONSTANT(RxInternalOperatorsOnSubscribeConcatMap, BOUNDARY, jint)

/*!
 @brief Delay all errors to the very end.
 */
inline jint RxInternalOperatorsOnSubscribeConcatMap_get_END();
#define RxInternalOperatorsOnSubscribeConcatMap_END 2
J2OBJC_STATIC_FIELD_CONSTANT(RxInternalOperatorsOnSubscribeConcatMap, END, jint)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeConcatMap_initWithRxObservable_withRxFunctionsFunc1_withInt_withInt_(RxInternalOperatorsOnSubscribeConcatMap *self, RxObservable *source, id<RxFunctionsFunc1> mapper, jint prefetch, jint delayErrorMode);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeConcatMap *new_RxInternalOperatorsOnSubscribeConcatMap_initWithRxObservable_withRxFunctionsFunc1_withInt_withInt_(RxObservable *source, id<RxFunctionsFunc1> mapper, jint prefetch, jint delayErrorMode) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeConcatMap *create_RxInternalOperatorsOnSubscribeConcatMap_initWithRxObservable_withRxFunctionsFunc1_withInt_withInt_(RxObservable *source, id<RxFunctionsFunc1> mapper, jint prefetch, jint delayErrorMode);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeConcatMap)

#endif

#if !defined (RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeConcatMap || defined(INCLUDE_RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber))
#define RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber_

#define RESTRICT_RxSubscriber 1
#define INCLUDE_RxSubscriber 1
#include "rx/Subscriber.h"

@class JavaUtilConcurrentAtomicAtomicInteger;
@class JavaUtilConcurrentAtomicAtomicReference;
@class RxInternalProducersProducerArbiter;
@class RxSubscriptionsSerialSubscription;
@protocol JavaUtilQueue;
@protocol RxFunctionsFunc1;

@interface RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber : RxSubscriber {
 @public
  RxSubscriber *actual_;
  id<RxFunctionsFunc1> mapper_;
  jint delayErrorMode_;
  RxInternalProducersProducerArbiter *arbiter_;
  id<JavaUtilQueue> queue_;
  JavaUtilConcurrentAtomicAtomicInteger *wip_;
  JavaUtilConcurrentAtomicAtomicReference *error_;
  RxSubscriptionsSerialSubscription *inner_;
  volatile_jboolean done_;
  volatile_jboolean active_;
}

#pragma mark Public

- (instancetype)initWithRxSubscriber:(RxSubscriber *)actual
                withRxFunctionsFunc1:(id<RxFunctionsFunc1>)mapper
                             withInt:(jint)prefetch
                             withInt:(jint)delayErrorMode;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)mainError;

- (void)onNextWithId:(id)t;

#pragma mark Package-Private

- (void)drain;

- (void)drainErrorWithNSException:(NSException *)mapperError;

- (void)innerCompletedWithLong:(jlong)produced;

- (void)innerErrorWithNSException:(NSException *)innerError
                         withLong:(jlong)produced;

- (void)innerNextWithId:(id)value;

- (void)pluginErrorWithNSException:(NSException *)e;

- (void)requestMoreWithLong:(jlong)n;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber, actual_, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber, mapper_, id<RxFunctionsFunc1>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber, arbiter_, RxInternalProducersProducerArbiter *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber, queue_, id<JavaUtilQueue>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber, wip_, JavaUtilConcurrentAtomicAtomicInteger *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber, error_, JavaUtilConcurrentAtomicAtomicReference *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber, inner_, RxSubscriptionsSerialSubscription *)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber_initWithRxSubscriber_withRxFunctionsFunc1_withInt_withInt_(RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber *self, RxSubscriber *actual, id<RxFunctionsFunc1> mapper, jint prefetch, jint delayErrorMode);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber *new_RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber_initWithRxSubscriber_withRxFunctionsFunc1_withInt_withInt_(RxSubscriber *actual, id<RxFunctionsFunc1> mapper, jint prefetch, jint delayErrorMode) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber *create_RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber_initWithRxSubscriber_withRxFunctionsFunc1_withInt_withInt_(RxSubscriber *actual, id<RxFunctionsFunc1> mapper, jint prefetch, jint delayErrorMode);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber)

#endif

#if !defined (RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerSubscriber_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeConcatMap || defined(INCLUDE_RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerSubscriber))
#define RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerSubscriber_

#define RESTRICT_RxSubscriber 1
#define INCLUDE_RxSubscriber 1
#include "rx/Subscriber.h"

@class RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber;
@protocol RxProducer;

@interface RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerSubscriber : RxSubscriber {
 @public
  RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber *parent_;
  jlong produced_;
}

#pragma mark Public

- (instancetype)initWithRxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber:(RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber *)parent;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)t;

- (void)setProducerWithRxProducer:(id<RxProducer>)p;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerSubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerSubscriber, parent_, RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber *)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerSubscriber_initWithRxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber_(RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerSubscriber *self, RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber *parent);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerSubscriber *new_RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerSubscriber_initWithRxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber_(RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber *parent) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerSubscriber *create_RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerSubscriber_initWithRxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber_(RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber *parent);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerSubscriber)

#endif

#if !defined (RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerScalarProducer_) && (INCLUDE_ALL_RxInternalOperatorsOnSubscribeConcatMap || defined(INCLUDE_RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerScalarProducer))
#define RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerScalarProducer_

#define RESTRICT_RxProducer 1
#define INCLUDE_RxProducer 1
#include "rx/Producer.h"

@class RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber;

@interface RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerScalarProducer : NSObject < RxProducer > {
 @public
  id value_;
  RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber *parent_;
  jboolean once_;
}

#pragma mark Public

- (instancetype)initWithId:(id)value
withRxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber:(RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber *)parent;

- (void)requestWithLong:(jlong)n;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerScalarProducer)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerScalarProducer, value_, id)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerScalarProducer, parent_, RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber *)

FOUNDATION_EXPORT void RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerScalarProducer_initWithId_withRxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber_(RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerScalarProducer *self, id value, RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber *parent);

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerScalarProducer *new_RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerScalarProducer_initWithId_withRxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber_(id value, RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber *parent) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerScalarProducer *create_RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerScalarProducer_initWithId_withRxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber_(id value, RxInternalOperatorsOnSubscribeConcatMap_ConcatMapSubscriber *parent);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeConcatMap_ConcatMapInnerScalarProducer)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOnSubscribeConcatMap")