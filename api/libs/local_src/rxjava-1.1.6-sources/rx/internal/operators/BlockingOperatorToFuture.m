//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/BlockingOperatorToFuture.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalStateException.h"
#include "java/util/concurrent/CancellationException.h"
#include "java/util/concurrent/CountDownLatch.h"
#include "java/util/concurrent/ExecutionException.h"
#include "java/util/concurrent/Future.h"
#include "java/util/concurrent/TimeUnit.h"
#include "java/util/concurrent/TimeoutException.h"
#include "java/util/concurrent/atomic/AtomicReference.h"
#include "rx/Observable.h"
#include "rx/Subscriber.h"
#include "rx/Subscription.h"
#include "rx/internal/operators/BlockingOperatorToFuture.h"

@interface RxInternalOperatorsBlockingOperatorToFuture ()

- (instancetype)init;

@end

__attribute__((unused)) static void RxInternalOperatorsBlockingOperatorToFuture_init(RxInternalOperatorsBlockingOperatorToFuture *self);

__attribute__((unused)) static RxInternalOperatorsBlockingOperatorToFuture *new_RxInternalOperatorsBlockingOperatorToFuture_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsBlockingOperatorToFuture *create_RxInternalOperatorsBlockingOperatorToFuture_init();

@interface RxInternalOperatorsBlockingOperatorToFuture_$1 : RxSubscriber {
 @public
  JavaUtilConcurrentCountDownLatch *val$finished_;
  JavaUtilConcurrentAtomicAtomicReference *val$error_;
  JavaUtilConcurrentAtomicAtomicReference *val$value_;
}

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)v;

- (instancetype)initWithJavaUtilConcurrentCountDownLatch:(JavaUtilConcurrentCountDownLatch *)capture$0
             withJavaUtilConcurrentAtomicAtomicReference:(JavaUtilConcurrentAtomicAtomicReference *)capture$1
             withJavaUtilConcurrentAtomicAtomicReference:(JavaUtilConcurrentAtomicAtomicReference *)capture$2;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsBlockingOperatorToFuture_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsBlockingOperatorToFuture_$1, val$finished_, JavaUtilConcurrentCountDownLatch *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsBlockingOperatorToFuture_$1, val$error_, JavaUtilConcurrentAtomicAtomicReference *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsBlockingOperatorToFuture_$1, val$value_, JavaUtilConcurrentAtomicAtomicReference *)

__attribute__((unused)) static void RxInternalOperatorsBlockingOperatorToFuture_$1_initWithJavaUtilConcurrentCountDownLatch_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilConcurrentAtomicAtomicReference_(RxInternalOperatorsBlockingOperatorToFuture_$1 *self, JavaUtilConcurrentCountDownLatch *capture$0, JavaUtilConcurrentAtomicAtomicReference *capture$1, JavaUtilConcurrentAtomicAtomicReference *capture$2);

__attribute__((unused)) static RxInternalOperatorsBlockingOperatorToFuture_$1 *new_RxInternalOperatorsBlockingOperatorToFuture_$1_initWithJavaUtilConcurrentCountDownLatch_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilConcurrentAtomicAtomicReference_(JavaUtilConcurrentCountDownLatch *capture$0, JavaUtilConcurrentAtomicAtomicReference *capture$1, JavaUtilConcurrentAtomicAtomicReference *capture$2) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsBlockingOperatorToFuture_$1 *create_RxInternalOperatorsBlockingOperatorToFuture_$1_initWithJavaUtilConcurrentCountDownLatch_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilConcurrentAtomicAtomicReference_(JavaUtilConcurrentCountDownLatch *capture$0, JavaUtilConcurrentAtomicAtomicReference *capture$1, JavaUtilConcurrentAtomicAtomicReference *capture$2);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsBlockingOperatorToFuture_$1)

@interface RxInternalOperatorsBlockingOperatorToFuture_$2 : NSObject < JavaUtilConcurrentFuture > {
 @public
  volatile_jboolean cancelled_;
  JavaUtilConcurrentCountDownLatch *val$finished_;
  id<RxSubscription> val$s_;
  JavaUtilConcurrentAtomicAtomicReference *val$error_;
  JavaUtilConcurrentAtomicAtomicReference *val$value_;
}

- (jboolean)cancelWithBoolean:(jboolean)mayInterruptIfRunning;

- (jboolean)isCancelled;

- (jboolean)isDone;

- (id)get;

- (id)getWithLong:(jlong)timeout
withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit;

- (id)getValue;

- (instancetype)initWithJavaUtilConcurrentCountDownLatch:(JavaUtilConcurrentCountDownLatch *)capture$0
                                      withRxSubscription:(id<RxSubscription>)capture$1
             withJavaUtilConcurrentAtomicAtomicReference:(JavaUtilConcurrentAtomicAtomicReference *)capture$2
             withJavaUtilConcurrentAtomicAtomicReference:(JavaUtilConcurrentAtomicAtomicReference *)capture$3;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsBlockingOperatorToFuture_$2)

J2OBJC_FIELD_SETTER(RxInternalOperatorsBlockingOperatorToFuture_$2, val$finished_, JavaUtilConcurrentCountDownLatch *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsBlockingOperatorToFuture_$2, val$s_, id<RxSubscription>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsBlockingOperatorToFuture_$2, val$error_, JavaUtilConcurrentAtomicAtomicReference *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsBlockingOperatorToFuture_$2, val$value_, JavaUtilConcurrentAtomicAtomicReference *)

__attribute__((unused)) static id RxInternalOperatorsBlockingOperatorToFuture_$2_getValue(RxInternalOperatorsBlockingOperatorToFuture_$2 *self);

__attribute__((unused)) static void RxInternalOperatorsBlockingOperatorToFuture_$2_initWithJavaUtilConcurrentCountDownLatch_withRxSubscription_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilConcurrentAtomicAtomicReference_(RxInternalOperatorsBlockingOperatorToFuture_$2 *self, JavaUtilConcurrentCountDownLatch *capture$0, id<RxSubscription> capture$1, JavaUtilConcurrentAtomicAtomicReference *capture$2, JavaUtilConcurrentAtomicAtomicReference *capture$3);

__attribute__((unused)) static RxInternalOperatorsBlockingOperatorToFuture_$2 *new_RxInternalOperatorsBlockingOperatorToFuture_$2_initWithJavaUtilConcurrentCountDownLatch_withRxSubscription_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilConcurrentAtomicAtomicReference_(JavaUtilConcurrentCountDownLatch *capture$0, id<RxSubscription> capture$1, JavaUtilConcurrentAtomicAtomicReference *capture$2, JavaUtilConcurrentAtomicAtomicReference *capture$3) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsBlockingOperatorToFuture_$2 *create_RxInternalOperatorsBlockingOperatorToFuture_$2_initWithJavaUtilConcurrentCountDownLatch_withRxSubscription_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilConcurrentAtomicAtomicReference_(JavaUtilConcurrentCountDownLatch *capture$0, id<RxSubscription> capture$1, JavaUtilConcurrentAtomicAtomicReference *capture$2, JavaUtilConcurrentAtomicAtomicReference *capture$3);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsBlockingOperatorToFuture_$2)

@implementation RxInternalOperatorsBlockingOperatorToFuture

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  RxInternalOperatorsBlockingOperatorToFuture_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (id<JavaUtilConcurrentFuture>)toFutureWithRxObservable:(RxObservable *)that {
  return RxInternalOperatorsBlockingOperatorToFuture_toFutureWithRxObservable_(that);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { "toFutureWithRxObservable:", "LJavaUtilConcurrentFuture;", 0x9, 0, 1, -1, 2, -1, -1 },
  };
  static const void *ptrTable[] = { "toFuture", "LRxObservable;", "<T:Ljava/lang/Object;>(Lrx/Observable<+TT;>;)Ljava/util/concurrent/Future<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsBlockingOperatorToFuture = { "BlockingOperatorToFuture", "rx.internal.operators", ptrTable, methods, NULL, 7, 0x11, 2, 0, -1, -1, -1, -1, -1 };
  return &_RxInternalOperatorsBlockingOperatorToFuture;
}

@end

void RxInternalOperatorsBlockingOperatorToFuture_init(RxInternalOperatorsBlockingOperatorToFuture *self) {
  NSObject_init(self);
  @throw new_JavaLangIllegalStateException_initWithNSString_(@"No instances!");
}

RxInternalOperatorsBlockingOperatorToFuture *new_RxInternalOperatorsBlockingOperatorToFuture_init() {
  J2OBJC_NEW_IMPL(RxInternalOperatorsBlockingOperatorToFuture, init)
}

RxInternalOperatorsBlockingOperatorToFuture *create_RxInternalOperatorsBlockingOperatorToFuture_init() {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsBlockingOperatorToFuture, init)
}

id<JavaUtilConcurrentFuture> RxInternalOperatorsBlockingOperatorToFuture_toFutureWithRxObservable_(RxObservable *that) {
  RxInternalOperatorsBlockingOperatorToFuture_initialize();
  JavaUtilConcurrentCountDownLatch *finished = new_JavaUtilConcurrentCountDownLatch_initWithInt_(1);
  JavaUtilConcurrentAtomicAtomicReference *value = new_JavaUtilConcurrentAtomicAtomicReference_init();
  JavaUtilConcurrentAtomicAtomicReference *error = new_JavaUtilConcurrentAtomicAtomicReference_init();
  id<RxSubscription> s = [((RxObservable *) nil_chk([((RxObservable *) nil_chk((that))) single])) subscribeWithRxSubscriber:new_RxInternalOperatorsBlockingOperatorToFuture_$1_initWithJavaUtilConcurrentCountDownLatch_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilConcurrentAtomicAtomicReference_(finished, error, value)];
  return new_RxInternalOperatorsBlockingOperatorToFuture_$2_initWithJavaUtilConcurrentCountDownLatch_withRxSubscription_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilConcurrentAtomicAtomicReference_(finished, s, error, value);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsBlockingOperatorToFuture)

@implementation RxInternalOperatorsBlockingOperatorToFuture_$1

- (void)onCompleted {
  [((JavaUtilConcurrentCountDownLatch *) nil_chk(val$finished_)) countDown];
}

- (void)onErrorWithNSException:(NSException *)e {
  [((JavaUtilConcurrentAtomicAtomicReference *) nil_chk(val$error_)) compareAndSetWithId:nil withId:e];
  [((JavaUtilConcurrentCountDownLatch *) nil_chk(val$finished_)) countDown];
}

- (void)onNextWithId:(id)v {
  [((JavaUtilConcurrentAtomicAtomicReference *) nil_chk(val$value_)) setWithId:v];
}

- (instancetype)initWithJavaUtilConcurrentCountDownLatch:(JavaUtilConcurrentCountDownLatch *)capture$0
             withJavaUtilConcurrentAtomicAtomicReference:(JavaUtilConcurrentAtomicAtomicReference *)capture$1
             withJavaUtilConcurrentAtomicAtomicReference:(JavaUtilConcurrentAtomicAtomicReference *)capture$2 {
  RxInternalOperatorsBlockingOperatorToFuture_$1_initWithJavaUtilConcurrentCountDownLatch_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilConcurrentAtomicAtomicReference_(self, capture$0, capture$1, capture$2);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { "onNextWithId:", "V", 0x1, 2, 3, -1, 4, -1, -1 },
    { "initWithJavaUtilConcurrentCountDownLatch:withJavaUtilConcurrentAtomicAtomicReference:withJavaUtilConcurrentAtomicAtomicReference:", NULL, 0x0, -1, 5, -1, 6, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$finished_", "LJavaUtilConcurrentCountDownLatch;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$error_", "LJavaUtilConcurrentAtomicAtomicReference;", .constantValue.asLong = 0, 0x1012, -1, -1, 7, -1 },
    { "val$value_", "LJavaUtilConcurrentAtomicAtomicReference;", .constantValue.asLong = 0, 0x1012, -1, -1, 8, -1 },
  };
  static const void *ptrTable[] = { "onError", "LNSException;", "onNext", "LNSObject;", "(TT;)V", "LJavaUtilConcurrentCountDownLatch;LJavaUtilConcurrentAtomicAtomicReference;LJavaUtilConcurrentAtomicAtomicReference;", "(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;Ljava/util/concurrent/atomic/AtomicReference<TT;>;)V", "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;", "Ljava/util/concurrent/atomic/AtomicReference<TT;>;", "LRxInternalOperatorsBlockingOperatorToFuture;", "toFutureWithRxObservable:", "Lrx/Subscriber<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsBlockingOperatorToFuture_$1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 4, 3, 9, -1, 10, 11, -1 };
  return &_RxInternalOperatorsBlockingOperatorToFuture_$1;
}

@end

void RxInternalOperatorsBlockingOperatorToFuture_$1_initWithJavaUtilConcurrentCountDownLatch_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilConcurrentAtomicAtomicReference_(RxInternalOperatorsBlockingOperatorToFuture_$1 *self, JavaUtilConcurrentCountDownLatch *capture$0, JavaUtilConcurrentAtomicAtomicReference *capture$1, JavaUtilConcurrentAtomicAtomicReference *capture$2) {
  self->val$finished_ = capture$0;
  self->val$error_ = capture$1;
  self->val$value_ = capture$2;
  RxSubscriber_init(self);
}

RxInternalOperatorsBlockingOperatorToFuture_$1 *new_RxInternalOperatorsBlockingOperatorToFuture_$1_initWithJavaUtilConcurrentCountDownLatch_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilConcurrentAtomicAtomicReference_(JavaUtilConcurrentCountDownLatch *capture$0, JavaUtilConcurrentAtomicAtomicReference *capture$1, JavaUtilConcurrentAtomicAtomicReference *capture$2) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsBlockingOperatorToFuture_$1, initWithJavaUtilConcurrentCountDownLatch_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilConcurrentAtomicAtomicReference_, capture$0, capture$1, capture$2)
}

RxInternalOperatorsBlockingOperatorToFuture_$1 *create_RxInternalOperatorsBlockingOperatorToFuture_$1_initWithJavaUtilConcurrentCountDownLatch_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilConcurrentAtomicAtomicReference_(JavaUtilConcurrentCountDownLatch *capture$0, JavaUtilConcurrentAtomicAtomicReference *capture$1, JavaUtilConcurrentAtomicAtomicReference *capture$2) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsBlockingOperatorToFuture_$1, initWithJavaUtilConcurrentCountDownLatch_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilConcurrentAtomicAtomicReference_, capture$0, capture$1, capture$2)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsBlockingOperatorToFuture_$1)

@implementation RxInternalOperatorsBlockingOperatorToFuture_$2

- (jboolean)cancelWithBoolean:(jboolean)mayInterruptIfRunning {
  if ([((JavaUtilConcurrentCountDownLatch *) nil_chk(val$finished_)) getCount] > 0) {
    JreAssignVolatileBoolean(&cancelled_, true);
    [((id<RxSubscription>) nil_chk(val$s_)) unsubscribe];
    [val$finished_ countDown];
    return true;
  }
  else {
    return false;
  }
}

- (jboolean)isCancelled {
  return JreLoadVolatileBoolean(&cancelled_);
}

- (jboolean)isDone {
  return [((JavaUtilConcurrentCountDownLatch *) nil_chk(val$finished_)) getCount] == 0;
}

- (id)get {
  [((JavaUtilConcurrentCountDownLatch *) nil_chk(val$finished_)) await];
  return RxInternalOperatorsBlockingOperatorToFuture_$2_getValue(self);
}

- (id)getWithLong:(jlong)timeout
withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit {
  if ([((JavaUtilConcurrentCountDownLatch *) nil_chk(val$finished_)) awaitWithLong:timeout withJavaUtilConcurrentTimeUnit:unit]) {
    return RxInternalOperatorsBlockingOperatorToFuture_$2_getValue(self);
  }
  else {
    @throw new_JavaUtilConcurrentTimeoutException_initWithNSString_(JreStrcat("$J$", @"Timed out after ", [((JavaUtilConcurrentTimeUnit *) nil_chk(unit)) toMillisWithLong:timeout], @"ms waiting for underlying Observable."));
  }
}

- (id)getValue {
  return RxInternalOperatorsBlockingOperatorToFuture_$2_getValue(self);
}

- (instancetype)initWithJavaUtilConcurrentCountDownLatch:(JavaUtilConcurrentCountDownLatch *)capture$0
                                      withRxSubscription:(id<RxSubscription>)capture$1
             withJavaUtilConcurrentAtomicAtomicReference:(JavaUtilConcurrentAtomicAtomicReference *)capture$2
             withJavaUtilConcurrentAtomicAtomicReference:(JavaUtilConcurrentAtomicAtomicReference *)capture$3 {
  RxInternalOperatorsBlockingOperatorToFuture_$2_initWithJavaUtilConcurrentCountDownLatch_withRxSubscription_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilConcurrentAtomicAtomicReference_(self, capture$0, capture$1, capture$2, capture$3);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "cancelWithBoolean:", "Z", 0x1, 0, 1, -1, -1, -1, -1 },
    { "isCancelled", "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { "isDone", "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { "get", "LNSObject;", 0x1, -1, -1, 2, 3, -1, -1 },
    { "getWithLong:withJavaUtilConcurrentTimeUnit:", "LNSObject;", 0x1, 4, 5, 6, 7, -1, -1 },
    { "getValue", "LNSObject;", 0x2, -1, -1, 8, 3, -1, -1 },
    { "initWithJavaUtilConcurrentCountDownLatch:withRxSubscription:withJavaUtilConcurrentAtomicAtomicReference:withJavaUtilConcurrentAtomicAtomicReference:", NULL, 0x0, -1, 9, -1, 10, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "cancelled_", "Z", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "val$finished_", "LJavaUtilConcurrentCountDownLatch;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$s_", "LRxSubscription;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$error_", "LJavaUtilConcurrentAtomicAtomicReference;", .constantValue.asLong = 0, 0x1012, -1, -1, 11, -1 },
    { "val$value_", "LJavaUtilConcurrentAtomicAtomicReference;", .constantValue.asLong = 0, 0x1012, -1, -1, 12, -1 },
  };
  static const void *ptrTable[] = { "cancel", "Z", "LJavaLangInterruptedException;LJavaUtilConcurrentExecutionException;", "()TT;", "get", "JLJavaUtilConcurrentTimeUnit;", "LJavaLangInterruptedException;LJavaUtilConcurrentExecutionException;LJavaUtilConcurrentTimeoutException;", "(JLjava/util/concurrent/TimeUnit;)TT;", "LJavaUtilConcurrentExecutionException;", "LJavaUtilConcurrentCountDownLatch;LRxSubscription;LJavaUtilConcurrentAtomicAtomicReference;LJavaUtilConcurrentAtomicAtomicReference;", "(Ljava/util/concurrent/CountDownLatch;Lrx/Subscription;Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;Ljava/util/concurrent/atomic/AtomicReference<TT;>;)V", "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;", "Ljava/util/concurrent/atomic/AtomicReference<TT;>;", "LRxInternalOperatorsBlockingOperatorToFuture;", "toFutureWithRxObservable:", "Ljava/lang/Object;Ljava/util/concurrent/Future<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsBlockingOperatorToFuture_$2 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 7, 5, 13, -1, 14, 15, -1 };
  return &_RxInternalOperatorsBlockingOperatorToFuture_$2;
}

@end

id RxInternalOperatorsBlockingOperatorToFuture_$2_getValue(RxInternalOperatorsBlockingOperatorToFuture_$2 *self) {
  NSException *throwable = [((JavaUtilConcurrentAtomicAtomicReference *) nil_chk(self->val$error_)) get];
  if (throwable != nil) {
    @throw new_JavaUtilConcurrentExecutionException_initWithNSString_withNSException_(@"Observable onError", throwable);
  }
  else if (JreLoadVolatileBoolean(&self->cancelled_)) {
    @throw new_JavaUtilConcurrentCancellationException_initWithNSString_(@"Subscription unsubscribed");
  }
  else {
    return [((JavaUtilConcurrentAtomicAtomicReference *) nil_chk(self->val$value_)) get];
  }
}

void RxInternalOperatorsBlockingOperatorToFuture_$2_initWithJavaUtilConcurrentCountDownLatch_withRxSubscription_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilConcurrentAtomicAtomicReference_(RxInternalOperatorsBlockingOperatorToFuture_$2 *self, JavaUtilConcurrentCountDownLatch *capture$0, id<RxSubscription> capture$1, JavaUtilConcurrentAtomicAtomicReference *capture$2, JavaUtilConcurrentAtomicAtomicReference *capture$3) {
  self->val$finished_ = capture$0;
  self->val$s_ = capture$1;
  self->val$error_ = capture$2;
  self->val$value_ = capture$3;
  NSObject_init(self);
  JreAssignVolatileBoolean(&self->cancelled_, false);
}

RxInternalOperatorsBlockingOperatorToFuture_$2 *new_RxInternalOperatorsBlockingOperatorToFuture_$2_initWithJavaUtilConcurrentCountDownLatch_withRxSubscription_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilConcurrentAtomicAtomicReference_(JavaUtilConcurrentCountDownLatch *capture$0, id<RxSubscription> capture$1, JavaUtilConcurrentAtomicAtomicReference *capture$2, JavaUtilConcurrentAtomicAtomicReference *capture$3) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsBlockingOperatorToFuture_$2, initWithJavaUtilConcurrentCountDownLatch_withRxSubscription_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilConcurrentAtomicAtomicReference_, capture$0, capture$1, capture$2, capture$3)
}

RxInternalOperatorsBlockingOperatorToFuture_$2 *create_RxInternalOperatorsBlockingOperatorToFuture_$2_initWithJavaUtilConcurrentCountDownLatch_withRxSubscription_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilConcurrentAtomicAtomicReference_(JavaUtilConcurrentCountDownLatch *capture$0, id<RxSubscription> capture$1, JavaUtilConcurrentAtomicAtomicReference *capture$2, JavaUtilConcurrentAtomicAtomicReference *capture$3) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsBlockingOperatorToFuture_$2, initWithJavaUtilConcurrentCountDownLatch_withRxSubscription_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilConcurrentAtomicAtomicReference_, capture$0, capture$1, capture$2, capture$3)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsBlockingOperatorToFuture_$2)
