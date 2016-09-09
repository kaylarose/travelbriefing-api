//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorMulticast.java
//

/*!
 @brief Copyright 2014 Netflix, Inc.
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

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOperatorMulticast")
#ifdef RESTRICT_RxInternalOperatorsOperatorMulticast
#define INCLUDE_ALL_RxInternalOperatorsOperatorMulticast 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOperatorMulticast 1
#endif
#undef RESTRICT_RxInternalOperatorsOperatorMulticast

#if !defined (RxInternalOperatorsOperatorMulticast_) && (INCLUDE_ALL_RxInternalOperatorsOperatorMulticast || defined(INCLUDE_RxInternalOperatorsOperatorMulticast))
#define RxInternalOperatorsOperatorMulticast_

#define RESTRICT_RxObservablesConnectableObservable 1
#define INCLUDE_RxObservablesConnectableObservable 1
#include "rx/observables/ConnectableObservable.h"

@class JavaUtilConcurrentAtomicAtomicReference;
@class RxObservable;
@class RxSubscriber;
@protocol JavaUtilList;
@protocol RxFunctionsAction1;
@protocol RxFunctionsFunc0;
@protocol RxSubscription;

/*!
 @brief Shares a single subscription to a source through a Subject.
 */
@interface RxInternalOperatorsOperatorMulticast : RxObservablesConnectableObservable {
 @public
  RxObservable *source_;
  id guard_;
  id<RxFunctionsFunc0> subjectFactory_;
  JavaUtilConcurrentAtomicAtomicReference *connectedSubject_;
  id<JavaUtilList> waitingForConnect_;
  /*!
   @brief Guarded by guard.
   */
  RxSubscriber *subscription_;
  id<RxSubscription> guardedSubscription_;
}

#pragma mark Public

- (instancetype)initWithRxObservable:(RxObservable *)source
                withRxFunctionsFunc0:(id<RxFunctionsFunc0>)subjectFactory;

- (void)connectWithRxFunctionsAction1:(id<RxFunctionsAction1>)connection;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorMulticast)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorMulticast, source_, RxObservable *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorMulticast, guard_, id)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorMulticast, subjectFactory_, id<RxFunctionsFunc0>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorMulticast, connectedSubject_, JavaUtilConcurrentAtomicAtomicReference *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorMulticast, waitingForConnect_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorMulticast, subscription_, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorMulticast, guardedSubscription_, id<RxSubscription>)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorMulticast_initWithRxObservable_withRxFunctionsFunc0_(RxInternalOperatorsOperatorMulticast *self, RxObservable *source, id<RxFunctionsFunc0> subjectFactory);

FOUNDATION_EXPORT RxInternalOperatorsOperatorMulticast *new_RxInternalOperatorsOperatorMulticast_initWithRxObservable_withRxFunctionsFunc0_(RxObservable *source, id<RxFunctionsFunc0> subjectFactory) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorMulticast *create_RxInternalOperatorsOperatorMulticast_initWithRxObservable_withRxFunctionsFunc0_(RxObservable *source, id<RxFunctionsFunc0> subjectFactory);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorMulticast)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOperatorMulticast")