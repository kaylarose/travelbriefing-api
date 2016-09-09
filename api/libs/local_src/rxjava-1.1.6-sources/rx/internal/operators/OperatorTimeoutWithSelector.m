//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorTimeoutWithSelector.java
//

#include "J2ObjC_source.h"
#include "java/lang/Long.h"
#include "rx/Observable.h"
#include "rx/Scheduler.h"
#include "rx/Subscriber.h"
#include "rx/Subscription.h"
#include "rx/exceptions/Exceptions.h"
#include "rx/functions/Func0.h"
#include "rx/functions/Func1.h"
#include "rx/internal/operators/OperatorTimeoutBase.h"
#include "rx/internal/operators/OperatorTimeoutWithSelector.h"
#include "rx/schedulers/Schedulers.h"
#include "rx/subscriptions/Subscriptions.h"

@interface RxInternalOperatorsOperatorTimeoutWithSelector_$1 : NSObject < RxInternalOperatorsOperatorTimeoutBase_FirstTimeoutStub > {
 @public
  id<RxFunctionsFunc0> val$firstTimeoutSelector_;
}

- (id<RxSubscription>)callWithId:(RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *)timeoutSubscriber
                          withId:(JavaLangLong *)seqId
                          withId:(RxScheduler_Worker *)inner;

- (instancetype)initWithRxFunctionsFunc0:(id<RxFunctionsFunc0>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorTimeoutWithSelector_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorTimeoutWithSelector_$1, val$firstTimeoutSelector_, id<RxFunctionsFunc0>)

__attribute__((unused)) static void RxInternalOperatorsOperatorTimeoutWithSelector_$1_initWithRxFunctionsFunc0_(RxInternalOperatorsOperatorTimeoutWithSelector_$1 *self, id<RxFunctionsFunc0> capture$0);

__attribute__((unused)) static RxInternalOperatorsOperatorTimeoutWithSelector_$1 *new_RxInternalOperatorsOperatorTimeoutWithSelector_$1_initWithRxFunctionsFunc0_(id<RxFunctionsFunc0> capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorTimeoutWithSelector_$1 *create_RxInternalOperatorsOperatorTimeoutWithSelector_$1_initWithRxFunctionsFunc0_(id<RxFunctionsFunc0> capture$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorTimeoutWithSelector_$1)

@interface RxInternalOperatorsOperatorTimeoutWithSelector_$1_$1 : RxSubscriber {
 @public
  RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *val$timeoutSubscriber_;
  JavaLangLong *val$seqId_;
}

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)t;

- (instancetype)initWithRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber:(RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *)capture$0
                                                                withJavaLangLong:(JavaLangLong *)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorTimeoutWithSelector_$1_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorTimeoutWithSelector_$1_$1, val$timeoutSubscriber_, RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorTimeoutWithSelector_$1_$1, val$seqId_, JavaLangLong *)

__attribute__((unused)) static void RxInternalOperatorsOperatorTimeoutWithSelector_$1_$1_initWithRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber_withJavaLangLong_(RxInternalOperatorsOperatorTimeoutWithSelector_$1_$1 *self, RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *capture$0, JavaLangLong *capture$1);

__attribute__((unused)) static RxInternalOperatorsOperatorTimeoutWithSelector_$1_$1 *new_RxInternalOperatorsOperatorTimeoutWithSelector_$1_$1_initWithRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber_withJavaLangLong_(RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *capture$0, JavaLangLong *capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorTimeoutWithSelector_$1_$1 *create_RxInternalOperatorsOperatorTimeoutWithSelector_$1_$1_initWithRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber_withJavaLangLong_(RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *capture$0, JavaLangLong *capture$1);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorTimeoutWithSelector_$1_$1)

@interface RxInternalOperatorsOperatorTimeoutWithSelector_$2 : NSObject < RxInternalOperatorsOperatorTimeoutBase_TimeoutStub > {
 @public
  id<RxFunctionsFunc1> val$timeoutSelector_;
}

- (id<RxSubscription>)callWithId:(RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *)timeoutSubscriber
                          withId:(JavaLangLong *)seqId
                          withId:(id)value
                          withId:(RxScheduler_Worker *)inner;

- (instancetype)initWithRxFunctionsFunc1:(id<RxFunctionsFunc1>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorTimeoutWithSelector_$2)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorTimeoutWithSelector_$2, val$timeoutSelector_, id<RxFunctionsFunc1>)

__attribute__((unused)) static void RxInternalOperatorsOperatorTimeoutWithSelector_$2_initWithRxFunctionsFunc1_(RxInternalOperatorsOperatorTimeoutWithSelector_$2 *self, id<RxFunctionsFunc1> capture$0);

__attribute__((unused)) static RxInternalOperatorsOperatorTimeoutWithSelector_$2 *new_RxInternalOperatorsOperatorTimeoutWithSelector_$2_initWithRxFunctionsFunc1_(id<RxFunctionsFunc1> capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorTimeoutWithSelector_$2 *create_RxInternalOperatorsOperatorTimeoutWithSelector_$2_initWithRxFunctionsFunc1_(id<RxFunctionsFunc1> capture$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorTimeoutWithSelector_$2)

@interface RxInternalOperatorsOperatorTimeoutWithSelector_$2_$1 : RxSubscriber {
 @public
  RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *val$timeoutSubscriber_;
  JavaLangLong *val$seqId_;
}

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)t;

- (instancetype)initWithRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber:(RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *)capture$0
                                                                withJavaLangLong:(JavaLangLong *)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorTimeoutWithSelector_$2_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorTimeoutWithSelector_$2_$1, val$timeoutSubscriber_, RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorTimeoutWithSelector_$2_$1, val$seqId_, JavaLangLong *)

__attribute__((unused)) static void RxInternalOperatorsOperatorTimeoutWithSelector_$2_$1_initWithRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber_withJavaLangLong_(RxInternalOperatorsOperatorTimeoutWithSelector_$2_$1 *self, RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *capture$0, JavaLangLong *capture$1);

__attribute__((unused)) static RxInternalOperatorsOperatorTimeoutWithSelector_$2_$1 *new_RxInternalOperatorsOperatorTimeoutWithSelector_$2_$1_initWithRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber_withJavaLangLong_(RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *capture$0, JavaLangLong *capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorTimeoutWithSelector_$2_$1 *create_RxInternalOperatorsOperatorTimeoutWithSelector_$2_$1_initWithRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber_withJavaLangLong_(RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *capture$0, JavaLangLong *capture$1);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorTimeoutWithSelector_$2_$1)

@implementation RxInternalOperatorsOperatorTimeoutWithSelector

- (instancetype)initWithRxFunctionsFunc0:(id<RxFunctionsFunc0>)firstTimeoutSelector
                    withRxFunctionsFunc1:(id<RxFunctionsFunc1>)timeoutSelector
                        withRxObservable:(RxObservable *)other {
  RxInternalOperatorsOperatorTimeoutWithSelector_initWithRxFunctionsFunc0_withRxFunctionsFunc1_withRxObservable_(self, firstTimeoutSelector, timeoutSelector, other);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxFunctionsFunc0:withRxFunctionsFunc1:withRxObservable:", NULL, 0x1, -1, 0, -1, 1, -1, -1 },
  };
  static const void *ptrTable[] = { "LRxFunctionsFunc0;LRxFunctionsFunc1;LRxObservable;", "(Lrx/functions/Func0<+Lrx/Observable<TU;>;>;Lrx/functions/Func1<-TT;+Lrx/Observable<TV;>;>;Lrx/Observable<+TT;>;)V", "<T:Ljava/lang/Object;U:Ljava/lang/Object;V:Ljava/lang/Object;>Lrx/internal/operators/OperatorTimeoutBase<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorTimeoutWithSelector = { "OperatorTimeoutWithSelector", "rx.internal.operators", ptrTable, methods, NULL, 7, 0x1, 1, 0, -1, -1, -1, 2, -1 };
  return &_RxInternalOperatorsOperatorTimeoutWithSelector;
}

@end

void RxInternalOperatorsOperatorTimeoutWithSelector_initWithRxFunctionsFunc0_withRxFunctionsFunc1_withRxObservable_(RxInternalOperatorsOperatorTimeoutWithSelector *self, id<RxFunctionsFunc0> firstTimeoutSelector, id<RxFunctionsFunc1> timeoutSelector, RxObservable *other) {
  RxInternalOperatorsOperatorTimeoutBase_initWithRxInternalOperatorsOperatorTimeoutBase_FirstTimeoutStub_withRxInternalOperatorsOperatorTimeoutBase_TimeoutStub_withRxObservable_withRxScheduler_(self, new_RxInternalOperatorsOperatorTimeoutWithSelector_$1_initWithRxFunctionsFunc0_(firstTimeoutSelector), new_RxInternalOperatorsOperatorTimeoutWithSelector_$2_initWithRxFunctionsFunc1_(timeoutSelector), other, RxSchedulersSchedulers_immediate());
}

RxInternalOperatorsOperatorTimeoutWithSelector *new_RxInternalOperatorsOperatorTimeoutWithSelector_initWithRxFunctionsFunc0_withRxFunctionsFunc1_withRxObservable_(id<RxFunctionsFunc0> firstTimeoutSelector, id<RxFunctionsFunc1> timeoutSelector, RxObservable *other) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorTimeoutWithSelector, initWithRxFunctionsFunc0_withRxFunctionsFunc1_withRxObservable_, firstTimeoutSelector, timeoutSelector, other)
}

RxInternalOperatorsOperatorTimeoutWithSelector *create_RxInternalOperatorsOperatorTimeoutWithSelector_initWithRxFunctionsFunc0_withRxFunctionsFunc1_withRxObservable_(id<RxFunctionsFunc0> firstTimeoutSelector, id<RxFunctionsFunc1> timeoutSelector, RxObservable *other) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorTimeoutWithSelector, initWithRxFunctionsFunc0_withRxFunctionsFunc1_withRxObservable_, firstTimeoutSelector, timeoutSelector, other)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorTimeoutWithSelector)

@implementation RxInternalOperatorsOperatorTimeoutWithSelector_$1

- (id<RxSubscription>)callWithId:(RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *)timeoutSubscriber
                          withId:(JavaLangLong *)seqId
                          withId:(RxScheduler_Worker *)inner {
  if (val$firstTimeoutSelector_ != nil) {
    RxObservable *o = nil;
    @try {
      o = [val$firstTimeoutSelector_ call];
    }
    @catch (NSException *t) {
      RxExceptionsExceptions_throwOrReportWithNSException_withRxObserver_(t, timeoutSubscriber);
      return RxSubscriptionsSubscriptions_unsubscribed();
    }
    return [((RxObservable *) nil_chk(o)) unsafeSubscribeWithRxSubscriber:new_RxInternalOperatorsOperatorTimeoutWithSelector_$1_$1_initWithRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber_withJavaLangLong_(timeoutSubscriber, seqId)];
  }
  else {
    return RxSubscriptionsSubscriptions_unsubscribed();
  }
}

- (instancetype)initWithRxFunctionsFunc0:(id<RxFunctionsFunc0>)capture$0 {
  RxInternalOperatorsOperatorTimeoutWithSelector_$1_initWithRxFunctionsFunc0_(self, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "callWithId:withId:withId:", "LRxSubscription;", 0x1, 0, 1, -1, 2, -1, -1 },
    { "initWithRxFunctionsFunc0:", NULL, 0x0, -1, 3, -1, 4, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$firstTimeoutSelector_", "LRxFunctionsFunc0;", .constantValue.asLong = 0, 0x1012, -1, -1, 5, -1 },
  };
  static const void *ptrTable[] = { "call", "LRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber;LJavaLangLong;LRxScheduler_Worker;", "(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;Ljava/lang/Long;Lrx/Scheduler$Worker;)Lrx/Subscription;", "LRxFunctionsFunc0;", "(Lrx/functions/Func0<+Lrx/Observable<TU;>;>;)V", "Lrx/functions/Func0<+Lrx/Observable<TU;>;>;", "LRxInternalOperatorsOperatorTimeoutWithSelector;", "initWithRxFunctionsFunc0:withRxFunctionsFunc1:withRxObservable:", "Ljava/lang/Object;Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorTimeoutWithSelector_$1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 2, 1, 6, -1, 7, 8, -1 };
  return &_RxInternalOperatorsOperatorTimeoutWithSelector_$1;
}

@end

void RxInternalOperatorsOperatorTimeoutWithSelector_$1_initWithRxFunctionsFunc0_(RxInternalOperatorsOperatorTimeoutWithSelector_$1 *self, id<RxFunctionsFunc0> capture$0) {
  self->val$firstTimeoutSelector_ = capture$0;
  NSObject_init(self);
}

RxInternalOperatorsOperatorTimeoutWithSelector_$1 *new_RxInternalOperatorsOperatorTimeoutWithSelector_$1_initWithRxFunctionsFunc0_(id<RxFunctionsFunc0> capture$0) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorTimeoutWithSelector_$1, initWithRxFunctionsFunc0_, capture$0)
}

RxInternalOperatorsOperatorTimeoutWithSelector_$1 *create_RxInternalOperatorsOperatorTimeoutWithSelector_$1_initWithRxFunctionsFunc0_(id<RxFunctionsFunc0> capture$0) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorTimeoutWithSelector_$1, initWithRxFunctionsFunc0_, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorTimeoutWithSelector_$1)

@implementation RxInternalOperatorsOperatorTimeoutWithSelector_$1_$1

- (void)onCompleted {
  [((RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *) nil_chk(val$timeoutSubscriber_)) onTimeoutWithLong:[((JavaLangLong *) nil_chk(val$seqId_)) longLongValue]];
}

- (void)onErrorWithNSException:(NSException *)e {
  [((RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *) nil_chk(val$timeoutSubscriber_)) onErrorWithNSException:e];
}

- (void)onNextWithId:(id)t {
  [((RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *) nil_chk(val$timeoutSubscriber_)) onTimeoutWithLong:[((JavaLangLong *) nil_chk(val$seqId_)) longLongValue]];
}

- (instancetype)initWithRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber:(RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *)capture$0
                                                                withJavaLangLong:(JavaLangLong *)capture$1 {
  RxInternalOperatorsOperatorTimeoutWithSelector_$1_$1_initWithRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber_withJavaLangLong_(self, capture$0, capture$1);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { "onNextWithId:", "V", 0x1, 2, 3, -1, 4, -1, -1 },
    { "initWithRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber:withJavaLangLong:", NULL, 0x0, -1, 5, -1, 6, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$timeoutSubscriber_", "LRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber;", .constantValue.asLong = 0, 0x1012, -1, -1, 7, -1 },
    { "val$seqId_", "LJavaLangLong;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "onError", "LNSException;", "onNext", "LNSObject;", "(TU;)V", "LRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber;LJavaLangLong;", "(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;Ljava/lang/Long;)V", "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;", "LRxInternalOperatorsOperatorTimeoutWithSelector_$1;", "callWithId:withId:withId:", "Lrx/Subscriber<TU;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorTimeoutWithSelector_$1_$1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 4, 2, 8, -1, 9, 10, -1 };
  return &_RxInternalOperatorsOperatorTimeoutWithSelector_$1_$1;
}

@end

void RxInternalOperatorsOperatorTimeoutWithSelector_$1_$1_initWithRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber_withJavaLangLong_(RxInternalOperatorsOperatorTimeoutWithSelector_$1_$1 *self, RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *capture$0, JavaLangLong *capture$1) {
  self->val$timeoutSubscriber_ = capture$0;
  self->val$seqId_ = capture$1;
  RxSubscriber_init(self);
}

RxInternalOperatorsOperatorTimeoutWithSelector_$1_$1 *new_RxInternalOperatorsOperatorTimeoutWithSelector_$1_$1_initWithRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber_withJavaLangLong_(RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *capture$0, JavaLangLong *capture$1) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorTimeoutWithSelector_$1_$1, initWithRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber_withJavaLangLong_, capture$0, capture$1)
}

RxInternalOperatorsOperatorTimeoutWithSelector_$1_$1 *create_RxInternalOperatorsOperatorTimeoutWithSelector_$1_$1_initWithRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber_withJavaLangLong_(RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *capture$0, JavaLangLong *capture$1) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorTimeoutWithSelector_$1_$1, initWithRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber_withJavaLangLong_, capture$0, capture$1)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorTimeoutWithSelector_$1_$1)

@implementation RxInternalOperatorsOperatorTimeoutWithSelector_$2

- (id<RxSubscription>)callWithId:(RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *)timeoutSubscriber
                          withId:(JavaLangLong *)seqId
                          withId:(id)value
                          withId:(RxScheduler_Worker *)inner {
  RxObservable *o = nil;
  @try {
    o = [((id<RxFunctionsFunc1>) nil_chk(val$timeoutSelector_)) callWithId:value];
  }
  @catch (NSException *t) {
    RxExceptionsExceptions_throwOrReportWithNSException_withRxObserver_(t, timeoutSubscriber);
    return RxSubscriptionsSubscriptions_unsubscribed();
  }
  return [((RxObservable *) nil_chk(o)) unsafeSubscribeWithRxSubscriber:new_RxInternalOperatorsOperatorTimeoutWithSelector_$2_$1_initWithRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber_withJavaLangLong_(timeoutSubscriber, seqId)];
}

- (instancetype)initWithRxFunctionsFunc1:(id<RxFunctionsFunc1>)capture$0 {
  RxInternalOperatorsOperatorTimeoutWithSelector_$2_initWithRxFunctionsFunc1_(self, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "callWithId:withId:withId:withId:", "LRxSubscription;", 0x1, 0, 1, -1, 2, -1, -1 },
    { "initWithRxFunctionsFunc1:", NULL, 0x0, -1, 3, -1, 4, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$timeoutSelector_", "LRxFunctionsFunc1;", .constantValue.asLong = 0, 0x1012, -1, -1, 5, -1 },
  };
  static const void *ptrTable[] = { "call", "LRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber;LJavaLangLong;LNSObject;LRxScheduler_Worker;", "(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;Ljava/lang/Long;TT;Lrx/Scheduler$Worker;)Lrx/Subscription;", "LRxFunctionsFunc1;", "(Lrx/functions/Func1<-TT;+Lrx/Observable<TV;>;>;)V", "Lrx/functions/Func1<-TT;+Lrx/Observable<TV;>;>;", "LRxInternalOperatorsOperatorTimeoutWithSelector;", "initWithRxFunctionsFunc0:withRxFunctionsFunc1:withRxObservable:", "Ljava/lang/Object;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorTimeoutWithSelector_$2 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 2, 1, 6, -1, 7, 8, -1 };
  return &_RxInternalOperatorsOperatorTimeoutWithSelector_$2;
}

@end

void RxInternalOperatorsOperatorTimeoutWithSelector_$2_initWithRxFunctionsFunc1_(RxInternalOperatorsOperatorTimeoutWithSelector_$2 *self, id<RxFunctionsFunc1> capture$0) {
  self->val$timeoutSelector_ = capture$0;
  NSObject_init(self);
}

RxInternalOperatorsOperatorTimeoutWithSelector_$2 *new_RxInternalOperatorsOperatorTimeoutWithSelector_$2_initWithRxFunctionsFunc1_(id<RxFunctionsFunc1> capture$0) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorTimeoutWithSelector_$2, initWithRxFunctionsFunc1_, capture$0)
}

RxInternalOperatorsOperatorTimeoutWithSelector_$2 *create_RxInternalOperatorsOperatorTimeoutWithSelector_$2_initWithRxFunctionsFunc1_(id<RxFunctionsFunc1> capture$0) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorTimeoutWithSelector_$2, initWithRxFunctionsFunc1_, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorTimeoutWithSelector_$2)

@implementation RxInternalOperatorsOperatorTimeoutWithSelector_$2_$1

- (void)onCompleted {
  [((RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *) nil_chk(val$timeoutSubscriber_)) onTimeoutWithLong:[((JavaLangLong *) nil_chk(val$seqId_)) longLongValue]];
}

- (void)onErrorWithNSException:(NSException *)e {
  [((RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *) nil_chk(val$timeoutSubscriber_)) onErrorWithNSException:e];
}

- (void)onNextWithId:(id)t {
  [((RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *) nil_chk(val$timeoutSubscriber_)) onTimeoutWithLong:[((JavaLangLong *) nil_chk(val$seqId_)) longLongValue]];
}

- (instancetype)initWithRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber:(RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *)capture$0
                                                                withJavaLangLong:(JavaLangLong *)capture$1 {
  RxInternalOperatorsOperatorTimeoutWithSelector_$2_$1_initWithRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber_withJavaLangLong_(self, capture$0, capture$1);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { "onNextWithId:", "V", 0x1, 2, 3, -1, 4, -1, -1 },
    { "initWithRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber:withJavaLangLong:", NULL, 0x0, -1, 5, -1, 6, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$timeoutSubscriber_", "LRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber;", .constantValue.asLong = 0, 0x1012, -1, -1, 7, -1 },
    { "val$seqId_", "LJavaLangLong;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "onError", "LNSException;", "onNext", "LNSObject;", "(TV;)V", "LRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber;LJavaLangLong;", "(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;Ljava/lang/Long;)V", "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;", "LRxInternalOperatorsOperatorTimeoutWithSelector_$2;", "callWithId:withId:withId:withId:", "Lrx/Subscriber<TV;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorTimeoutWithSelector_$2_$1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 4, 2, 8, -1, 9, 10, -1 };
  return &_RxInternalOperatorsOperatorTimeoutWithSelector_$2_$1;
}

@end

void RxInternalOperatorsOperatorTimeoutWithSelector_$2_$1_initWithRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber_withJavaLangLong_(RxInternalOperatorsOperatorTimeoutWithSelector_$2_$1 *self, RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *capture$0, JavaLangLong *capture$1) {
  self->val$timeoutSubscriber_ = capture$0;
  self->val$seqId_ = capture$1;
  RxSubscriber_init(self);
}

RxInternalOperatorsOperatorTimeoutWithSelector_$2_$1 *new_RxInternalOperatorsOperatorTimeoutWithSelector_$2_$1_initWithRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber_withJavaLangLong_(RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *capture$0, JavaLangLong *capture$1) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorTimeoutWithSelector_$2_$1, initWithRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber_withJavaLangLong_, capture$0, capture$1)
}

RxInternalOperatorsOperatorTimeoutWithSelector_$2_$1 *create_RxInternalOperatorsOperatorTimeoutWithSelector_$2_$1_initWithRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber_withJavaLangLong_(RxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber *capture$0, JavaLangLong *capture$1) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorTimeoutWithSelector_$2_$1, initWithRxInternalOperatorsOperatorTimeoutBase_TimeoutSubscriber_withJavaLangLong_, capture$0, capture$1)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorTimeoutWithSelector_$2_$1)