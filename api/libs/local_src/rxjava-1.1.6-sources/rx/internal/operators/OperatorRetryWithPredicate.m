//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorRetryWithPredicate.java
//

#include "J2ObjC_source.h"
#include "java/lang/Boolean.h"
#include "java/lang/Integer.h"
#include "java/util/concurrent/atomic/AtomicInteger.h"
#include "rx/Observable.h"
#include "rx/Producer.h"
#include "rx/Scheduler.h"
#include "rx/Subscriber.h"
#include "rx/Subscription.h"
#include "rx/functions/Action0.h"
#include "rx/functions/Func2.h"
#include "rx/internal/operators/OperatorRetryWithPredicate.h"
#include "rx/internal/producers/ProducerArbiter.h"
#include "rx/schedulers/Schedulers.h"
#include "rx/subscriptions/SerialSubscription.h"

@interface RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1 : NSObject < RxFunctionsAction0 > {
 @public
  RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber *this$0_;
  RxObservable *val$o_;
}

- (void)call;

- (instancetype)initWithRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber:(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber *)outer$
                                                                      withRxObservable:(RxObservable *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1, this$0_, RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1, val$o_, RxObservable *)

__attribute__((unused)) static void RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_initWithRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_withRxObservable_(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1 *self, RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber *outer$, RxObservable *capture$0);

__attribute__((unused)) static RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1 *new_RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_initWithRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_withRxObservable_(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber *outer$, RxObservable *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1 *create_RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_initWithRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_withRxObservable_(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber *outer$, RxObservable *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1)

@interface RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_$1 : RxSubscriber {
 @public
  RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1 *this$0_;
  jboolean done_;
  id<RxFunctionsAction0> val$_self_;
}

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)v;

- (void)setProducerWithRxProducer:(id<RxProducer>)p;

- (instancetype)initWithRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1:(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1 *)outer$
                                                                   withRxFunctionsAction0:(id<RxFunctionsAction0>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_$1, this$0_, RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1 *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_$1, val$_self_, id<RxFunctionsAction0>)

__attribute__((unused)) static void RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_$1_initWithRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_withRxFunctionsAction0_(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_$1 *self, RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1 *outer$, id<RxFunctionsAction0> capture$0);

__attribute__((unused)) static RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_$1 *new_RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_$1_initWithRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_withRxFunctionsAction0_(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1 *outer$, id<RxFunctionsAction0> capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_$1 *create_RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_$1_initWithRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_withRxFunctionsAction0_(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1 *outer$, id<RxFunctionsAction0> capture$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_$1)

@implementation RxInternalOperatorsOperatorRetryWithPredicate

- (instancetype)initWithRxFunctionsFunc2:(id<RxFunctionsFunc2>)predicate {
  RxInternalOperatorsOperatorRetryWithPredicate_initWithRxFunctionsFunc2_(self, predicate);
  return self;
}

- (RxSubscriber *)callWithId:(RxSubscriber *)child {
  RxScheduler_Worker *inner = [((RxScheduler *) nil_chk(RxSchedulersSchedulers_trampoline())) createWorker];
  [((RxSubscriber *) nil_chk(child)) addWithRxSubscription:inner];
  RxSubscriptionsSerialSubscription *serialSubscription = new_RxSubscriptionsSerialSubscription_init();
  [child addWithRxSubscription:serialSubscription];
  RxInternalProducersProducerArbiter *pa = new_RxInternalProducersProducerArbiter_init();
  [child setProducerWithRxProducer:pa];
  return new_RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_initWithRxSubscriber_withRxFunctionsFunc2_withRxScheduler_Worker_withRxSubscriptionsSerialSubscription_withRxInternalProducersProducerArbiter_(child, predicate_, inner, serialSubscription, pa);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxFunctionsFunc2:", NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { "callWithId:", "LRxSubscriber;", 0x1, 2, 3, -1, 4, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "predicate_", "LRxFunctionsFunc2;", .constantValue.asLong = 0, 0x10, -1, -1, 5, -1 },
  };
  static const void *ptrTable[] = { "LRxFunctionsFunc2;", "(Lrx/functions/Func2<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;)V", "call", "LRxSubscriber;", "(Lrx/Subscriber<-TT;>;)Lrx/Subscriber<-Lrx/Observable<TT;>;>;", "Lrx/functions/Func2<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;", "LRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$Operator<TT;Lrx/Observable<TT;>;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorRetryWithPredicate = { "OperatorRetryWithPredicate", "rx.internal.operators", ptrTable, methods, fields, 7, 0x11, 2, 1, -1, 6, -1, 7, -1 };
  return &_RxInternalOperatorsOperatorRetryWithPredicate;
}

@end

void RxInternalOperatorsOperatorRetryWithPredicate_initWithRxFunctionsFunc2_(RxInternalOperatorsOperatorRetryWithPredicate *self, id<RxFunctionsFunc2> predicate) {
  NSObject_init(self);
  self->predicate_ = predicate;
}

RxInternalOperatorsOperatorRetryWithPredicate *new_RxInternalOperatorsOperatorRetryWithPredicate_initWithRxFunctionsFunc2_(id<RxFunctionsFunc2> predicate) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorRetryWithPredicate, initWithRxFunctionsFunc2_, predicate)
}

RxInternalOperatorsOperatorRetryWithPredicate *create_RxInternalOperatorsOperatorRetryWithPredicate_initWithRxFunctionsFunc2_(id<RxFunctionsFunc2> predicate) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorRetryWithPredicate, initWithRxFunctionsFunc2_, predicate)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorRetryWithPredicate)

@implementation RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber

- (instancetype)initWithRxSubscriber:(RxSubscriber *)child
                withRxFunctionsFunc2:(id<RxFunctionsFunc2>)predicate
              withRxScheduler_Worker:(RxScheduler_Worker *)inner
withRxSubscriptionsSerialSubscription:(RxSubscriptionsSerialSubscription *)serialSubscription
withRxInternalProducersProducerArbiter:(RxInternalProducersProducerArbiter *)pa {
  RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_initWithRxSubscriber_withRxFunctionsFunc2_withRxScheduler_Worker_withRxSubscriptionsSerialSubscription_withRxInternalProducersProducerArbiter_(self, child, predicate, inner, serialSubscription, pa);
  return self;
}

- (void)onCompleted {
}

- (void)onErrorWithNSException:(NSException *)e {
  [((RxSubscriber *) nil_chk(child_)) onErrorWithNSException:e];
}

- (void)onNextWithId:(RxObservable *)o {
  (void) [((RxScheduler_Worker *) nil_chk(inner_)) scheduleWithRxFunctionsAction0:new_RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_initWithRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_withRxObservable_(self, o)];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxSubscriber:withRxFunctionsFunc2:withRxScheduler_Worker:withRxSubscriptionsSerialSubscription:withRxInternalProducersProducerArbiter:", NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { "onNextWithId:", "V", 0x1, 4, 5, -1, 6, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "child_", "LRxSubscriber;", .constantValue.asLong = 0, 0x10, -1, -1, 7, -1 },
    { "predicate_", "LRxFunctionsFunc2;", .constantValue.asLong = 0, 0x10, -1, -1, 8, -1 },
    { "inner_", "LRxScheduler_Worker;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "serialSubscription_", "LRxSubscriptionsSerialSubscription;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "pa_", "LRxInternalProducersProducerArbiter;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "attempts_", "LJavaUtilConcurrentAtomicAtomicInteger;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LRxSubscriber;LRxFunctionsFunc2;LRxScheduler_Worker;LRxSubscriptionsSerialSubscription;LRxInternalProducersProducerArbiter;", "(Lrx/Subscriber<-TT;>;Lrx/functions/Func2<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;Lrx/Scheduler$Worker;Lrx/subscriptions/SerialSubscription;Lrx/internal/producers/ProducerArbiter;)V", "onError", "LNSException;", "onNext", "LRxObservable;", "(Lrx/Observable<TT;>;)V", "Lrx/Subscriber<-TT;>;", "Lrx/functions/Func2<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;", "LRxInternalOperatorsOperatorRetryWithPredicate;", "<T:Ljava/lang/Object;>Lrx/Subscriber<Lrx/Observable<TT;>;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber = { "SourceSubscriber", "rx.internal.operators", ptrTable, methods, fields, 7, 0x18, 4, 6, 9, -1, -1, 10, -1 };
  return &_RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber;
}

@end

void RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_initWithRxSubscriber_withRxFunctionsFunc2_withRxScheduler_Worker_withRxSubscriptionsSerialSubscription_withRxInternalProducersProducerArbiter_(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber *self, RxSubscriber *child, id<RxFunctionsFunc2> predicate, RxScheduler_Worker *inner, RxSubscriptionsSerialSubscription *serialSubscription, RxInternalProducersProducerArbiter *pa) {
  RxSubscriber_init(self);
  self->attempts_ = new_JavaUtilConcurrentAtomicAtomicInteger_init();
  self->child_ = child;
  self->predicate_ = predicate;
  self->inner_ = inner;
  self->serialSubscription_ = serialSubscription;
  self->pa_ = pa;
}

RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber *new_RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_initWithRxSubscriber_withRxFunctionsFunc2_withRxScheduler_Worker_withRxSubscriptionsSerialSubscription_withRxInternalProducersProducerArbiter_(RxSubscriber *child, id<RxFunctionsFunc2> predicate, RxScheduler_Worker *inner, RxSubscriptionsSerialSubscription *serialSubscription, RxInternalProducersProducerArbiter *pa) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber, initWithRxSubscriber_withRxFunctionsFunc2_withRxScheduler_Worker_withRxSubscriptionsSerialSubscription_withRxInternalProducersProducerArbiter_, child, predicate, inner, serialSubscription, pa)
}

RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber *create_RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_initWithRxSubscriber_withRxFunctionsFunc2_withRxScheduler_Worker_withRxSubscriptionsSerialSubscription_withRxInternalProducersProducerArbiter_(RxSubscriber *child, id<RxFunctionsFunc2> predicate, RxScheduler_Worker *inner, RxSubscriptionsSerialSubscription *serialSubscription, RxInternalProducersProducerArbiter *pa) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber, initWithRxSubscriber_withRxFunctionsFunc2_withRxScheduler_Worker_withRxSubscriptionsSerialSubscription_withRxInternalProducersProducerArbiter_, child, predicate, inner, serialSubscription, pa)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber)

@implementation RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1

- (void)call {
  id<RxFunctionsAction0> _self = self;
  [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(this$0_->attempts_)) incrementAndGet];
  RxSubscriber *subscriber = new_RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_$1_initWithRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_withRxFunctionsAction0_(self, _self);
  [((RxSubscriptionsSerialSubscription *) nil_chk(this$0_->serialSubscription_)) setWithRxSubscription:subscriber];
  (void) [((RxObservable *) nil_chk(val$o_)) unsafeSubscribeWithRxSubscriber:subscriber];
}

- (instancetype)initWithRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber:(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber *)outer$
                                                                      withRxObservable:(RxObservable *)capture$0 {
  RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_initWithRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_withRxObservable_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "call", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "initWithRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber:withRxObservable:", NULL, 0x0, -1, 0, -1, 1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$o_", "LRxObservable;", .constantValue.asLong = 0, 0x1012, -1, -1, 2, -1 },
  };
  static const void *ptrTable[] = { "LRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber;LRxObservable;", "(Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;Lrx/Observable<TT;>;)V", "Lrx/Observable<TT;>;", "LRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber;", "onNextWithId:" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 2, 2, 3, -1, 4, -1, -1 };
  return &_RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1;
}

@end

void RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_initWithRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_withRxObservable_(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1 *self, RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber *outer$, RxObservable *capture$0) {
  self->this$0_ = outer$;
  self->val$o_ = capture$0;
  NSObject_init(self);
}

RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1 *new_RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_initWithRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_withRxObservable_(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber *outer$, RxObservable *capture$0) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1, initWithRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_withRxObservable_, outer$, capture$0)
}

RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1 *create_RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_initWithRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_withRxObservable_(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber *outer$, RxObservable *capture$0) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1, initWithRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_withRxObservable_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1)

@implementation RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_$1

- (void)onCompleted {
  if (!done_) {
    done_ = true;
    [((RxSubscriber *) nil_chk(this$0_->this$0_->child_)) onCompleted];
  }
}

- (void)onErrorWithNSException:(NSException *)e {
  if (!done_) {
    done_ = true;
    if ([((JavaLangBoolean *) nil_chk([((id<RxFunctionsFunc2>) nil_chk(this$0_->this$0_->predicate_)) callWithId:JavaLangInteger_valueOfWithInt_([((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(this$0_->this$0_->attempts_)) get]) withId:e])) booleanValue] && ![((RxScheduler_Worker *) nil_chk(this$0_->this$0_->inner_)) isUnsubscribed]) {
      (void) [((RxScheduler_Worker *) nil_chk(this$0_->this$0_->inner_)) scheduleWithRxFunctionsAction0:val$_self_];
    }
    else {
      [((RxSubscriber *) nil_chk(this$0_->this$0_->child_)) onErrorWithNSException:e];
    }
  }
}

- (void)onNextWithId:(id)v {
  if (!done_) {
    [((RxSubscriber *) nil_chk(this$0_->this$0_->child_)) onNextWithId:v];
    [((RxInternalProducersProducerArbiter *) nil_chk(this$0_->this$0_->pa_)) producedWithLong:1];
  }
}

- (void)setProducerWithRxProducer:(id<RxProducer>)p {
  [((RxInternalProducersProducerArbiter *) nil_chk(this$0_->this$0_->pa_)) setProducerWithRxProducer:p];
}

- (instancetype)initWithRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1:(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1 *)outer$
                                                                   withRxFunctionsAction0:(id<RxFunctionsAction0>)capture$0 {
  RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_$1_initWithRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_withRxFunctionsAction0_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { "onNextWithId:", "V", 0x1, 2, 3, -1, 4, -1, -1 },
    { "setProducerWithRxProducer:", "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { "initWithRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1:withRxFunctionsAction0:", NULL, 0x0, -1, 7, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "done_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "val$_self_", "LRxFunctionsAction0;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "onError", "LNSException;", "onNext", "LNSObject;", "(TT;)V", "setProducer", "LRxProducer;", "LRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1;LRxFunctionsAction0;", "LRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1;", "call", "Lrx/Subscriber<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_$1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 5, 3, 8, -1, 9, 10, -1 };
  return &_RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_$1;
}

@end

void RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_$1_initWithRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_withRxFunctionsAction0_(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_$1 *self, RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1 *outer$, id<RxFunctionsAction0> capture$0) {
  self->this$0_ = outer$;
  self->val$_self_ = capture$0;
  RxSubscriber_init(self);
}

RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_$1 *new_RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_$1_initWithRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_withRxFunctionsAction0_(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1 *outer$, id<RxFunctionsAction0> capture$0) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_$1, initWithRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_withRxFunctionsAction0_, outer$, capture$0)
}

RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_$1 *create_RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_$1_initWithRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_withRxFunctionsAction0_(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1 *outer$, id<RxFunctionsAction0> capture$0) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_$1, initWithRxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_withRxFunctionsAction0_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorRetryWithPredicate_SourceSubscriber_$1_$1)