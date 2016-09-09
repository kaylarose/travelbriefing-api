//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/schedulers/CachedThreadScheduler.java
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

#pragma push_macro("INCLUDE_ALL_RxInternalSchedulersCachedThreadScheduler")
#ifdef RESTRICT_RxInternalSchedulersCachedThreadScheduler
#define INCLUDE_ALL_RxInternalSchedulersCachedThreadScheduler 0
#else
#define INCLUDE_ALL_RxInternalSchedulersCachedThreadScheduler 1
#endif
#undef RESTRICT_RxInternalSchedulersCachedThreadScheduler

#if !defined (RxInternalSchedulersCachedThreadScheduler_) && (INCLUDE_ALL_RxInternalSchedulersCachedThreadScheduler || defined(INCLUDE_RxInternalSchedulersCachedThreadScheduler))
#define RxInternalSchedulersCachedThreadScheduler_

#define RESTRICT_RxScheduler 1
#define INCLUDE_RxScheduler 1
#include "rx/Scheduler.h"

#define RESTRICT_RxInternalSchedulersSchedulerLifecycle 1
#define INCLUDE_RxInternalSchedulersSchedulerLifecycle 1
#include "rx/internal/schedulers/SchedulerLifecycle.h"

@class JavaUtilConcurrentAtomicAtomicReference;
@class RxInternalSchedulersCachedThreadScheduler_CachedWorkerPool;
@class RxInternalSchedulersCachedThreadScheduler_ThreadWorker;
@class RxScheduler_Worker;
@protocol JavaUtilConcurrentThreadFactory;

@interface RxInternalSchedulersCachedThreadScheduler : RxScheduler < RxInternalSchedulersSchedulerLifecycle > {
 @public
  id<JavaUtilConcurrentThreadFactory> threadFactory_;
  JavaUtilConcurrentAtomicAtomicReference *pool_;
}

+ (RxInternalSchedulersCachedThreadScheduler_ThreadWorker *)SHUTDOWN_THREADWORKER;

+ (RxInternalSchedulersCachedThreadScheduler_CachedWorkerPool *)NONE;

#pragma mark Public

- (instancetype)initWithJavaUtilConcurrentThreadFactory:(id<JavaUtilConcurrentThreadFactory>)threadFactory;

- (RxScheduler_Worker *)createWorker;

- (void)shutdown;

- (void)start;

@end

J2OBJC_STATIC_INIT(RxInternalSchedulersCachedThreadScheduler)

J2OBJC_FIELD_SETTER(RxInternalSchedulersCachedThreadScheduler, threadFactory_, id<JavaUtilConcurrentThreadFactory>)
J2OBJC_FIELD_SETTER(RxInternalSchedulersCachedThreadScheduler, pool_, JavaUtilConcurrentAtomicAtomicReference *)

inline RxInternalSchedulersCachedThreadScheduler_ThreadWorker *RxInternalSchedulersCachedThreadScheduler_get_SHUTDOWN_THREADWORKER();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT RxInternalSchedulersCachedThreadScheduler_ThreadWorker *RxInternalSchedulersCachedThreadScheduler_SHUTDOWN_THREADWORKER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxInternalSchedulersCachedThreadScheduler, SHUTDOWN_THREADWORKER, RxInternalSchedulersCachedThreadScheduler_ThreadWorker *)

inline RxInternalSchedulersCachedThreadScheduler_CachedWorkerPool *RxInternalSchedulersCachedThreadScheduler_get_NONE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT RxInternalSchedulersCachedThreadScheduler_CachedWorkerPool *RxInternalSchedulersCachedThreadScheduler_NONE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxInternalSchedulersCachedThreadScheduler, NONE, RxInternalSchedulersCachedThreadScheduler_CachedWorkerPool *)

FOUNDATION_EXPORT void RxInternalSchedulersCachedThreadScheduler_initWithJavaUtilConcurrentThreadFactory_(RxInternalSchedulersCachedThreadScheduler *self, id<JavaUtilConcurrentThreadFactory> threadFactory);

FOUNDATION_EXPORT RxInternalSchedulersCachedThreadScheduler *new_RxInternalSchedulersCachedThreadScheduler_initWithJavaUtilConcurrentThreadFactory_(id<JavaUtilConcurrentThreadFactory> threadFactory) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalSchedulersCachedThreadScheduler *create_RxInternalSchedulersCachedThreadScheduler_initWithJavaUtilConcurrentThreadFactory_(id<JavaUtilConcurrentThreadFactory> threadFactory);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalSchedulersCachedThreadScheduler)

#endif

#if !defined (RxInternalSchedulersCachedThreadScheduler_CachedWorkerPool_) && (INCLUDE_ALL_RxInternalSchedulersCachedThreadScheduler || defined(INCLUDE_RxInternalSchedulersCachedThreadScheduler_CachedWorkerPool))
#define RxInternalSchedulersCachedThreadScheduler_CachedWorkerPool_

@class JavaUtilConcurrentTimeUnit;
@class RxInternalSchedulersCachedThreadScheduler_ThreadWorker;
@protocol JavaUtilConcurrentThreadFactory;

@interface RxInternalSchedulersCachedThreadScheduler_CachedWorkerPool : NSObject

#pragma mark Package-Private

- (instancetype)initWithJavaUtilConcurrentThreadFactory:(id<JavaUtilConcurrentThreadFactory>)threadFactory
                                               withLong:(jlong)keepAliveTime
                         withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit;

- (void)evictExpiredWorkers;

- (RxInternalSchedulersCachedThreadScheduler_ThreadWorker *)get;

- (jlong)now;

- (void)release__WithRxInternalSchedulersCachedThreadScheduler_ThreadWorker:(RxInternalSchedulersCachedThreadScheduler_ThreadWorker *)threadWorker;

- (void)shutdown;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalSchedulersCachedThreadScheduler_CachedWorkerPool)

FOUNDATION_EXPORT void RxInternalSchedulersCachedThreadScheduler_CachedWorkerPool_initWithJavaUtilConcurrentThreadFactory_withLong_withJavaUtilConcurrentTimeUnit_(RxInternalSchedulersCachedThreadScheduler_CachedWorkerPool *self, id<JavaUtilConcurrentThreadFactory> threadFactory, jlong keepAliveTime, JavaUtilConcurrentTimeUnit *unit);

FOUNDATION_EXPORT RxInternalSchedulersCachedThreadScheduler_CachedWorkerPool *new_RxInternalSchedulersCachedThreadScheduler_CachedWorkerPool_initWithJavaUtilConcurrentThreadFactory_withLong_withJavaUtilConcurrentTimeUnit_(id<JavaUtilConcurrentThreadFactory> threadFactory, jlong keepAliveTime, JavaUtilConcurrentTimeUnit *unit) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalSchedulersCachedThreadScheduler_CachedWorkerPool *create_RxInternalSchedulersCachedThreadScheduler_CachedWorkerPool_initWithJavaUtilConcurrentThreadFactory_withLong_withJavaUtilConcurrentTimeUnit_(id<JavaUtilConcurrentThreadFactory> threadFactory, jlong keepAliveTime, JavaUtilConcurrentTimeUnit *unit);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalSchedulersCachedThreadScheduler_CachedWorkerPool)

#endif

#if !defined (RxInternalSchedulersCachedThreadScheduler_ThreadWorker_) && (INCLUDE_ALL_RxInternalSchedulersCachedThreadScheduler || defined(INCLUDE_RxInternalSchedulersCachedThreadScheduler_ThreadWorker))
#define RxInternalSchedulersCachedThreadScheduler_ThreadWorker_

#define RESTRICT_RxInternalSchedulersNewThreadWorker 1
#define INCLUDE_RxInternalSchedulersNewThreadWorker 1
#include "rx/internal/schedulers/NewThreadWorker.h"

@protocol JavaUtilConcurrentThreadFactory;

@interface RxInternalSchedulersCachedThreadScheduler_ThreadWorker : RxInternalSchedulersNewThreadWorker

#pragma mark Public

- (jlong)getExpirationTime;

- (void)setExpirationTimeWithLong:(jlong)expirationTime;

#pragma mark Package-Private

- (instancetype)initWithJavaUtilConcurrentThreadFactory:(id<JavaUtilConcurrentThreadFactory>)threadFactory;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalSchedulersCachedThreadScheduler_ThreadWorker)

FOUNDATION_EXPORT void RxInternalSchedulersCachedThreadScheduler_ThreadWorker_initWithJavaUtilConcurrentThreadFactory_(RxInternalSchedulersCachedThreadScheduler_ThreadWorker *self, id<JavaUtilConcurrentThreadFactory> threadFactory);

FOUNDATION_EXPORT RxInternalSchedulersCachedThreadScheduler_ThreadWorker *new_RxInternalSchedulersCachedThreadScheduler_ThreadWorker_initWithJavaUtilConcurrentThreadFactory_(id<JavaUtilConcurrentThreadFactory> threadFactory) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalSchedulersCachedThreadScheduler_ThreadWorker *create_RxInternalSchedulersCachedThreadScheduler_ThreadWorker_initWithJavaUtilConcurrentThreadFactory_(id<JavaUtilConcurrentThreadFactory> threadFactory);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalSchedulersCachedThreadScheduler_ThreadWorker)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalSchedulersCachedThreadScheduler")
