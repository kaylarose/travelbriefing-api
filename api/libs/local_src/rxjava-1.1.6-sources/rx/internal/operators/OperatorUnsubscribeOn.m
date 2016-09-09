//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorUnsubscribeOn.java
//

#include "J2ObjC_source.h"
#include "rx/Scheduler.h"
#include "rx/Subscriber.h"
#include "rx/Subscription.h"
#include "rx/functions/Action0.h"
#include "rx/internal/operators/OperatorUnsubscribeOn.h"
#include "rx/subscriptions/Subscriptions.h"

@interface RxInternalOperatorsOperatorUnsubscribeOn_$1 : RxSubscriber {
 @public
  RxSubscriber *val$subscriber_;
}

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)t;

- (instancetype)initWithRxSubscriber:(RxSubscriber *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorUnsubscribeOn_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorUnsubscribeOn_$1, val$subscriber_, RxSubscriber *)

__attribute__((unused)) static void RxInternalOperatorsOperatorUnsubscribeOn_$1_initWithRxSubscriber_(RxInternalOperatorsOperatorUnsubscribeOn_$1 *self, RxSubscriber *capture$0);

__attribute__((unused)) static RxInternalOperatorsOperatorUnsubscribeOn_$1 *new_RxInternalOperatorsOperatorUnsubscribeOn_$1_initWithRxSubscriber_(RxSubscriber *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorUnsubscribeOn_$1 *create_RxInternalOperatorsOperatorUnsubscribeOn_$1_initWithRxSubscriber_(RxSubscriber *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorUnsubscribeOn_$1)

@interface RxInternalOperatorsOperatorUnsubscribeOn_$2 : NSObject < RxFunctionsAction0 > {
 @public
  RxInternalOperatorsOperatorUnsubscribeOn *this$0_;
  RxSubscriber *val$parent_;
}

- (void)call;

- (instancetype)initWithRxInternalOperatorsOperatorUnsubscribeOn:(RxInternalOperatorsOperatorUnsubscribeOn *)outer$
                                                withRxSubscriber:(RxSubscriber *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorUnsubscribeOn_$2)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorUnsubscribeOn_$2, this$0_, RxInternalOperatorsOperatorUnsubscribeOn *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorUnsubscribeOn_$2, val$parent_, RxSubscriber *)

__attribute__((unused)) static void RxInternalOperatorsOperatorUnsubscribeOn_$2_initWithRxInternalOperatorsOperatorUnsubscribeOn_withRxSubscriber_(RxInternalOperatorsOperatorUnsubscribeOn_$2 *self, RxInternalOperatorsOperatorUnsubscribeOn *outer$, RxSubscriber *capture$0);

__attribute__((unused)) static RxInternalOperatorsOperatorUnsubscribeOn_$2 *new_RxInternalOperatorsOperatorUnsubscribeOn_$2_initWithRxInternalOperatorsOperatorUnsubscribeOn_withRxSubscriber_(RxInternalOperatorsOperatorUnsubscribeOn *outer$, RxSubscriber *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorUnsubscribeOn_$2 *create_RxInternalOperatorsOperatorUnsubscribeOn_$2_initWithRxInternalOperatorsOperatorUnsubscribeOn_withRxSubscriber_(RxInternalOperatorsOperatorUnsubscribeOn *outer$, RxSubscriber *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorUnsubscribeOn_$2)

@interface RxInternalOperatorsOperatorUnsubscribeOn_$2_$1 : NSObject < RxFunctionsAction0 > {
 @public
  RxInternalOperatorsOperatorUnsubscribeOn_$2 *this$0_;
  RxScheduler_Worker *val$inner_;
}

- (void)call;

- (instancetype)initWithRxInternalOperatorsOperatorUnsubscribeOn_$2:(RxInternalOperatorsOperatorUnsubscribeOn_$2 *)outer$
                                             withRxScheduler_Worker:(RxScheduler_Worker *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorUnsubscribeOn_$2_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorUnsubscribeOn_$2_$1, this$0_, RxInternalOperatorsOperatorUnsubscribeOn_$2 *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorUnsubscribeOn_$2_$1, val$inner_, RxScheduler_Worker *)

__attribute__((unused)) static void RxInternalOperatorsOperatorUnsubscribeOn_$2_$1_initWithRxInternalOperatorsOperatorUnsubscribeOn_$2_withRxScheduler_Worker_(RxInternalOperatorsOperatorUnsubscribeOn_$2_$1 *self, RxInternalOperatorsOperatorUnsubscribeOn_$2 *outer$, RxScheduler_Worker *capture$0);

__attribute__((unused)) static RxInternalOperatorsOperatorUnsubscribeOn_$2_$1 *new_RxInternalOperatorsOperatorUnsubscribeOn_$2_$1_initWithRxInternalOperatorsOperatorUnsubscribeOn_$2_withRxScheduler_Worker_(RxInternalOperatorsOperatorUnsubscribeOn_$2 *outer$, RxScheduler_Worker *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorUnsubscribeOn_$2_$1 *create_RxInternalOperatorsOperatorUnsubscribeOn_$2_$1_initWithRxInternalOperatorsOperatorUnsubscribeOn_$2_withRxScheduler_Worker_(RxInternalOperatorsOperatorUnsubscribeOn_$2 *outer$, RxScheduler_Worker *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorUnsubscribeOn_$2_$1)

@implementation RxInternalOperatorsOperatorUnsubscribeOn

- (instancetype)initWithRxScheduler:(RxScheduler *)scheduler {
  RxInternalOperatorsOperatorUnsubscribeOn_initWithRxScheduler_(self, scheduler);
  return self;
}

- (RxSubscriber *)callWithId:(RxSubscriber *)subscriber {
  RxSubscriber *parent = new_RxInternalOperatorsOperatorUnsubscribeOn_$1_initWithRxSubscriber_(subscriber);
  [((RxSubscriber *) nil_chk(subscriber)) addWithRxSubscription:RxSubscriptionsSubscriptions_createWithRxFunctionsAction0_(new_RxInternalOperatorsOperatorUnsubscribeOn_$2_initWithRxInternalOperatorsOperatorUnsubscribeOn_withRxSubscriber_(self, parent))];
  return parent;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxScheduler:", NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { "callWithId:", "LRxSubscriber;", 0x1, 1, 2, -1, 3, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "scheduler_", "LRxScheduler;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LRxScheduler;", "call", "LRxSubscriber;", "(Lrx/Subscriber<-TT;>;)Lrx/Subscriber<-TT;>;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$Operator<TT;TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorUnsubscribeOn = { "OperatorUnsubscribeOn", "rx.internal.operators", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, 4, -1 };
  return &_RxInternalOperatorsOperatorUnsubscribeOn;
}

@end

void RxInternalOperatorsOperatorUnsubscribeOn_initWithRxScheduler_(RxInternalOperatorsOperatorUnsubscribeOn *self, RxScheduler *scheduler) {
  NSObject_init(self);
  self->scheduler_ = scheduler;
}

RxInternalOperatorsOperatorUnsubscribeOn *new_RxInternalOperatorsOperatorUnsubscribeOn_initWithRxScheduler_(RxScheduler *scheduler) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorUnsubscribeOn, initWithRxScheduler_, scheduler)
}

RxInternalOperatorsOperatorUnsubscribeOn *create_RxInternalOperatorsOperatorUnsubscribeOn_initWithRxScheduler_(RxScheduler *scheduler) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorUnsubscribeOn, initWithRxScheduler_, scheduler)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorUnsubscribeOn)

@implementation RxInternalOperatorsOperatorUnsubscribeOn_$1

- (void)onCompleted {
  [((RxSubscriber *) nil_chk(val$subscriber_)) onCompleted];
}

- (void)onErrorWithNSException:(NSException *)e {
  [((RxSubscriber *) nil_chk(val$subscriber_)) onErrorWithNSException:e];
}

- (void)onNextWithId:(id)t {
  [((RxSubscriber *) nil_chk(val$subscriber_)) onNextWithId:t];
}

- (instancetype)initWithRxSubscriber:(RxSubscriber *)capture$0 {
  RxInternalOperatorsOperatorUnsubscribeOn_$1_initWithRxSubscriber_(self, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { "onNextWithId:", "V", 0x1, 2, 3, -1, 4, -1, -1 },
    { "initWithRxSubscriber:", NULL, 0x0, -1, 5, -1, 6, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$subscriber_", "LRxSubscriber;", .constantValue.asLong = 0, 0x1012, -1, -1, 7, -1 },
  };
  static const void *ptrTable[] = { "onError", "LNSException;", "onNext", "LNSObject;", "(TT;)V", "LRxSubscriber;", "(Lrx/Subscriber<-TT;>;)V", "Lrx/Subscriber<-TT;>;", "LRxInternalOperatorsOperatorUnsubscribeOn;", "callWithId:", "Lrx/Subscriber<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorUnsubscribeOn_$1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 4, 1, 8, -1, 9, 10, -1 };
  return &_RxInternalOperatorsOperatorUnsubscribeOn_$1;
}

@end

void RxInternalOperatorsOperatorUnsubscribeOn_$1_initWithRxSubscriber_(RxInternalOperatorsOperatorUnsubscribeOn_$1 *self, RxSubscriber *capture$0) {
  self->val$subscriber_ = capture$0;
  RxSubscriber_init(self);
}

RxInternalOperatorsOperatorUnsubscribeOn_$1 *new_RxInternalOperatorsOperatorUnsubscribeOn_$1_initWithRxSubscriber_(RxSubscriber *capture$0) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorUnsubscribeOn_$1, initWithRxSubscriber_, capture$0)
}

RxInternalOperatorsOperatorUnsubscribeOn_$1 *create_RxInternalOperatorsOperatorUnsubscribeOn_$1_initWithRxSubscriber_(RxSubscriber *capture$0) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorUnsubscribeOn_$1, initWithRxSubscriber_, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorUnsubscribeOn_$1)

@implementation RxInternalOperatorsOperatorUnsubscribeOn_$2

- (void)call {
  RxScheduler_Worker *inner = [((RxScheduler *) nil_chk(this$0_->scheduler_)) createWorker];
  (void) [((RxScheduler_Worker *) nil_chk(inner)) scheduleWithRxFunctionsAction0:new_RxInternalOperatorsOperatorUnsubscribeOn_$2_$1_initWithRxInternalOperatorsOperatorUnsubscribeOn_$2_withRxScheduler_Worker_(self, inner)];
}

- (instancetype)initWithRxInternalOperatorsOperatorUnsubscribeOn:(RxInternalOperatorsOperatorUnsubscribeOn *)outer$
                                                withRxSubscriber:(RxSubscriber *)capture$0 {
  RxInternalOperatorsOperatorUnsubscribeOn_$2_initWithRxInternalOperatorsOperatorUnsubscribeOn_withRxSubscriber_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "call", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "initWithRxInternalOperatorsOperatorUnsubscribeOn:withRxSubscriber:", NULL, 0x0, -1, 0, -1, 1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LRxInternalOperatorsOperatorUnsubscribeOn;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$parent_", "LRxSubscriber;", .constantValue.asLong = 0, 0x1012, -1, -1, 2, -1 },
  };
  static const void *ptrTable[] = { "LRxInternalOperatorsOperatorUnsubscribeOn;LRxSubscriber;", "(Lrx/internal/operators/OperatorUnsubscribeOn;Lrx/Subscriber<TT;>;)V", "Lrx/Subscriber<TT;>;", "LRxInternalOperatorsOperatorUnsubscribeOn;", "callWithId:" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorUnsubscribeOn_$2 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 2, 2, 3, -1, 4, -1, -1 };
  return &_RxInternalOperatorsOperatorUnsubscribeOn_$2;
}

@end

void RxInternalOperatorsOperatorUnsubscribeOn_$2_initWithRxInternalOperatorsOperatorUnsubscribeOn_withRxSubscriber_(RxInternalOperatorsOperatorUnsubscribeOn_$2 *self, RxInternalOperatorsOperatorUnsubscribeOn *outer$, RxSubscriber *capture$0) {
  self->this$0_ = outer$;
  self->val$parent_ = capture$0;
  NSObject_init(self);
}

RxInternalOperatorsOperatorUnsubscribeOn_$2 *new_RxInternalOperatorsOperatorUnsubscribeOn_$2_initWithRxInternalOperatorsOperatorUnsubscribeOn_withRxSubscriber_(RxInternalOperatorsOperatorUnsubscribeOn *outer$, RxSubscriber *capture$0) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorUnsubscribeOn_$2, initWithRxInternalOperatorsOperatorUnsubscribeOn_withRxSubscriber_, outer$, capture$0)
}

RxInternalOperatorsOperatorUnsubscribeOn_$2 *create_RxInternalOperatorsOperatorUnsubscribeOn_$2_initWithRxInternalOperatorsOperatorUnsubscribeOn_withRxSubscriber_(RxInternalOperatorsOperatorUnsubscribeOn *outer$, RxSubscriber *capture$0) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorUnsubscribeOn_$2, initWithRxInternalOperatorsOperatorUnsubscribeOn_withRxSubscriber_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorUnsubscribeOn_$2)

@implementation RxInternalOperatorsOperatorUnsubscribeOn_$2_$1

- (void)call {
  [((RxSubscriber *) nil_chk(this$0_->val$parent_)) unsubscribe];
  [((RxScheduler_Worker *) nil_chk(val$inner_)) unsubscribe];
}

- (instancetype)initWithRxInternalOperatorsOperatorUnsubscribeOn_$2:(RxInternalOperatorsOperatorUnsubscribeOn_$2 *)outer$
                                             withRxScheduler_Worker:(RxScheduler_Worker *)capture$0 {
  RxInternalOperatorsOperatorUnsubscribeOn_$2_$1_initWithRxInternalOperatorsOperatorUnsubscribeOn_$2_withRxScheduler_Worker_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "call", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "initWithRxInternalOperatorsOperatorUnsubscribeOn_$2:withRxScheduler_Worker:", NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LRxInternalOperatorsOperatorUnsubscribeOn_$2;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$inner_", "LRxScheduler_Worker;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LRxInternalOperatorsOperatorUnsubscribeOn_$2;LRxScheduler_Worker;", "LRxInternalOperatorsOperatorUnsubscribeOn_$2;", "call" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorUnsubscribeOn_$2_$1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 2, 2, 1, -1, 2, -1, -1 };
  return &_RxInternalOperatorsOperatorUnsubscribeOn_$2_$1;
}

@end

void RxInternalOperatorsOperatorUnsubscribeOn_$2_$1_initWithRxInternalOperatorsOperatorUnsubscribeOn_$2_withRxScheduler_Worker_(RxInternalOperatorsOperatorUnsubscribeOn_$2_$1 *self, RxInternalOperatorsOperatorUnsubscribeOn_$2 *outer$, RxScheduler_Worker *capture$0) {
  self->this$0_ = outer$;
  self->val$inner_ = capture$0;
  NSObject_init(self);
}

RxInternalOperatorsOperatorUnsubscribeOn_$2_$1 *new_RxInternalOperatorsOperatorUnsubscribeOn_$2_$1_initWithRxInternalOperatorsOperatorUnsubscribeOn_$2_withRxScheduler_Worker_(RxInternalOperatorsOperatorUnsubscribeOn_$2 *outer$, RxScheduler_Worker *capture$0) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorUnsubscribeOn_$2_$1, initWithRxInternalOperatorsOperatorUnsubscribeOn_$2_withRxScheduler_Worker_, outer$, capture$0)
}

RxInternalOperatorsOperatorUnsubscribeOn_$2_$1 *create_RxInternalOperatorsOperatorUnsubscribeOn_$2_$1_initWithRxInternalOperatorsOperatorUnsubscribeOn_$2_withRxScheduler_Worker_(RxInternalOperatorsOperatorUnsubscribeOn_$2 *outer$, RxScheduler_Worker *capture$0) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorUnsubscribeOn_$2_$1, initWithRxInternalOperatorsOperatorUnsubscribeOn_$2_withRxScheduler_Worker_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorUnsubscribeOn_$2_$1)
