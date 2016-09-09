//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorTimeInterval.java
//

#include "J2ObjC_source.h"
#include "rx/Scheduler.h"
#include "rx/Subscriber.h"
#include "rx/internal/operators/OperatorTimeInterval.h"
#include "rx/schedulers/TimeInterval.h"

@interface RxInternalOperatorsOperatorTimeInterval_$1 : RxSubscriber {
 @public
  RxInternalOperatorsOperatorTimeInterval *this$0_;
  jlong lastTimestamp_;
  RxSubscriber *val$subscriber_;
}

- (void)onNextWithId:(id)args;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (instancetype)initWithRxInternalOperatorsOperatorTimeInterval:(RxInternalOperatorsOperatorTimeInterval *)outer$
                                               withRxSubscriber:(RxSubscriber *)capture$0
                                               withRxSubscriber:(RxSubscriber *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorTimeInterval_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorTimeInterval_$1, this$0_, RxInternalOperatorsOperatorTimeInterval *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorTimeInterval_$1, val$subscriber_, RxSubscriber *)

__attribute__((unused)) static void RxInternalOperatorsOperatorTimeInterval_$1_initWithRxInternalOperatorsOperatorTimeInterval_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorTimeInterval_$1 *self, RxInternalOperatorsOperatorTimeInterval *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0);

__attribute__((unused)) static RxInternalOperatorsOperatorTimeInterval_$1 *new_RxInternalOperatorsOperatorTimeInterval_$1_initWithRxInternalOperatorsOperatorTimeInterval_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorTimeInterval *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorTimeInterval_$1 *create_RxInternalOperatorsOperatorTimeInterval_$1_initWithRxInternalOperatorsOperatorTimeInterval_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorTimeInterval *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorTimeInterval_$1)

@implementation RxInternalOperatorsOperatorTimeInterval

- (instancetype)initWithRxScheduler:(RxScheduler *)scheduler {
  RxInternalOperatorsOperatorTimeInterval_initWithRxScheduler_(self, scheduler);
  return self;
}

- (RxSubscriber *)callWithId:(RxSubscriber *)subscriber {
  return new_RxInternalOperatorsOperatorTimeInterval_$1_initWithRxInternalOperatorsOperatorTimeInterval_withRxSubscriber_withRxSubscriber_(self, subscriber, subscriber);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxScheduler:", NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { "callWithId:", "LRxSubscriber;", 0x1, 1, 2, -1, 3, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "scheduler_", "LRxScheduler;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LRxScheduler;", "call", "LRxSubscriber;", "(Lrx/Subscriber<-Lrx/schedulers/TimeInterval<TT;>;>;)Lrx/Subscriber<-TT;>;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$Operator<Lrx/schedulers/TimeInterval<TT;>;TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorTimeInterval = { "OperatorTimeInterval", "rx.internal.operators", ptrTable, methods, fields, 7, 0x11, 2, 1, -1, -1, -1, 4, -1 };
  return &_RxInternalOperatorsOperatorTimeInterval;
}

@end

void RxInternalOperatorsOperatorTimeInterval_initWithRxScheduler_(RxInternalOperatorsOperatorTimeInterval *self, RxScheduler *scheduler) {
  NSObject_init(self);
  self->scheduler_ = scheduler;
}

RxInternalOperatorsOperatorTimeInterval *new_RxInternalOperatorsOperatorTimeInterval_initWithRxScheduler_(RxScheduler *scheduler) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorTimeInterval, initWithRxScheduler_, scheduler)
}

RxInternalOperatorsOperatorTimeInterval *create_RxInternalOperatorsOperatorTimeInterval_initWithRxScheduler_(RxScheduler *scheduler) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorTimeInterval, initWithRxScheduler_, scheduler)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorTimeInterval)

@implementation RxInternalOperatorsOperatorTimeInterval_$1

- (void)onNextWithId:(id)args {
  jlong nowTimestamp = [((RxScheduler *) nil_chk(this$0_->scheduler_)) now];
  [((RxSubscriber *) nil_chk(val$subscriber_)) onNextWithId:new_RxSchedulersTimeInterval_initWithLong_withId_(nowTimestamp - lastTimestamp_, args)];
  lastTimestamp_ = nowTimestamp;
}

- (void)onCompleted {
  [((RxSubscriber *) nil_chk(val$subscriber_)) onCompleted];
}

- (void)onErrorWithNSException:(NSException *)e {
  [((RxSubscriber *) nil_chk(val$subscriber_)) onErrorWithNSException:e];
}

- (instancetype)initWithRxInternalOperatorsOperatorTimeInterval:(RxInternalOperatorsOperatorTimeInterval *)outer$
                                               withRxSubscriber:(RxSubscriber *)capture$0
                                               withRxSubscriber:(RxSubscriber *)arg$0 {
  RxInternalOperatorsOperatorTimeInterval_$1_initWithRxInternalOperatorsOperatorTimeInterval_withRxSubscriber_withRxSubscriber_(self, outer$, capture$0, arg$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onNextWithId:", "V", 0x1, 0, 1, -1, 2, -1, -1 },
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { "initWithRxInternalOperatorsOperatorTimeInterval:withRxSubscriber:withRxSubscriber:", NULL, 0x0, -1, 5, -1, 6, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LRxInternalOperatorsOperatorTimeInterval;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "lastTimestamp_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "val$subscriber_", "LRxSubscriber;", .constantValue.asLong = 0, 0x1012, -1, -1, 7, -1 },
  };
  static const void *ptrTable[] = { "onNext", "LNSObject;", "(TT;)V", "onError", "LNSException;", "LRxInternalOperatorsOperatorTimeInterval;LRxSubscriber;LRxSubscriber;", "(Lrx/internal/operators/OperatorTimeInterval;Lrx/Subscriber<-Lrx/schedulers/TimeInterval<TT;>;>;Lrx/Subscriber<*>;)V", "Lrx/Subscriber<-Lrx/schedulers/TimeInterval<TT;>;>;", "LRxInternalOperatorsOperatorTimeInterval;", "callWithId:", "Lrx/Subscriber<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorTimeInterval_$1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 4, 3, 8, -1, 9, 10, -1 };
  return &_RxInternalOperatorsOperatorTimeInterval_$1;
}

@end

void RxInternalOperatorsOperatorTimeInterval_$1_initWithRxInternalOperatorsOperatorTimeInterval_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorTimeInterval_$1 *self, RxInternalOperatorsOperatorTimeInterval *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) {
  self->this$0_ = outer$;
  self->val$subscriber_ = capture$0;
  RxSubscriber_initWithRxSubscriber_(self, arg$0);
  self->lastTimestamp_ = [((RxScheduler *) nil_chk(outer$->scheduler_)) now];
}

RxInternalOperatorsOperatorTimeInterval_$1 *new_RxInternalOperatorsOperatorTimeInterval_$1_initWithRxInternalOperatorsOperatorTimeInterval_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorTimeInterval *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorTimeInterval_$1, initWithRxInternalOperatorsOperatorTimeInterval_withRxSubscriber_withRxSubscriber_, outer$, capture$0, arg$0)
}

RxInternalOperatorsOperatorTimeInterval_$1 *create_RxInternalOperatorsOperatorTimeInterval_$1_initWithRxInternalOperatorsOperatorTimeInterval_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorTimeInterval *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorTimeInterval_$1, initWithRxInternalOperatorsOperatorTimeInterval_withRxSubscriber_withRxSubscriber_, outer$, capture$0, arg$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorTimeInterval_$1)