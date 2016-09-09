//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorThrottleFirst.java
//

#include "J2ObjC_source.h"
#include "java/lang/Long.h"
#include "java/util/concurrent/TimeUnit.h"
#include "rx/Scheduler.h"
#include "rx/Subscriber.h"
#include "rx/internal/operators/OperatorThrottleFirst.h"

@interface RxInternalOperatorsOperatorThrottleFirst_$1 : RxSubscriber {
 @public
  RxInternalOperatorsOperatorThrottleFirst *this$0_;
  jlong lastOnNext_;
  RxSubscriber *val$subscriber_;
}

- (void)onStart;

- (void)onNextWithId:(id)v;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (instancetype)initWithRxInternalOperatorsOperatorThrottleFirst:(RxInternalOperatorsOperatorThrottleFirst *)outer$
                                                withRxSubscriber:(RxSubscriber *)capture$0
                                                withRxSubscriber:(RxSubscriber *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorThrottleFirst_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorThrottleFirst_$1, this$0_, RxInternalOperatorsOperatorThrottleFirst *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorThrottleFirst_$1, val$subscriber_, RxSubscriber *)

__attribute__((unused)) static void RxInternalOperatorsOperatorThrottleFirst_$1_initWithRxInternalOperatorsOperatorThrottleFirst_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorThrottleFirst_$1 *self, RxInternalOperatorsOperatorThrottleFirst *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0);

__attribute__((unused)) static RxInternalOperatorsOperatorThrottleFirst_$1 *new_RxInternalOperatorsOperatorThrottleFirst_$1_initWithRxInternalOperatorsOperatorThrottleFirst_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorThrottleFirst *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorThrottleFirst_$1 *create_RxInternalOperatorsOperatorThrottleFirst_$1_initWithRxInternalOperatorsOperatorThrottleFirst_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorThrottleFirst *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorThrottleFirst_$1)

@implementation RxInternalOperatorsOperatorThrottleFirst

- (instancetype)initWithLong:(jlong)windowDuration
withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit
             withRxScheduler:(RxScheduler *)scheduler {
  RxInternalOperatorsOperatorThrottleFirst_initWithLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(self, windowDuration, unit, scheduler);
  return self;
}

- (RxSubscriber *)callWithId:(RxSubscriber *)subscriber {
  return new_RxInternalOperatorsOperatorThrottleFirst_$1_initWithRxInternalOperatorsOperatorThrottleFirst_withRxSubscriber_withRxSubscriber_(self, subscriber, subscriber);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLong:withJavaUtilConcurrentTimeUnit:withRxScheduler:", NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { "callWithId:", "LRxSubscriber;", 0x1, 1, 2, -1, 3, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "timeInMilliseconds_", "J", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "scheduler_", "LRxScheduler;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "JLJavaUtilConcurrentTimeUnit;LRxScheduler;", "call", "LRxSubscriber;", "(Lrx/Subscriber<-TT;>;)Lrx/Subscriber<-TT;>;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$Operator<TT;TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorThrottleFirst = { "OperatorThrottleFirst", "rx.internal.operators", ptrTable, methods, fields, 7, 0x11, 2, 2, -1, -1, -1, 4, -1 };
  return &_RxInternalOperatorsOperatorThrottleFirst;
}

@end

void RxInternalOperatorsOperatorThrottleFirst_initWithLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(RxInternalOperatorsOperatorThrottleFirst *self, jlong windowDuration, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler) {
  NSObject_init(self);
  self->timeInMilliseconds_ = [((JavaUtilConcurrentTimeUnit *) nil_chk(unit)) toMillisWithLong:windowDuration];
  self->scheduler_ = scheduler;
}

RxInternalOperatorsOperatorThrottleFirst *new_RxInternalOperatorsOperatorThrottleFirst_initWithLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(jlong windowDuration, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorThrottleFirst, initWithLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_, windowDuration, unit, scheduler)
}

RxInternalOperatorsOperatorThrottleFirst *create_RxInternalOperatorsOperatorThrottleFirst_initWithLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(jlong windowDuration, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorThrottleFirst, initWithLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_, windowDuration, unit, scheduler)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorThrottleFirst)

@implementation RxInternalOperatorsOperatorThrottleFirst_$1

- (void)onStart {
  [self requestWithLong:JavaLangLong_MAX_VALUE];
}

- (void)onNextWithId:(id)v {
  jlong now = [((RxScheduler *) nil_chk(this$0_->scheduler_)) now];
  if (lastOnNext_ == 0 || now - lastOnNext_ >= this$0_->timeInMilliseconds_) {
    lastOnNext_ = now;
    [((RxSubscriber *) nil_chk(val$subscriber_)) onNextWithId:v];
  }
}

- (void)onCompleted {
  [((RxSubscriber *) nil_chk(val$subscriber_)) onCompleted];
}

- (void)onErrorWithNSException:(NSException *)e {
  [((RxSubscriber *) nil_chk(val$subscriber_)) onErrorWithNSException:e];
}

- (instancetype)initWithRxInternalOperatorsOperatorThrottleFirst:(RxInternalOperatorsOperatorThrottleFirst *)outer$
                                                withRxSubscriber:(RxSubscriber *)capture$0
                                                withRxSubscriber:(RxSubscriber *)arg$0 {
  RxInternalOperatorsOperatorThrottleFirst_$1_initWithRxInternalOperatorsOperatorThrottleFirst_withRxSubscriber_withRxSubscriber_(self, outer$, capture$0, arg$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onStart", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "onNextWithId:", "V", 0x1, 0, 1, -1, 2, -1, -1 },
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { "initWithRxInternalOperatorsOperatorThrottleFirst:withRxSubscriber:withRxSubscriber:", NULL, 0x0, -1, 5, -1, 6, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LRxInternalOperatorsOperatorThrottleFirst;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "lastOnNext_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "val$subscriber_", "LRxSubscriber;", .constantValue.asLong = 0, 0x1012, -1, -1, 7, -1 },
  };
  static const void *ptrTable[] = { "onNext", "LNSObject;", "(TT;)V", "onError", "LNSException;", "LRxInternalOperatorsOperatorThrottleFirst;LRxSubscriber;LRxSubscriber;", "(Lrx/internal/operators/OperatorThrottleFirst;Lrx/Subscriber<-TT;>;Lrx/Subscriber<*>;)V", "Lrx/Subscriber<-TT;>;", "LRxInternalOperatorsOperatorThrottleFirst;", "callWithId:", "Lrx/Subscriber<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorThrottleFirst_$1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 5, 3, 8, -1, 9, 10, -1 };
  return &_RxInternalOperatorsOperatorThrottleFirst_$1;
}

@end

void RxInternalOperatorsOperatorThrottleFirst_$1_initWithRxInternalOperatorsOperatorThrottleFirst_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorThrottleFirst_$1 *self, RxInternalOperatorsOperatorThrottleFirst *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) {
  self->this$0_ = outer$;
  self->val$subscriber_ = capture$0;
  RxSubscriber_initWithRxSubscriber_(self, arg$0);
  self->lastOnNext_ = 0;
}

RxInternalOperatorsOperatorThrottleFirst_$1 *new_RxInternalOperatorsOperatorThrottleFirst_$1_initWithRxInternalOperatorsOperatorThrottleFirst_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorThrottleFirst *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorThrottleFirst_$1, initWithRxInternalOperatorsOperatorThrottleFirst_withRxSubscriber_withRxSubscriber_, outer$, capture$0, arg$0)
}

RxInternalOperatorsOperatorThrottleFirst_$1 *create_RxInternalOperatorsOperatorThrottleFirst_$1_initWithRxInternalOperatorsOperatorThrottleFirst_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorThrottleFirst *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorThrottleFirst_$1, initWithRxInternalOperatorsOperatorThrottleFirst_withRxSubscriber_withRxSubscriber_, outer$, capture$0, arg$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorThrottleFirst_$1)
