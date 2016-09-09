//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/schedulers/EventLoopsScheduler.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "java/lang/Runtime.h"
#include "java/util/concurrent/ThreadFactory.h"
#include "java/util/concurrent/TimeUnit.h"
#include "java/util/concurrent/atomic/AtomicReference.h"
#include "rx/Scheduler.h"
#include "rx/Subscription.h"
#include "rx/functions/Action0.h"
#include "rx/internal/schedulers/EventLoopsScheduler.h"
#include "rx/internal/schedulers/NewThreadWorker.h"
#include "rx/internal/schedulers/ScheduledAction.h"
#include "rx/internal/util/RxThreadFactory.h"
#include "rx/internal/util/SubscriptionList.h"
#include "rx/subscriptions/CompositeSubscription.h"
#include "rx/subscriptions/Subscriptions.h"

@interface RxInternalSchedulersEventLoopsScheduler_EventLoopWorker : RxScheduler_Worker {
 @public
  RxInternalUtilSubscriptionList *serial_;
  RxSubscriptionsCompositeSubscription *timed_;
  RxInternalUtilSubscriptionList *both_;
  RxInternalSchedulersEventLoopsScheduler_PoolWorker *poolWorker_;
}

- (instancetype)initWithRxInternalSchedulersEventLoopsScheduler_PoolWorker:(RxInternalSchedulersEventLoopsScheduler_PoolWorker *)poolWorker;

- (void)unsubscribe;

- (jboolean)isUnsubscribed;

- (id<RxSubscription>)scheduleWithRxFunctionsAction0:(id<RxFunctionsAction0>)action;

- (id<RxSubscription>)scheduleWithRxFunctionsAction0:(id<RxFunctionsAction0>)action
                                            withLong:(jlong)delayTime
                      withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker)

J2OBJC_FIELD_SETTER(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker, serial_, RxInternalUtilSubscriptionList *)
J2OBJC_FIELD_SETTER(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker, timed_, RxSubscriptionsCompositeSubscription *)
J2OBJC_FIELD_SETTER(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker, both_, RxInternalUtilSubscriptionList *)
J2OBJC_FIELD_SETTER(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker, poolWorker_, RxInternalSchedulersEventLoopsScheduler_PoolWorker *)

__attribute__((unused)) static void RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_initWithRxInternalSchedulersEventLoopsScheduler_PoolWorker_(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker *self, RxInternalSchedulersEventLoopsScheduler_PoolWorker *poolWorker);

__attribute__((unused)) static RxInternalSchedulersEventLoopsScheduler_EventLoopWorker *new_RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_initWithRxInternalSchedulersEventLoopsScheduler_PoolWorker_(RxInternalSchedulersEventLoopsScheduler_PoolWorker *poolWorker) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalSchedulersEventLoopsScheduler_EventLoopWorker *create_RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_initWithRxInternalSchedulersEventLoopsScheduler_PoolWorker_(RxInternalSchedulersEventLoopsScheduler_PoolWorker *poolWorker);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker)

@interface RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$1 : NSObject < RxFunctionsAction0 > {
 @public
  RxInternalSchedulersEventLoopsScheduler_EventLoopWorker *this$0_;
  id<RxFunctionsAction0> val$action_;
}

- (void)call;

- (instancetype)initWithRxInternalSchedulersEventLoopsScheduler_EventLoopWorker:(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker *)outer$
                                                         withRxFunctionsAction0:(id<RxFunctionsAction0>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$1)

J2OBJC_FIELD_SETTER(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$1, this$0_, RxInternalSchedulersEventLoopsScheduler_EventLoopWorker *)
J2OBJC_FIELD_SETTER(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$1, val$action_, id<RxFunctionsAction0>)

__attribute__((unused)) static void RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$1_initWithRxInternalSchedulersEventLoopsScheduler_EventLoopWorker_withRxFunctionsAction0_(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$1 *self, RxInternalSchedulersEventLoopsScheduler_EventLoopWorker *outer$, id<RxFunctionsAction0> capture$0);

__attribute__((unused)) static RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$1 *new_RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$1_initWithRxInternalSchedulersEventLoopsScheduler_EventLoopWorker_withRxFunctionsAction0_(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker *outer$, id<RxFunctionsAction0> capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$1 *create_RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$1_initWithRxInternalSchedulersEventLoopsScheduler_EventLoopWorker_withRxFunctionsAction0_(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker *outer$, id<RxFunctionsAction0> capture$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$1)

@interface RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$2 : NSObject < RxFunctionsAction0 > {
 @public
  RxInternalSchedulersEventLoopsScheduler_EventLoopWorker *this$0_;
  id<RxFunctionsAction0> val$action_;
}

- (void)call;

- (instancetype)initWithRxInternalSchedulersEventLoopsScheduler_EventLoopWorker:(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker *)outer$
                                                         withRxFunctionsAction0:(id<RxFunctionsAction0>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$2)

J2OBJC_FIELD_SETTER(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$2, this$0_, RxInternalSchedulersEventLoopsScheduler_EventLoopWorker *)
J2OBJC_FIELD_SETTER(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$2, val$action_, id<RxFunctionsAction0>)

__attribute__((unused)) static void RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$2_initWithRxInternalSchedulersEventLoopsScheduler_EventLoopWorker_withRxFunctionsAction0_(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$2 *self, RxInternalSchedulersEventLoopsScheduler_EventLoopWorker *outer$, id<RxFunctionsAction0> capture$0);

__attribute__((unused)) static RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$2 *new_RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$2_initWithRxInternalSchedulersEventLoopsScheduler_EventLoopWorker_withRxFunctionsAction0_(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker *outer$, id<RxFunctionsAction0> capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$2 *create_RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$2_initWithRxInternalSchedulersEventLoopsScheduler_EventLoopWorker_withRxFunctionsAction0_(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker *outer$, id<RxFunctionsAction0> capture$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$2)

J2OBJC_INITIALIZED_DEFN(RxInternalSchedulersEventLoopsScheduler)

NSString *RxInternalSchedulersEventLoopsScheduler_KEY_MAX_THREADS = @"rx.scheduler.max-computation-threads";
jint RxInternalSchedulersEventLoopsScheduler_MAX_THREADS;
RxInternalSchedulersEventLoopsScheduler_PoolWorker *RxInternalSchedulersEventLoopsScheduler_SHUTDOWN_WORKER;
RxInternalSchedulersEventLoopsScheduler_FixedSchedulerPool *RxInternalSchedulersEventLoopsScheduler_NONE;

@implementation RxInternalSchedulersEventLoopsScheduler

+ (NSString *)KEY_MAX_THREADS {
  return RxInternalSchedulersEventLoopsScheduler_KEY_MAX_THREADS;
}

+ (jint)MAX_THREADS {
  return RxInternalSchedulersEventLoopsScheduler_MAX_THREADS;
}

+ (RxInternalSchedulersEventLoopsScheduler_PoolWorker *)SHUTDOWN_WORKER {
  return RxInternalSchedulersEventLoopsScheduler_SHUTDOWN_WORKER;
}

+ (RxInternalSchedulersEventLoopsScheduler_FixedSchedulerPool *)NONE {
  return RxInternalSchedulersEventLoopsScheduler_NONE;
}

- (instancetype)initWithJavaUtilConcurrentThreadFactory:(id<JavaUtilConcurrentThreadFactory>)threadFactory {
  RxInternalSchedulersEventLoopsScheduler_initWithJavaUtilConcurrentThreadFactory_(self, threadFactory);
  return self;
}

- (RxScheduler_Worker *)createWorker {
  return new_RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_initWithRxInternalSchedulersEventLoopsScheduler_PoolWorker_([((RxInternalSchedulersEventLoopsScheduler_FixedSchedulerPool *) nil_chk([((JavaUtilConcurrentAtomicAtomicReference *) nil_chk(pool_)) get])) getEventLoop]);
}

- (void)start {
  RxInternalSchedulersEventLoopsScheduler_FixedSchedulerPool *update = new_RxInternalSchedulersEventLoopsScheduler_FixedSchedulerPool_initWithJavaUtilConcurrentThreadFactory_withInt_(threadFactory_, RxInternalSchedulersEventLoopsScheduler_MAX_THREADS);
  if (![((JavaUtilConcurrentAtomicAtomicReference *) nil_chk(pool_)) compareAndSetWithId:RxInternalSchedulersEventLoopsScheduler_NONE withId:update]) {
    [update shutdown];
  }
}

- (void)shutdown {
  for (; ; ) {
    RxInternalSchedulersEventLoopsScheduler_FixedSchedulerPool *curr = [((JavaUtilConcurrentAtomicAtomicReference *) nil_chk(pool_)) get];
    if (curr == RxInternalSchedulersEventLoopsScheduler_NONE) {
      return;
    }
    if ([pool_ compareAndSetWithId:curr withId:RxInternalSchedulersEventLoopsScheduler_NONE]) {
      [((RxInternalSchedulersEventLoopsScheduler_FixedSchedulerPool *) nil_chk(curr)) shutdown];
      return;
    }
  }
}

- (id<RxSubscription>)scheduleDirectWithRxFunctionsAction0:(id<RxFunctionsAction0>)action {
  RxInternalSchedulersEventLoopsScheduler_PoolWorker *pw = [((RxInternalSchedulersEventLoopsScheduler_FixedSchedulerPool *) nil_chk([((JavaUtilConcurrentAtomicAtomicReference *) nil_chk(pool_)) get])) getEventLoop];
  return [((RxInternalSchedulersEventLoopsScheduler_PoolWorker *) nil_chk(pw)) scheduleActualWithRxFunctionsAction0:action withLong:-1 withJavaUtilConcurrentTimeUnit:JreLoadEnum(JavaUtilConcurrentTimeUnit, NANOSECONDS)];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilConcurrentThreadFactory:", NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { "createWorker", "LRxScheduler_Worker;", 0x1, -1, -1, -1, -1, -1, -1 },
    { "start", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "shutdown", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "scheduleDirectWithRxFunctionsAction0:", "LRxSubscription;", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "KEY_MAX_THREADS", "LNSString;", .constantValue.asLong = 0, 0x18, -1, 3, -1, -1 },
    { "MAX_THREADS", "I", .constantValue.asLong = 0, 0x18, -1, 4, -1, -1 },
    { "SHUTDOWN_WORKER", "LRxInternalSchedulersEventLoopsScheduler_PoolWorker;", .constantValue.asLong = 0, 0x18, -1, 5, -1, -1 },
    { "NONE", "LRxInternalSchedulersEventLoopsScheduler_FixedSchedulerPool;", .constantValue.asLong = 0, 0x18, -1, 6, -1, -1 },
    { "threadFactory_", "LJavaUtilConcurrentThreadFactory;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "pool_", "LJavaUtilConcurrentAtomicAtomicReference;", .constantValue.asLong = 0, 0x10, -1, -1, 7, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilConcurrentThreadFactory;", "scheduleDirect", "LRxFunctionsAction0;", &RxInternalSchedulersEventLoopsScheduler_KEY_MAX_THREADS, &RxInternalSchedulersEventLoopsScheduler_MAX_THREADS, &RxInternalSchedulersEventLoopsScheduler_SHUTDOWN_WORKER, &RxInternalSchedulersEventLoopsScheduler_NONE, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;>;", "LRxInternalSchedulersEventLoopsScheduler_FixedSchedulerPool;LRxInternalSchedulersEventLoopsScheduler_EventLoopWorker;LRxInternalSchedulersEventLoopsScheduler_PoolWorker;" };
  static const J2ObjcClassInfo _RxInternalSchedulersEventLoopsScheduler = { "EventLoopsScheduler", "rx.internal.schedulers", ptrTable, methods, fields, 7, 0x11, 5, 6, -1, 8, -1, -1, -1 };
  return &_RxInternalSchedulersEventLoopsScheduler;
}

+ (void)initialize {
  if (self == [RxInternalSchedulersEventLoopsScheduler class]) {
    {
      jint maxThreads = [((JavaLangInteger *) nil_chk(JavaLangInteger_getIntegerWithNSString_withInt_(RxInternalSchedulersEventLoopsScheduler_KEY_MAX_THREADS, 0))) intValue];
      jint ncpu = [((JavaLangRuntime *) nil_chk(JavaLangRuntime_getRuntime())) availableProcessors];
      jint max;
      if (maxThreads <= 0 || maxThreads > ncpu) {
        max = ncpu;
      }
      else {
        max = maxThreads;
      }
      RxInternalSchedulersEventLoopsScheduler_MAX_THREADS = max;
    }
    {
      RxInternalSchedulersEventLoopsScheduler_SHUTDOWN_WORKER = new_RxInternalSchedulersEventLoopsScheduler_PoolWorker_initWithJavaUtilConcurrentThreadFactory_(JreLoadStatic(RxInternalUtilRxThreadFactory, NONE));
      [RxInternalSchedulersEventLoopsScheduler_SHUTDOWN_WORKER unsubscribe];
    }
    RxInternalSchedulersEventLoopsScheduler_NONE = new_RxInternalSchedulersEventLoopsScheduler_FixedSchedulerPool_initWithJavaUtilConcurrentThreadFactory_withInt_(nil, 0);
    J2OBJC_SET_INITIALIZED(RxInternalSchedulersEventLoopsScheduler)
  }
}

@end

void RxInternalSchedulersEventLoopsScheduler_initWithJavaUtilConcurrentThreadFactory_(RxInternalSchedulersEventLoopsScheduler *self, id<JavaUtilConcurrentThreadFactory> threadFactory) {
  RxScheduler_init(self);
  self->threadFactory_ = threadFactory;
  self->pool_ = new_JavaUtilConcurrentAtomicAtomicReference_initWithId_(RxInternalSchedulersEventLoopsScheduler_NONE);
  [self start];
}

RxInternalSchedulersEventLoopsScheduler *new_RxInternalSchedulersEventLoopsScheduler_initWithJavaUtilConcurrentThreadFactory_(id<JavaUtilConcurrentThreadFactory> threadFactory) {
  J2OBJC_NEW_IMPL(RxInternalSchedulersEventLoopsScheduler, initWithJavaUtilConcurrentThreadFactory_, threadFactory)
}

RxInternalSchedulersEventLoopsScheduler *create_RxInternalSchedulersEventLoopsScheduler_initWithJavaUtilConcurrentThreadFactory_(id<JavaUtilConcurrentThreadFactory> threadFactory) {
  J2OBJC_CREATE_IMPL(RxInternalSchedulersEventLoopsScheduler, initWithJavaUtilConcurrentThreadFactory_, threadFactory)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalSchedulersEventLoopsScheduler)

@implementation RxInternalSchedulersEventLoopsScheduler_FixedSchedulerPool

- (instancetype)initWithJavaUtilConcurrentThreadFactory:(id<JavaUtilConcurrentThreadFactory>)threadFactory
                                                withInt:(jint)maxThreads {
  RxInternalSchedulersEventLoopsScheduler_FixedSchedulerPool_initWithJavaUtilConcurrentThreadFactory_withInt_(self, threadFactory, maxThreads);
  return self;
}

- (RxInternalSchedulersEventLoopsScheduler_PoolWorker *)getEventLoop {
  jint c = cores_;
  if (c == 0) {
    return JreLoadStatic(RxInternalSchedulersEventLoopsScheduler, SHUTDOWN_WORKER);
  }
  return IOSObjectArray_Get(nil_chk(eventLoops_), (jint) (n_++ % c));
}

- (void)shutdown {
  {
    IOSObjectArray *a__ = eventLoops_;
    RxInternalSchedulersEventLoopsScheduler_PoolWorker * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    RxInternalSchedulersEventLoopsScheduler_PoolWorker * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      RxInternalSchedulersEventLoopsScheduler_PoolWorker *w = *b__++;
      [((RxInternalSchedulersEventLoopsScheduler_PoolWorker *) nil_chk(w)) unsubscribe];
    }
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilConcurrentThreadFactory:withInt:", NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { "getEventLoop", "LRxInternalSchedulersEventLoopsScheduler_PoolWorker;", 0x1, -1, -1, -1, -1, -1, -1 },
    { "shutdown", "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "cores_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "eventLoops_", "[LRxInternalSchedulersEventLoopsScheduler_PoolWorker;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "n_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilConcurrentThreadFactory;I", "LRxInternalSchedulersEventLoopsScheduler;" };
  static const J2ObjcClassInfo _RxInternalSchedulersEventLoopsScheduler_FixedSchedulerPool = { "FixedSchedulerPool", "rx.internal.schedulers", ptrTable, methods, fields, 7, 0x18, 3, 3, 1, -1, -1, -1, -1 };
  return &_RxInternalSchedulersEventLoopsScheduler_FixedSchedulerPool;
}

@end

void RxInternalSchedulersEventLoopsScheduler_FixedSchedulerPool_initWithJavaUtilConcurrentThreadFactory_withInt_(RxInternalSchedulersEventLoopsScheduler_FixedSchedulerPool *self, id<JavaUtilConcurrentThreadFactory> threadFactory, jint maxThreads) {
  NSObject_init(self);
  self->cores_ = maxThreads;
  self->eventLoops_ = [IOSObjectArray newArrayWithLength:maxThreads type:RxInternalSchedulersEventLoopsScheduler_PoolWorker_class_()];
  for (jint i = 0; i < maxThreads; i++) {
    (void) IOSObjectArray_SetAndConsume(self->eventLoops_, i, new_RxInternalSchedulersEventLoopsScheduler_PoolWorker_initWithJavaUtilConcurrentThreadFactory_(threadFactory));
  }
}

RxInternalSchedulersEventLoopsScheduler_FixedSchedulerPool *new_RxInternalSchedulersEventLoopsScheduler_FixedSchedulerPool_initWithJavaUtilConcurrentThreadFactory_withInt_(id<JavaUtilConcurrentThreadFactory> threadFactory, jint maxThreads) {
  J2OBJC_NEW_IMPL(RxInternalSchedulersEventLoopsScheduler_FixedSchedulerPool, initWithJavaUtilConcurrentThreadFactory_withInt_, threadFactory, maxThreads)
}

RxInternalSchedulersEventLoopsScheduler_FixedSchedulerPool *create_RxInternalSchedulersEventLoopsScheduler_FixedSchedulerPool_initWithJavaUtilConcurrentThreadFactory_withInt_(id<JavaUtilConcurrentThreadFactory> threadFactory, jint maxThreads) {
  J2OBJC_CREATE_IMPL(RxInternalSchedulersEventLoopsScheduler_FixedSchedulerPool, initWithJavaUtilConcurrentThreadFactory_withInt_, threadFactory, maxThreads)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalSchedulersEventLoopsScheduler_FixedSchedulerPool)

@implementation RxInternalSchedulersEventLoopsScheduler_EventLoopWorker

- (instancetype)initWithRxInternalSchedulersEventLoopsScheduler_PoolWorker:(RxInternalSchedulersEventLoopsScheduler_PoolWorker *)poolWorker {
  RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_initWithRxInternalSchedulersEventLoopsScheduler_PoolWorker_(self, poolWorker);
  return self;
}

- (void)unsubscribe {
  [((RxInternalUtilSubscriptionList *) nil_chk(both_)) unsubscribe];
}

- (jboolean)isUnsubscribed {
  return [((RxInternalUtilSubscriptionList *) nil_chk(both_)) isUnsubscribed];
}

- (id<RxSubscription>)scheduleWithRxFunctionsAction0:(id<RxFunctionsAction0>)action {
  if ([self isUnsubscribed]) {
    return RxSubscriptionsSubscriptions_unsubscribed();
  }
  return [((RxInternalSchedulersEventLoopsScheduler_PoolWorker *) nil_chk(poolWorker_)) scheduleActualWithRxFunctionsAction0:new_RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$1_initWithRxInternalSchedulersEventLoopsScheduler_EventLoopWorker_withRxFunctionsAction0_(self, action) withLong:0 withJavaUtilConcurrentTimeUnit:nil withRxInternalUtilSubscriptionList:serial_];
}

- (id<RxSubscription>)scheduleWithRxFunctionsAction0:(id<RxFunctionsAction0>)action
                                            withLong:(jlong)delayTime
                      withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit {
  if ([self isUnsubscribed]) {
    return RxSubscriptionsSubscriptions_unsubscribed();
  }
  return [((RxInternalSchedulersEventLoopsScheduler_PoolWorker *) nil_chk(poolWorker_)) scheduleActualWithRxFunctionsAction0:new_RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$2_initWithRxInternalSchedulersEventLoopsScheduler_EventLoopWorker_withRxFunctionsAction0_(self, action) withLong:delayTime withJavaUtilConcurrentTimeUnit:unit withRxSubscriptionsCompositeSubscription:timed_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxInternalSchedulersEventLoopsScheduler_PoolWorker:", NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { "unsubscribe", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "isUnsubscribed", "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { "scheduleWithRxFunctionsAction0:", "LRxSubscription;", 0x1, 1, 2, -1, -1, -1, -1 },
    { "scheduleWithRxFunctionsAction0:withLong:withJavaUtilConcurrentTimeUnit:", "LRxSubscription;", 0x1, 1, 3, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serial_", "LRxInternalUtilSubscriptionList;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "timed_", "LRxSubscriptionsCompositeSubscription;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "both_", "LRxInternalUtilSubscriptionList;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "poolWorker_", "LRxInternalSchedulersEventLoopsScheduler_PoolWorker;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LRxInternalSchedulersEventLoopsScheduler_PoolWorker;", "schedule", "LRxFunctionsAction0;", "LRxFunctionsAction0;JLJavaUtilConcurrentTimeUnit;", "LRxInternalSchedulersEventLoopsScheduler;" };
  static const J2ObjcClassInfo _RxInternalSchedulersEventLoopsScheduler_EventLoopWorker = { "EventLoopWorker", "rx.internal.schedulers", ptrTable, methods, fields, 7, 0xa, 5, 4, 4, -1, -1, -1, -1 };
  return &_RxInternalSchedulersEventLoopsScheduler_EventLoopWorker;
}

@end

void RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_initWithRxInternalSchedulersEventLoopsScheduler_PoolWorker_(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker *self, RxInternalSchedulersEventLoopsScheduler_PoolWorker *poolWorker) {
  RxScheduler_Worker_init(self);
  self->serial_ = new_RxInternalUtilSubscriptionList_init();
  self->timed_ = new_RxSubscriptionsCompositeSubscription_init();
  self->both_ = new_RxInternalUtilSubscriptionList_initWithRxSubscriptionArray_([IOSObjectArray newArrayWithObjects:(id[]){ self->serial_, self->timed_ } count:2 type:RxSubscription_class_()]);
  self->poolWorker_ = poolWorker;
}

RxInternalSchedulersEventLoopsScheduler_EventLoopWorker *new_RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_initWithRxInternalSchedulersEventLoopsScheduler_PoolWorker_(RxInternalSchedulersEventLoopsScheduler_PoolWorker *poolWorker) {
  J2OBJC_NEW_IMPL(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker, initWithRxInternalSchedulersEventLoopsScheduler_PoolWorker_, poolWorker)
}

RxInternalSchedulersEventLoopsScheduler_EventLoopWorker *create_RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_initWithRxInternalSchedulersEventLoopsScheduler_PoolWorker_(RxInternalSchedulersEventLoopsScheduler_PoolWorker *poolWorker) {
  J2OBJC_CREATE_IMPL(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker, initWithRxInternalSchedulersEventLoopsScheduler_PoolWorker_, poolWorker)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker)

@implementation RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$1

- (void)call {
  if ([this$0_ isUnsubscribed]) {
    return;
  }
  [((id<RxFunctionsAction0>) nil_chk(val$action_)) call];
}

- (instancetype)initWithRxInternalSchedulersEventLoopsScheduler_EventLoopWorker:(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker *)outer$
                                                         withRxFunctionsAction0:(id<RxFunctionsAction0>)capture$0 {
  RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$1_initWithRxInternalSchedulersEventLoopsScheduler_EventLoopWorker_withRxFunctionsAction0_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "call", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "initWithRxInternalSchedulersEventLoopsScheduler_EventLoopWorker:withRxFunctionsAction0:", NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LRxInternalSchedulersEventLoopsScheduler_EventLoopWorker;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$action_", "LRxFunctionsAction0;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LRxInternalSchedulersEventLoopsScheduler_EventLoopWorker;LRxFunctionsAction0;", "LRxInternalSchedulersEventLoopsScheduler_EventLoopWorker;", "scheduleWithRxFunctionsAction0:" };
  static const J2ObjcClassInfo _RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$1 = { "", "rx.internal.schedulers", ptrTable, methods, fields, 7, 0x8008, 2, 2, 1, -1, 2, -1, -1 };
  return &_RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$1;
}

@end

void RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$1_initWithRxInternalSchedulersEventLoopsScheduler_EventLoopWorker_withRxFunctionsAction0_(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$1 *self, RxInternalSchedulersEventLoopsScheduler_EventLoopWorker *outer$, id<RxFunctionsAction0> capture$0) {
  self->this$0_ = outer$;
  self->val$action_ = capture$0;
  NSObject_init(self);
}

RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$1 *new_RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$1_initWithRxInternalSchedulersEventLoopsScheduler_EventLoopWorker_withRxFunctionsAction0_(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker *outer$, id<RxFunctionsAction0> capture$0) {
  J2OBJC_NEW_IMPL(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$1, initWithRxInternalSchedulersEventLoopsScheduler_EventLoopWorker_withRxFunctionsAction0_, outer$, capture$0)
}

RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$1 *create_RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$1_initWithRxInternalSchedulersEventLoopsScheduler_EventLoopWorker_withRxFunctionsAction0_(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker *outer$, id<RxFunctionsAction0> capture$0) {
  J2OBJC_CREATE_IMPL(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$1, initWithRxInternalSchedulersEventLoopsScheduler_EventLoopWorker_withRxFunctionsAction0_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$1)

@implementation RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$2

- (void)call {
  if ([this$0_ isUnsubscribed]) {
    return;
  }
  [((id<RxFunctionsAction0>) nil_chk(val$action_)) call];
}

- (instancetype)initWithRxInternalSchedulersEventLoopsScheduler_EventLoopWorker:(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker *)outer$
                                                         withRxFunctionsAction0:(id<RxFunctionsAction0>)capture$0 {
  RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$2_initWithRxInternalSchedulersEventLoopsScheduler_EventLoopWorker_withRxFunctionsAction0_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "call", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "initWithRxInternalSchedulersEventLoopsScheduler_EventLoopWorker:withRxFunctionsAction0:", NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LRxInternalSchedulersEventLoopsScheduler_EventLoopWorker;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$action_", "LRxFunctionsAction0;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LRxInternalSchedulersEventLoopsScheduler_EventLoopWorker;LRxFunctionsAction0;", "LRxInternalSchedulersEventLoopsScheduler_EventLoopWorker;", "scheduleWithRxFunctionsAction0:withLong:withJavaUtilConcurrentTimeUnit:" };
  static const J2ObjcClassInfo _RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$2 = { "", "rx.internal.schedulers", ptrTable, methods, fields, 7, 0x8008, 2, 2, 1, -1, 2, -1, -1 };
  return &_RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$2;
}

@end

void RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$2_initWithRxInternalSchedulersEventLoopsScheduler_EventLoopWorker_withRxFunctionsAction0_(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$2 *self, RxInternalSchedulersEventLoopsScheduler_EventLoopWorker *outer$, id<RxFunctionsAction0> capture$0) {
  self->this$0_ = outer$;
  self->val$action_ = capture$0;
  NSObject_init(self);
}

RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$2 *new_RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$2_initWithRxInternalSchedulersEventLoopsScheduler_EventLoopWorker_withRxFunctionsAction0_(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker *outer$, id<RxFunctionsAction0> capture$0) {
  J2OBJC_NEW_IMPL(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$2, initWithRxInternalSchedulersEventLoopsScheduler_EventLoopWorker_withRxFunctionsAction0_, outer$, capture$0)
}

RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$2 *create_RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$2_initWithRxInternalSchedulersEventLoopsScheduler_EventLoopWorker_withRxFunctionsAction0_(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker *outer$, id<RxFunctionsAction0> capture$0) {
  J2OBJC_CREATE_IMPL(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$2, initWithRxInternalSchedulersEventLoopsScheduler_EventLoopWorker_withRxFunctionsAction0_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalSchedulersEventLoopsScheduler_EventLoopWorker_$2)

@implementation RxInternalSchedulersEventLoopsScheduler_PoolWorker

- (instancetype)initWithJavaUtilConcurrentThreadFactory:(id<JavaUtilConcurrentThreadFactory>)threadFactory {
  RxInternalSchedulersEventLoopsScheduler_PoolWorker_initWithJavaUtilConcurrentThreadFactory_(self, threadFactory);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilConcurrentThreadFactory:", NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaUtilConcurrentThreadFactory;", "LRxInternalSchedulersEventLoopsScheduler;" };
  static const J2ObjcClassInfo _RxInternalSchedulersEventLoopsScheduler_PoolWorker = { "PoolWorker", "rx.internal.schedulers", ptrTable, methods, NULL, 7, 0x18, 1, 0, 1, -1, -1, -1, -1 };
  return &_RxInternalSchedulersEventLoopsScheduler_PoolWorker;
}

@end

void RxInternalSchedulersEventLoopsScheduler_PoolWorker_initWithJavaUtilConcurrentThreadFactory_(RxInternalSchedulersEventLoopsScheduler_PoolWorker *self, id<JavaUtilConcurrentThreadFactory> threadFactory) {
  RxInternalSchedulersNewThreadWorker_initWithJavaUtilConcurrentThreadFactory_(self, threadFactory);
}

RxInternalSchedulersEventLoopsScheduler_PoolWorker *new_RxInternalSchedulersEventLoopsScheduler_PoolWorker_initWithJavaUtilConcurrentThreadFactory_(id<JavaUtilConcurrentThreadFactory> threadFactory) {
  J2OBJC_NEW_IMPL(RxInternalSchedulersEventLoopsScheduler_PoolWorker, initWithJavaUtilConcurrentThreadFactory_, threadFactory)
}

RxInternalSchedulersEventLoopsScheduler_PoolWorker *create_RxInternalSchedulersEventLoopsScheduler_PoolWorker_initWithJavaUtilConcurrentThreadFactory_(id<JavaUtilConcurrentThreadFactory> threadFactory) {
  J2OBJC_CREATE_IMPL(RxInternalSchedulersEventLoopsScheduler_PoolWorker, initWithJavaUtilConcurrentThreadFactory_, threadFactory)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalSchedulersEventLoopsScheduler_PoolWorker)
