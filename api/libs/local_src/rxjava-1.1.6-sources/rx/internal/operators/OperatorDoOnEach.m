//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorDoOnEach.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/util/Arrays.h"
#include "java/util/List.h"
#include "rx/Observer.h"
#include "rx/Subscriber.h"
#include "rx/exceptions/CompositeException.h"
#include "rx/exceptions/Exceptions.h"
#include "rx/internal/operators/OperatorDoOnEach.h"

@interface RxInternalOperatorsOperatorDoOnEach_$1 : RxSubscriber {
 @public
  RxInternalOperatorsOperatorDoOnEach *this$0_;
  jboolean done_;
  RxSubscriber *val$observer_;
}

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)value;

- (instancetype)initWithRxInternalOperatorsOperatorDoOnEach:(RxInternalOperatorsOperatorDoOnEach *)outer$
                                           withRxSubscriber:(RxSubscriber *)capture$0
                                           withRxSubscriber:(RxSubscriber *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorDoOnEach_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorDoOnEach_$1, this$0_, RxInternalOperatorsOperatorDoOnEach *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorDoOnEach_$1, val$observer_, RxSubscriber *)

__attribute__((unused)) static void RxInternalOperatorsOperatorDoOnEach_$1_initWithRxInternalOperatorsOperatorDoOnEach_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorDoOnEach_$1 *self, RxInternalOperatorsOperatorDoOnEach *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0);

__attribute__((unused)) static RxInternalOperatorsOperatorDoOnEach_$1 *new_RxInternalOperatorsOperatorDoOnEach_$1_initWithRxInternalOperatorsOperatorDoOnEach_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorDoOnEach *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorDoOnEach_$1 *create_RxInternalOperatorsOperatorDoOnEach_$1_initWithRxInternalOperatorsOperatorDoOnEach_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorDoOnEach *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorDoOnEach_$1)

@implementation RxInternalOperatorsOperatorDoOnEach

- (instancetype)initWithRxObserver:(id<RxObserver>)doOnEachObserver {
  RxInternalOperatorsOperatorDoOnEach_initWithRxObserver_(self, doOnEachObserver);
  return self;
}

- (RxSubscriber *)callWithId:(RxSubscriber *)observer {
  return new_RxInternalOperatorsOperatorDoOnEach_$1_initWithRxInternalOperatorsOperatorDoOnEach_withRxSubscriber_withRxSubscriber_(self, observer, observer);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxObserver:", NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { "callWithId:", "LRxSubscriber;", 0x1, 2, 3, -1, 4, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "doOnEachObserver_", "LRxObserver;", .constantValue.asLong = 0, 0x10, -1, -1, 5, -1 },
  };
  static const void *ptrTable[] = { "LRxObserver;", "(Lrx/Observer<-TT;>;)V", "call", "LRxSubscriber;", "(Lrx/Subscriber<-TT;>;)Lrx/Subscriber<-TT;>;", "Lrx/Observer<-TT;>;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$Operator<TT;TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorDoOnEach = { "OperatorDoOnEach", "rx.internal.operators", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, 6, -1 };
  return &_RxInternalOperatorsOperatorDoOnEach;
}

@end

void RxInternalOperatorsOperatorDoOnEach_initWithRxObserver_(RxInternalOperatorsOperatorDoOnEach *self, id<RxObserver> doOnEachObserver) {
  NSObject_init(self);
  self->doOnEachObserver_ = doOnEachObserver;
}

RxInternalOperatorsOperatorDoOnEach *new_RxInternalOperatorsOperatorDoOnEach_initWithRxObserver_(id<RxObserver> doOnEachObserver) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorDoOnEach, initWithRxObserver_, doOnEachObserver)
}

RxInternalOperatorsOperatorDoOnEach *create_RxInternalOperatorsOperatorDoOnEach_initWithRxObserver_(id<RxObserver> doOnEachObserver) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorDoOnEach, initWithRxObserver_, doOnEachObserver)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorDoOnEach)

@implementation RxInternalOperatorsOperatorDoOnEach_$1

- (void)onCompleted {
  if (done_) {
    return;
  }
  @try {
    [((id<RxObserver>) nil_chk(this$0_->doOnEachObserver_)) onCompleted];
  }
  @catch (NSException *e) {
    RxExceptionsExceptions_throwOrReportWithNSException_withRxObserver_(e, self);
    return;
  }
  done_ = true;
  [((RxSubscriber *) nil_chk(val$observer_)) onCompleted];
}

- (void)onErrorWithNSException:(NSException *)e {
  RxExceptionsExceptions_throwIfFatalWithNSException_(e);
  if (done_) {
    return;
  }
  done_ = true;
  @try {
    [((id<RxObserver>) nil_chk(this$0_->doOnEachObserver_)) onErrorWithNSException:e];
  }
  @catch (NSException *e2) {
    RxExceptionsExceptions_throwIfFatalWithNSException_(e2);
    [((RxSubscriber *) nil_chk(val$observer_)) onErrorWithNSException:new_RxExceptionsCompositeException_initWithJavaUtilCollection_(JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray newArrayWithObjects:(id[]){ e, e2 } count:2 type:NSException_class_()]))];
    return;
  }
  [((RxSubscriber *) nil_chk(val$observer_)) onErrorWithNSException:e];
}

- (void)onNextWithId:(id)value {
  if (done_) {
    return;
  }
  @try {
    [((id<RxObserver>) nil_chk(this$0_->doOnEachObserver_)) onNextWithId:value];
  }
  @catch (NSException *e) {
    RxExceptionsExceptions_throwOrReportWithNSException_withRxObserver_withId_(e, self, value);
    return;
  }
  [((RxSubscriber *) nil_chk(val$observer_)) onNextWithId:value];
}

- (instancetype)initWithRxInternalOperatorsOperatorDoOnEach:(RxInternalOperatorsOperatorDoOnEach *)outer$
                                           withRxSubscriber:(RxSubscriber *)capture$0
                                           withRxSubscriber:(RxSubscriber *)arg$0 {
  RxInternalOperatorsOperatorDoOnEach_$1_initWithRxInternalOperatorsOperatorDoOnEach_withRxSubscriber_withRxSubscriber_(self, outer$, capture$0, arg$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { "onNextWithId:", "V", 0x1, 2, 3, -1, 4, -1, -1 },
    { "initWithRxInternalOperatorsOperatorDoOnEach:withRxSubscriber:withRxSubscriber:", NULL, 0x0, -1, 5, -1, 6, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LRxInternalOperatorsOperatorDoOnEach;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "done_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "val$observer_", "LRxSubscriber;", .constantValue.asLong = 0, 0x1012, -1, -1, 7, -1 },
  };
  static const void *ptrTable[] = { "onError", "LNSException;", "onNext", "LNSObject;", "(TT;)V", "LRxInternalOperatorsOperatorDoOnEach;LRxSubscriber;LRxSubscriber;", "(Lrx/internal/operators/OperatorDoOnEach;Lrx/Subscriber<-TT;>;Lrx/Subscriber<*>;)V", "Lrx/Subscriber<-TT;>;", "LRxInternalOperatorsOperatorDoOnEach;", "callWithId:", "Lrx/Subscriber<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorDoOnEach_$1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 4, 3, 8, -1, 9, 10, -1 };
  return &_RxInternalOperatorsOperatorDoOnEach_$1;
}

@end

void RxInternalOperatorsOperatorDoOnEach_$1_initWithRxInternalOperatorsOperatorDoOnEach_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorDoOnEach_$1 *self, RxInternalOperatorsOperatorDoOnEach *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) {
  self->this$0_ = outer$;
  self->val$observer_ = capture$0;
  RxSubscriber_initWithRxSubscriber_(self, arg$0);
  self->done_ = false;
}

RxInternalOperatorsOperatorDoOnEach_$1 *new_RxInternalOperatorsOperatorDoOnEach_$1_initWithRxInternalOperatorsOperatorDoOnEach_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorDoOnEach *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorDoOnEach_$1, initWithRxInternalOperatorsOperatorDoOnEach_withRxSubscriber_withRxSubscriber_, outer$, capture$0, arg$0)
}

RxInternalOperatorsOperatorDoOnEach_$1 *create_RxInternalOperatorsOperatorDoOnEach_$1_initWithRxInternalOperatorsOperatorDoOnEach_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorDoOnEach *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorDoOnEach_$1, initWithRxInternalOperatorsOperatorDoOnEach_withRxSubscriber_withRxSubscriber_, outer$, capture$0, arg$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorDoOnEach_$1)
