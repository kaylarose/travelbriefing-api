//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorSubscribeOn.java
//

#include "J2ObjC_source.h"
#include "java/lang/Thread.h"
#include "rx/Observable.h"
#include "rx/Producer.h"
#include "rx/Scheduler.h"
#include "rx/Subscriber.h"
#include "rx/Subscription.h"
#include "rx/functions/Action0.h"
#include "rx/internal/operators/OperatorSubscribeOn.h"

@interface RxInternalOperatorsOperatorSubscribeOn_$1 : NSObject < RxFunctionsAction0 > {
 @public
  RxInternalOperatorsOperatorSubscribeOn *this$0_;
  RxSubscriber *val$subscriber_;
  RxScheduler_Worker *val$inner_;
}

- (void)call;

- (instancetype)initWithRxInternalOperatorsOperatorSubscribeOn:(RxInternalOperatorsOperatorSubscribeOn *)outer$
                                              withRxSubscriber:(RxSubscriber *)capture$0
                                        withRxScheduler_Worker:(RxScheduler_Worker *)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorSubscribeOn_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorSubscribeOn_$1, this$0_, RxInternalOperatorsOperatorSubscribeOn *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorSubscribeOn_$1, val$subscriber_, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorSubscribeOn_$1, val$inner_, RxScheduler_Worker *)

__attribute__((unused)) static void RxInternalOperatorsOperatorSubscribeOn_$1_initWithRxInternalOperatorsOperatorSubscribeOn_withRxSubscriber_withRxScheduler_Worker_(RxInternalOperatorsOperatorSubscribeOn_$1 *self, RxInternalOperatorsOperatorSubscribeOn *outer$, RxSubscriber *capture$0, RxScheduler_Worker *capture$1);

__attribute__((unused)) static RxInternalOperatorsOperatorSubscribeOn_$1 *new_RxInternalOperatorsOperatorSubscribeOn_$1_initWithRxInternalOperatorsOperatorSubscribeOn_withRxSubscriber_withRxScheduler_Worker_(RxInternalOperatorsOperatorSubscribeOn *outer$, RxSubscriber *capture$0, RxScheduler_Worker *capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorSubscribeOn_$1 *create_RxInternalOperatorsOperatorSubscribeOn_$1_initWithRxInternalOperatorsOperatorSubscribeOn_withRxSubscriber_withRxScheduler_Worker_(RxInternalOperatorsOperatorSubscribeOn *outer$, RxSubscriber *capture$0, RxScheduler_Worker *capture$1);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorSubscribeOn_$1)

@interface RxInternalOperatorsOperatorSubscribeOn_$1_$1 : RxSubscriber {
 @public
  RxInternalOperatorsOperatorSubscribeOn_$1 *this$0_;
  JavaLangThread *val$t_;
}

- (void)onNextWithId:(id)t;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onCompleted;

- (void)setProducerWithRxProducer:(id<RxProducer>)p;

- (instancetype)initWithRxInternalOperatorsOperatorSubscribeOn_$1:(RxInternalOperatorsOperatorSubscribeOn_$1 *)outer$
                                               withJavaLangThread:(JavaLangThread *)capture$0
                                                 withRxSubscriber:(RxSubscriber *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorSubscribeOn_$1_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorSubscribeOn_$1_$1, this$0_, RxInternalOperatorsOperatorSubscribeOn_$1 *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorSubscribeOn_$1_$1, val$t_, JavaLangThread *)

__attribute__((unused)) static void RxInternalOperatorsOperatorSubscribeOn_$1_$1_initWithRxInternalOperatorsOperatorSubscribeOn_$1_withJavaLangThread_withRxSubscriber_(RxInternalOperatorsOperatorSubscribeOn_$1_$1 *self, RxInternalOperatorsOperatorSubscribeOn_$1 *outer$, JavaLangThread *capture$0, RxSubscriber *arg$0);

__attribute__((unused)) static RxInternalOperatorsOperatorSubscribeOn_$1_$1 *new_RxInternalOperatorsOperatorSubscribeOn_$1_$1_initWithRxInternalOperatorsOperatorSubscribeOn_$1_withJavaLangThread_withRxSubscriber_(RxInternalOperatorsOperatorSubscribeOn_$1 *outer$, JavaLangThread *capture$0, RxSubscriber *arg$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorSubscribeOn_$1_$1 *create_RxInternalOperatorsOperatorSubscribeOn_$1_$1_initWithRxInternalOperatorsOperatorSubscribeOn_$1_withJavaLangThread_withRxSubscriber_(RxInternalOperatorsOperatorSubscribeOn_$1 *outer$, JavaLangThread *capture$0, RxSubscriber *arg$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorSubscribeOn_$1_$1)

@interface RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1 : NSObject < RxProducer > {
 @public
  RxInternalOperatorsOperatorSubscribeOn_$1_$1 *this$0_;
  id<RxProducer> val$p_;
}

- (void)requestWithLong:(jlong)n;

- (instancetype)initWithRxInternalOperatorsOperatorSubscribeOn_$1_$1:(RxInternalOperatorsOperatorSubscribeOn_$1_$1 *)outer$
                                                      withRxProducer:(id<RxProducer>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1, this$0_, RxInternalOperatorsOperatorSubscribeOn_$1_$1 *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1, val$p_, id<RxProducer>)

__attribute__((unused)) static void RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_initWithRxInternalOperatorsOperatorSubscribeOn_$1_$1_withRxProducer_(RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1 *self, RxInternalOperatorsOperatorSubscribeOn_$1_$1 *outer$, id<RxProducer> capture$0);

__attribute__((unused)) static RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1 *new_RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_initWithRxInternalOperatorsOperatorSubscribeOn_$1_$1_withRxProducer_(RxInternalOperatorsOperatorSubscribeOn_$1_$1 *outer$, id<RxProducer> capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1 *create_RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_initWithRxInternalOperatorsOperatorSubscribeOn_$1_$1_withRxProducer_(RxInternalOperatorsOperatorSubscribeOn_$1_$1 *outer$, id<RxProducer> capture$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1)

@interface RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_$1 : NSObject < RxFunctionsAction0 > {
 @public
  RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1 *this$0_;
  jlong val$n_;
}

- (void)call;

- (instancetype)initWithRxInternalOperatorsOperatorSubscribeOn_$1_$1_$1:(RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1 *)outer$
                                                               withLong:(jlong)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_$1, this$0_, RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1 *)

__attribute__((unused)) static void RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_$1_initWithRxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_withLong_(RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_$1 *self, RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1 *outer$, jlong capture$0);

__attribute__((unused)) static RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_$1 *new_RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_$1_initWithRxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_withLong_(RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1 *outer$, jlong capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_$1 *create_RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_$1_initWithRxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_withLong_(RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1 *outer$, jlong capture$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_$1)

@implementation RxInternalOperatorsOperatorSubscribeOn

- (instancetype)initWithRxObservable:(RxObservable *)source
                     withRxScheduler:(RxScheduler *)scheduler {
  RxInternalOperatorsOperatorSubscribeOn_initWithRxObservable_withRxScheduler_(self, source, scheduler);
  return self;
}

- (void)callWithId:(RxSubscriber *)subscriber {
  RxScheduler_Worker *inner = [((RxScheduler *) nil_chk(scheduler_)) createWorker];
  [((RxSubscriber *) nil_chk(subscriber)) addWithRxSubscription:inner];
  (void) [((RxScheduler_Worker *) nil_chk(inner)) scheduleWithRxFunctionsAction0:new_RxInternalOperatorsOperatorSubscribeOn_$1_initWithRxInternalOperatorsOperatorSubscribeOn_withRxSubscriber_withRxScheduler_Worker_(self, subscriber, inner)];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxObservable:withRxScheduler:", NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { "callWithId:", "V", 0x1, 2, 3, -1, 4, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "scheduler_", "LRxScheduler;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "source_", "LRxObservable;", .constantValue.asLong = 0, 0x10, -1, -1, 5, -1 },
  };
  static const void *ptrTable[] = { "LRxObservable;LRxScheduler;", "(Lrx/Observable<TT;>;Lrx/Scheduler;)V", "call", "LRxSubscriber;", "(Lrx/Subscriber<-TT;>;)V", "Lrx/Observable<TT;>;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$OnSubscribe<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorSubscribeOn = { "OperatorSubscribeOn", "rx.internal.operators", ptrTable, methods, fields, 7, 0x11, 2, 2, -1, -1, -1, 6, -1 };
  return &_RxInternalOperatorsOperatorSubscribeOn;
}

@end

void RxInternalOperatorsOperatorSubscribeOn_initWithRxObservable_withRxScheduler_(RxInternalOperatorsOperatorSubscribeOn *self, RxObservable *source, RxScheduler *scheduler) {
  NSObject_init(self);
  self->scheduler_ = scheduler;
  self->source_ = source;
}

RxInternalOperatorsOperatorSubscribeOn *new_RxInternalOperatorsOperatorSubscribeOn_initWithRxObservable_withRxScheduler_(RxObservable *source, RxScheduler *scheduler) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorSubscribeOn, initWithRxObservable_withRxScheduler_, source, scheduler)
}

RxInternalOperatorsOperatorSubscribeOn *create_RxInternalOperatorsOperatorSubscribeOn_initWithRxObservable_withRxScheduler_(RxObservable *source, RxScheduler *scheduler) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorSubscribeOn, initWithRxObservable_withRxScheduler_, source, scheduler)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorSubscribeOn)

@implementation RxInternalOperatorsOperatorSubscribeOn_$1

- (void)call {
  JavaLangThread *t = JavaLangThread_currentThread();
  RxSubscriber *s = new_RxInternalOperatorsOperatorSubscribeOn_$1_$1_initWithRxInternalOperatorsOperatorSubscribeOn_$1_withJavaLangThread_withRxSubscriber_(self, t, val$subscriber_);
  (void) [((RxObservable *) nil_chk(this$0_->source_)) unsafeSubscribeWithRxSubscriber:s];
}

- (instancetype)initWithRxInternalOperatorsOperatorSubscribeOn:(RxInternalOperatorsOperatorSubscribeOn *)outer$
                                              withRxSubscriber:(RxSubscriber *)capture$0
                                        withRxScheduler_Worker:(RxScheduler_Worker *)capture$1 {
  RxInternalOperatorsOperatorSubscribeOn_$1_initWithRxInternalOperatorsOperatorSubscribeOn_withRxSubscriber_withRxScheduler_Worker_(self, outer$, capture$0, capture$1);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "call", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "initWithRxInternalOperatorsOperatorSubscribeOn:withRxSubscriber:withRxScheduler_Worker:", NULL, 0x0, -1, 0, -1, 1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LRxInternalOperatorsOperatorSubscribeOn;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$subscriber_", "LRxSubscriber;", .constantValue.asLong = 0, 0x1012, -1, -1, 2, -1 },
    { "val$inner_", "LRxScheduler_Worker;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LRxInternalOperatorsOperatorSubscribeOn;LRxSubscriber;LRxScheduler_Worker;", "(Lrx/internal/operators/OperatorSubscribeOn;Lrx/Subscriber<-TT;>;Lrx/Scheduler$Worker;)V", "Lrx/Subscriber<-TT;>;", "LRxInternalOperatorsOperatorSubscribeOn;", "callWithId:" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorSubscribeOn_$1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 2, 3, 3, -1, 4, -1, -1 };
  return &_RxInternalOperatorsOperatorSubscribeOn_$1;
}

@end

void RxInternalOperatorsOperatorSubscribeOn_$1_initWithRxInternalOperatorsOperatorSubscribeOn_withRxSubscriber_withRxScheduler_Worker_(RxInternalOperatorsOperatorSubscribeOn_$1 *self, RxInternalOperatorsOperatorSubscribeOn *outer$, RxSubscriber *capture$0, RxScheduler_Worker *capture$1) {
  self->this$0_ = outer$;
  self->val$subscriber_ = capture$0;
  self->val$inner_ = capture$1;
  NSObject_init(self);
}

RxInternalOperatorsOperatorSubscribeOn_$1 *new_RxInternalOperatorsOperatorSubscribeOn_$1_initWithRxInternalOperatorsOperatorSubscribeOn_withRxSubscriber_withRxScheduler_Worker_(RxInternalOperatorsOperatorSubscribeOn *outer$, RxSubscriber *capture$0, RxScheduler_Worker *capture$1) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorSubscribeOn_$1, initWithRxInternalOperatorsOperatorSubscribeOn_withRxSubscriber_withRxScheduler_Worker_, outer$, capture$0, capture$1)
}

RxInternalOperatorsOperatorSubscribeOn_$1 *create_RxInternalOperatorsOperatorSubscribeOn_$1_initWithRxInternalOperatorsOperatorSubscribeOn_withRxSubscriber_withRxScheduler_Worker_(RxInternalOperatorsOperatorSubscribeOn *outer$, RxSubscriber *capture$0, RxScheduler_Worker *capture$1) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorSubscribeOn_$1, initWithRxInternalOperatorsOperatorSubscribeOn_withRxSubscriber_withRxScheduler_Worker_, outer$, capture$0, capture$1)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorSubscribeOn_$1)

@implementation RxInternalOperatorsOperatorSubscribeOn_$1_$1

- (void)onNextWithId:(id)t {
  [((RxSubscriber *) nil_chk(this$0_->val$subscriber_)) onNextWithId:t];
}

- (void)onErrorWithNSException:(NSException *)e {
  @try {
    [((RxSubscriber *) nil_chk(this$0_->val$subscriber_)) onErrorWithNSException:e];
  }
  @finally {
    [((RxScheduler_Worker *) nil_chk(this$0_->val$inner_)) unsubscribe];
  }
}

- (void)onCompleted {
  @try {
    [((RxSubscriber *) nil_chk(this$0_->val$subscriber_)) onCompleted];
  }
  @finally {
    [((RxScheduler_Worker *) nil_chk(this$0_->val$inner_)) unsubscribe];
  }
}

- (void)setProducerWithRxProducer:(id<RxProducer>)p {
  [((RxSubscriber *) nil_chk(this$0_->val$subscriber_)) setProducerWithRxProducer:new_RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_initWithRxInternalOperatorsOperatorSubscribeOn_$1_$1_withRxProducer_(self, p)];
}

- (instancetype)initWithRxInternalOperatorsOperatorSubscribeOn_$1:(RxInternalOperatorsOperatorSubscribeOn_$1 *)outer$
                                               withJavaLangThread:(JavaLangThread *)capture$0
                                                 withRxSubscriber:(RxSubscriber *)arg$0 {
  RxInternalOperatorsOperatorSubscribeOn_$1_$1_initWithRxInternalOperatorsOperatorSubscribeOn_$1_withJavaLangThread_withRxSubscriber_(self, outer$, capture$0, arg$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onNextWithId:", "V", 0x1, 0, 1, -1, 2, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "setProducerWithRxProducer:", "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { "initWithRxInternalOperatorsOperatorSubscribeOn_$1:withJavaLangThread:withRxSubscriber:", NULL, 0x0, -1, 7, -1, 8, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LRxInternalOperatorsOperatorSubscribeOn_$1;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$t_", "LJavaLangThread;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "onNext", "LNSObject;", "(TT;)V", "onError", "LNSException;", "setProducer", "LRxProducer;", "LRxInternalOperatorsOperatorSubscribeOn_$1;LJavaLangThread;LRxSubscriber;", "(Lrx/internal/operators/OperatorSubscribeOn$1;Ljava/lang/Thread;Lrx/Subscriber<*>;)V", "LRxInternalOperatorsOperatorSubscribeOn_$1;", "call", "Lrx/Subscriber<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorSubscribeOn_$1_$1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 5, 2, 9, -1, 10, 11, -1 };
  return &_RxInternalOperatorsOperatorSubscribeOn_$1_$1;
}

@end

void RxInternalOperatorsOperatorSubscribeOn_$1_$1_initWithRxInternalOperatorsOperatorSubscribeOn_$1_withJavaLangThread_withRxSubscriber_(RxInternalOperatorsOperatorSubscribeOn_$1_$1 *self, RxInternalOperatorsOperatorSubscribeOn_$1 *outer$, JavaLangThread *capture$0, RxSubscriber *arg$0) {
  self->this$0_ = outer$;
  self->val$t_ = capture$0;
  RxSubscriber_initWithRxSubscriber_(self, arg$0);
}

RxInternalOperatorsOperatorSubscribeOn_$1_$1 *new_RxInternalOperatorsOperatorSubscribeOn_$1_$1_initWithRxInternalOperatorsOperatorSubscribeOn_$1_withJavaLangThread_withRxSubscriber_(RxInternalOperatorsOperatorSubscribeOn_$1 *outer$, JavaLangThread *capture$0, RxSubscriber *arg$0) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorSubscribeOn_$1_$1, initWithRxInternalOperatorsOperatorSubscribeOn_$1_withJavaLangThread_withRxSubscriber_, outer$, capture$0, arg$0)
}

RxInternalOperatorsOperatorSubscribeOn_$1_$1 *create_RxInternalOperatorsOperatorSubscribeOn_$1_$1_initWithRxInternalOperatorsOperatorSubscribeOn_$1_withJavaLangThread_withRxSubscriber_(RxInternalOperatorsOperatorSubscribeOn_$1 *outer$, JavaLangThread *capture$0, RxSubscriber *arg$0) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorSubscribeOn_$1_$1, initWithRxInternalOperatorsOperatorSubscribeOn_$1_withJavaLangThread_withRxSubscriber_, outer$, capture$0, arg$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorSubscribeOn_$1_$1)

@implementation RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1

- (void)requestWithLong:(jlong)n {
  if (this$0_->val$t_ == JavaLangThread_currentThread()) {
    [((id<RxProducer>) nil_chk(val$p_)) requestWithLong:n];
  }
  else {
    (void) [((RxScheduler_Worker *) nil_chk(this$0_->this$0_->val$inner_)) scheduleWithRxFunctionsAction0:new_RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_$1_initWithRxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_withLong_(self, n)];
  }
}

- (instancetype)initWithRxInternalOperatorsOperatorSubscribeOn_$1_$1:(RxInternalOperatorsOperatorSubscribeOn_$1_$1 *)outer$
                                                      withRxProducer:(id<RxProducer>)capture$0 {
  RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_initWithRxInternalOperatorsOperatorSubscribeOn_$1_$1_withRxProducer_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "requestWithLong:", "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { "initWithRxInternalOperatorsOperatorSubscribeOn_$1_$1:withRxProducer:", NULL, 0x0, -1, 2, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LRxInternalOperatorsOperatorSubscribeOn_$1_$1;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$p_", "LRxProducer;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "request", "J", "LRxInternalOperatorsOperatorSubscribeOn_$1_$1;LRxProducer;", "LRxInternalOperatorsOperatorSubscribeOn_$1_$1;", "setProducerWithRxProducer:" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 2, 2, 3, -1, 4, -1, -1 };
  return &_RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1;
}

@end

void RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_initWithRxInternalOperatorsOperatorSubscribeOn_$1_$1_withRxProducer_(RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1 *self, RxInternalOperatorsOperatorSubscribeOn_$1_$1 *outer$, id<RxProducer> capture$0) {
  self->this$0_ = outer$;
  self->val$p_ = capture$0;
  NSObject_init(self);
}

RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1 *new_RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_initWithRxInternalOperatorsOperatorSubscribeOn_$1_$1_withRxProducer_(RxInternalOperatorsOperatorSubscribeOn_$1_$1 *outer$, id<RxProducer> capture$0) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1, initWithRxInternalOperatorsOperatorSubscribeOn_$1_$1_withRxProducer_, outer$, capture$0)
}

RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1 *create_RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_initWithRxInternalOperatorsOperatorSubscribeOn_$1_$1_withRxProducer_(RxInternalOperatorsOperatorSubscribeOn_$1_$1 *outer$, id<RxProducer> capture$0) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1, initWithRxInternalOperatorsOperatorSubscribeOn_$1_$1_withRxProducer_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1)

@implementation RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_$1

- (void)call {
  [((id<RxProducer>) nil_chk(this$0_->val$p_)) requestWithLong:val$n_];
}

- (instancetype)initWithRxInternalOperatorsOperatorSubscribeOn_$1_$1_$1:(RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1 *)outer$
                                                               withLong:(jlong)capture$0 {
  RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_$1_initWithRxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_withLong_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "call", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "initWithRxInternalOperatorsOperatorSubscribeOn_$1_$1_$1:withLong:", NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LRxInternalOperatorsOperatorSubscribeOn_$1_$1_$1;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$n_", "J", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LRxInternalOperatorsOperatorSubscribeOn_$1_$1_$1;J", "LRxInternalOperatorsOperatorSubscribeOn_$1_$1_$1;", "requestWithLong:" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_$1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 2, 2, 1, -1, 2, -1, -1 };
  return &_RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_$1;
}

@end

void RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_$1_initWithRxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_withLong_(RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_$1 *self, RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1 *outer$, jlong capture$0) {
  self->this$0_ = outer$;
  self->val$n_ = capture$0;
  NSObject_init(self);
}

RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_$1 *new_RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_$1_initWithRxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_withLong_(RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1 *outer$, jlong capture$0) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_$1, initWithRxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_withLong_, outer$, capture$0)
}

RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_$1 *create_RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_$1_initWithRxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_withLong_(RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1 *outer$, jlong capture$0) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_$1, initWithRxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_withLong_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorSubscribeOn_$1_$1_$1_$1)