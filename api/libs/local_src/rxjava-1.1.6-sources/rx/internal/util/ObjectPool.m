//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/util/ObjectPool.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "java/lang/Runnable.h"
#include "java/util/Queue.h"
#include "java/util/concurrent/ConcurrentLinkedQueue.h"
#include "java/util/concurrent/Future.h"
#include "java/util/concurrent/RejectedExecutionException.h"
#include "java/util/concurrent/ScheduledExecutorService.h"
#include "java/util/concurrent/ScheduledFuture.h"
#include "java/util/concurrent/TimeUnit.h"
#include "java/util/concurrent/atomic/AtomicReference.h"
#include "rx/internal/schedulers/GenericScheduledExecutorService.h"
#include "rx/internal/util/ObjectPool.h"
#include "rx/internal/util/RxJavaPluginUtils.h"
#include "rx/internal/util/unsafe/MpmcArrayQueue.h"
#include "rx/internal/util/unsafe/UnsafeAccess.h"

@interface RxInternalUtilObjectPool () {
 @public
  jlong validationInterval_;
  JavaUtilConcurrentAtomicAtomicReference *periodicTask_;
}

/*!
 @brief Creates the pool.
 @param minIdle
 minimum number of objects residing in the pool
 @param maxIdle
 maximum number of objects residing in the pool
 @param validationInterval
 time in seconds for periodical checking of minIdle / maxIdle conditions in a separate thread.
 When the number of objects is less than minIdle, missing instances will be created.
 When the number of objects is greater than maxIdle, too many instances will be removed.
 */
- (instancetype)initWithInt:(jint)min
                    withInt:(jint)max
                   withLong:(jlong)validationInterval;

- (void)initialize__WithInt:(jint)min OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_FIELD_SETTER(RxInternalUtilObjectPool, periodicTask_, JavaUtilConcurrentAtomicAtomicReference *)

__attribute__((unused)) static void RxInternalUtilObjectPool_initWithInt_withInt_withLong_(RxInternalUtilObjectPool *self, jint min, jint max, jlong validationInterval);

__attribute__((unused)) static void RxInternalUtilObjectPool_initialize__WithInt_(RxInternalUtilObjectPool *self, jint min);

@interface RxInternalUtilObjectPool_$1 : NSObject < JavaLangRunnable > {
 @public
  RxInternalUtilObjectPool *this$0_;
}

- (void)run;

- (instancetype)initWithRxInternalUtilObjectPool:(RxInternalUtilObjectPool *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalUtilObjectPool_$1)

J2OBJC_FIELD_SETTER(RxInternalUtilObjectPool_$1, this$0_, RxInternalUtilObjectPool *)

__attribute__((unused)) static void RxInternalUtilObjectPool_$1_initWithRxInternalUtilObjectPool_(RxInternalUtilObjectPool_$1 *self, RxInternalUtilObjectPool *outer$);

__attribute__((unused)) static RxInternalUtilObjectPool_$1 *new_RxInternalUtilObjectPool_$1_initWithRxInternalUtilObjectPool_(RxInternalUtilObjectPool *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalUtilObjectPool_$1 *create_RxInternalUtilObjectPool_$1_initWithRxInternalUtilObjectPool_(RxInternalUtilObjectPool *outer$);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalUtilObjectPool_$1)

@implementation RxInternalUtilObjectPool

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  RxInternalUtilObjectPool_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithInt:(jint)min
                    withInt:(jint)max
                   withLong:(jlong)validationInterval {
  RxInternalUtilObjectPool_initWithInt_withInt_withLong_(self, min, max, validationInterval);
  return self;
}

- (id)borrowObject {
  id object;
  if ((object = [((id<JavaUtilQueue>) nil_chk(pool_)) poll]) == nil) {
    object = [self createObject];
  }
  return object;
}

- (void)returnObjectWithId:(id)object {
  if (object == nil) {
    return;
  }
  [((id<JavaUtilQueue>) nil_chk(self->pool_)) offerWithId:object];
}

- (void)shutdown {
  id<JavaUtilConcurrentFuture> f = [((JavaUtilConcurrentAtomicAtomicReference *) nil_chk(periodicTask_)) getAndSetWithId:nil];
  if (f != nil) {
    [f cancelWithBoolean:false];
  }
}

- (void)start {
  for (; ; ) {
    if ([((JavaUtilConcurrentAtomicAtomicReference *) nil_chk(periodicTask_)) get] != nil) {
      return;
    }
    id<JavaUtilConcurrentScheduledExecutorService> w = RxInternalSchedulersGenericScheduledExecutorService_getInstance();
    id<JavaUtilConcurrentFuture> f;
    @try {
      f = [((id<JavaUtilConcurrentScheduledExecutorService>) nil_chk(w)) scheduleAtFixedRateWithJavaLangRunnable:new_RxInternalUtilObjectPool_$1_initWithRxInternalUtilObjectPool_(self) withLong:validationInterval_ withLong:validationInterval_ withJavaUtilConcurrentTimeUnit:JreLoadEnum(JavaUtilConcurrentTimeUnit, SECONDS)];
    }
    @catch (JavaUtilConcurrentRejectedExecutionException *ex) {
      RxInternalUtilRxJavaPluginUtils_handleExceptionWithNSException_(ex);
      break;
    }
    if (![periodicTask_ compareAndSetWithId:nil withId:f]) {
      [((id<JavaUtilConcurrentFuture>) nil_chk(f)) cancelWithBoolean:false];
    }
    else {
      break;
    }
  }
}

- (id)createObject {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)initialize__WithInt:(jint)min {
  RxInternalUtilObjectPool_initialize__WithInt_(self, min);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { "initWithInt:withInt:withLong:", NULL, 0x2, -1, 0, -1, -1, -1, -1 },
    { "borrowObject", "LNSObject;", 0x1, -1, -1, -1, 1, -1, -1 },
    { "returnObjectWithId:", "V", 0x1, 2, 3, -1, 4, -1, -1 },
    { "shutdown", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "start", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "createObject", "LNSObject;", 0x404, -1, -1, -1, 1, -1, -1 },
    { "initialize__WithInt:", "V", 0x2, 5, 6, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "pool_", "LJavaUtilQueue;", .constantValue.asLong = 0, 0x0, -1, -1, 7, -1 },
    { "minSize_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "maxSize_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "validationInterval_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "periodicTask_", "LJavaUtilConcurrentAtomicAtomicReference;", .constantValue.asLong = 0, 0x12, -1, -1, 8, -1 },
  };
  static const void *ptrTable[] = { "IIJ", "()TT;", "returnObject", "LNSObject;", "(TT;)V", "initialize", "I", "Ljava/util/Queue<TT;>;", "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Future<*>;>;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/internal/schedulers/SchedulerLifecycle;" };
  static const J2ObjcClassInfo _RxInternalUtilObjectPool = { "ObjectPool", "rx.internal.util", ptrTable, methods, fields, 7, 0x401, 8, 5, -1, -1, -1, 9, -1 };
  return &_RxInternalUtilObjectPool;
}

@end

void RxInternalUtilObjectPool_init(RxInternalUtilObjectPool *self) {
  RxInternalUtilObjectPool_initWithInt_withInt_withLong_(self, 0, 0, 67);
}

void RxInternalUtilObjectPool_initWithInt_withInt_withLong_(RxInternalUtilObjectPool *self, jint min, jint max, jlong validationInterval) {
  NSObject_init(self);
  self->minSize_ = min;
  self->maxSize_ = max;
  self->validationInterval_ = validationInterval;
  self->periodicTask_ = new_JavaUtilConcurrentAtomicAtomicReference_init();
  RxInternalUtilObjectPool_initialize__WithInt_(self, min);
  [self start];
}

void RxInternalUtilObjectPool_initialize__WithInt_(RxInternalUtilObjectPool *self, jint min) {
  if (RxInternalUtilUnsafeUnsafeAccess_isUnsafeAvailable()) {
    self->pool_ = new_RxInternalUtilUnsafeMpmcArrayQueue_initWithInt_(JavaLangMath_maxWithInt_withInt_(self->maxSize_, 1024));
  }
  else {
    self->pool_ = new_JavaUtilConcurrentConcurrentLinkedQueue_init();
  }
  for (jint i = 0; i < min; i++) {
    [((id<JavaUtilQueue>) nil_chk(self->pool_)) addWithId:[self createObject]];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalUtilObjectPool)

@implementation RxInternalUtilObjectPool_$1

- (void)run {
  jint size = [((id<JavaUtilQueue>) nil_chk(this$0_->pool_)) size];
  if (size < this$0_->minSize_) {
    jint sizeToBeAdded = this$0_->maxSize_ - size;
    for (jint i = 0; i < sizeToBeAdded; i++) {
      [((id<JavaUtilQueue>) nil_chk(this$0_->pool_)) addWithId:[this$0_ createObject]];
    }
  }
  else if (size > this$0_->maxSize_) {
    jint sizeToBeRemoved = size - this$0_->maxSize_;
    for (jint i = 0; i < sizeToBeRemoved; i++) {
      (void) [((id<JavaUtilQueue>) nil_chk(this$0_->pool_)) poll];
    }
  }
}

- (instancetype)initWithRxInternalUtilObjectPool:(RxInternalUtilObjectPool *)outer$ {
  RxInternalUtilObjectPool_$1_initWithRxInternalUtilObjectPool_(self, outer$);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "initWithRxInternalUtilObjectPool:", NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LRxInternalUtilObjectPool;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LRxInternalUtilObjectPool;", "start" };
  static const J2ObjcClassInfo _RxInternalUtilObjectPool_$1 = { "", "rx.internal.util", ptrTable, methods, fields, 7, 0x8008, 2, 1, 0, -1, 1, -1, -1 };
  return &_RxInternalUtilObjectPool_$1;
}

@end

void RxInternalUtilObjectPool_$1_initWithRxInternalUtilObjectPool_(RxInternalUtilObjectPool_$1 *self, RxInternalUtilObjectPool *outer$) {
  self->this$0_ = outer$;
  NSObject_init(self);
}

RxInternalUtilObjectPool_$1 *new_RxInternalUtilObjectPool_$1_initWithRxInternalUtilObjectPool_(RxInternalUtilObjectPool *outer$) {
  J2OBJC_NEW_IMPL(RxInternalUtilObjectPool_$1, initWithRxInternalUtilObjectPool_, outer$)
}

RxInternalUtilObjectPool_$1 *create_RxInternalUtilObjectPool_$1_initWithRxInternalUtilObjectPool_(RxInternalUtilObjectPool *outer$) {
  J2OBJC_CREATE_IMPL(RxInternalUtilObjectPool_$1, initWithRxInternalUtilObjectPool_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalUtilObjectPool_$1)