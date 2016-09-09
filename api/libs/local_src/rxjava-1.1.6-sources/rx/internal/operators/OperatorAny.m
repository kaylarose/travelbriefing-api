//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorAny.java
//

#include "J2ObjC_source.h"
#include "java/lang/Boolean.h"
#include "rx/Subscriber.h"
#include "rx/exceptions/Exceptions.h"
#include "rx/functions/Func1.h"
#include "rx/internal/operators/OperatorAny.h"
#include "rx/internal/producers/SingleDelayedProducer.h"

@interface RxInternalOperatorsOperatorAny_$1 : RxSubscriber {
 @public
  RxInternalOperatorsOperatorAny *this$0_;
  jboolean hasElements_;
  jboolean done_;
  RxInternalProducersSingleDelayedProducer *val$producer_;
  RxSubscriber *val$child_;
}

- (void)onNextWithId:(id)t;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onCompleted;

- (instancetype)initWithRxInternalOperatorsOperatorAny:(RxInternalOperatorsOperatorAny *)outer$
          withRxInternalProducersSingleDelayedProducer:(RxInternalProducersSingleDelayedProducer *)capture$0
                                      withRxSubscriber:(RxSubscriber *)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorAny_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorAny_$1, this$0_, RxInternalOperatorsOperatorAny *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorAny_$1, val$producer_, RxInternalProducersSingleDelayedProducer *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorAny_$1, val$child_, RxSubscriber *)

__attribute__((unused)) static void RxInternalOperatorsOperatorAny_$1_initWithRxInternalOperatorsOperatorAny_withRxInternalProducersSingleDelayedProducer_withRxSubscriber_(RxInternalOperatorsOperatorAny_$1 *self, RxInternalOperatorsOperatorAny *outer$, RxInternalProducersSingleDelayedProducer *capture$0, RxSubscriber *capture$1);

__attribute__((unused)) static RxInternalOperatorsOperatorAny_$1 *new_RxInternalOperatorsOperatorAny_$1_initWithRxInternalOperatorsOperatorAny_withRxInternalProducersSingleDelayedProducer_withRxSubscriber_(RxInternalOperatorsOperatorAny *outer$, RxInternalProducersSingleDelayedProducer *capture$0, RxSubscriber *capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorAny_$1 *create_RxInternalOperatorsOperatorAny_$1_initWithRxInternalOperatorsOperatorAny_withRxInternalProducersSingleDelayedProducer_withRxSubscriber_(RxInternalOperatorsOperatorAny *outer$, RxInternalProducersSingleDelayedProducer *capture$0, RxSubscriber *capture$1);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorAny_$1)

@implementation RxInternalOperatorsOperatorAny

- (instancetype)initWithRxFunctionsFunc1:(id<RxFunctionsFunc1>)predicate
                             withBoolean:(jboolean)returnOnEmpty {
  RxInternalOperatorsOperatorAny_initWithRxFunctionsFunc1_withBoolean_(self, predicate, returnOnEmpty);
  return self;
}

- (RxSubscriber *)callWithId:(RxSubscriber *)child {
  RxInternalProducersSingleDelayedProducer *producer = new_RxInternalProducersSingleDelayedProducer_initWithRxSubscriber_(child);
  RxSubscriber *s = new_RxInternalOperatorsOperatorAny_$1_initWithRxInternalOperatorsOperatorAny_withRxInternalProducersSingleDelayedProducer_withRxSubscriber_(self, producer, child);
  [((RxSubscriber *) nil_chk(child)) addWithRxSubscription:s];
  [child setProducerWithRxProducer:producer];
  return s;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxFunctionsFunc1:withBoolean:", NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { "callWithId:", "LRxSubscriber;", 0x1, 2, 3, -1, 4, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "predicate_", "LRxFunctionsFunc1;", .constantValue.asLong = 0, 0x10, -1, -1, 5, -1 },
    { "returnOnEmpty_", "Z", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LRxFunctionsFunc1;Z", "(Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;Z)V", "call", "LRxSubscriber;", "(Lrx/Subscriber<-Ljava/lang/Boolean;>;)Lrx/Subscriber<-TT;>;", "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$Operator<Ljava/lang/Boolean;TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorAny = { "OperatorAny", "rx.internal.operators", ptrTable, methods, fields, 7, 0x11, 2, 2, -1, -1, -1, 6, -1 };
  return &_RxInternalOperatorsOperatorAny;
}

@end

void RxInternalOperatorsOperatorAny_initWithRxFunctionsFunc1_withBoolean_(RxInternalOperatorsOperatorAny *self, id<RxFunctionsFunc1> predicate, jboolean returnOnEmpty) {
  NSObject_init(self);
  self->predicate_ = predicate;
  self->returnOnEmpty_ = returnOnEmpty;
}

RxInternalOperatorsOperatorAny *new_RxInternalOperatorsOperatorAny_initWithRxFunctionsFunc1_withBoolean_(id<RxFunctionsFunc1> predicate, jboolean returnOnEmpty) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorAny, initWithRxFunctionsFunc1_withBoolean_, predicate, returnOnEmpty)
}

RxInternalOperatorsOperatorAny *create_RxInternalOperatorsOperatorAny_initWithRxFunctionsFunc1_withBoolean_(id<RxFunctionsFunc1> predicate, jboolean returnOnEmpty) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorAny, initWithRxFunctionsFunc1_withBoolean_, predicate, returnOnEmpty)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorAny)

@implementation RxInternalOperatorsOperatorAny_$1

- (void)onNextWithId:(id)t {
  hasElements_ = true;
  jboolean result;
  @try {
    result = [((JavaLangBoolean *) nil_chk([((id<RxFunctionsFunc1>) nil_chk(this$0_->predicate_)) callWithId:t])) booleanValue];
  }
  @catch (NSException *e) {
    RxExceptionsExceptions_throwOrReportWithNSException_withRxObserver_withId_(e, self, t);
    return;
  }
  if (result && !done_) {
    done_ = true;
    [((RxInternalProducersSingleDelayedProducer *) nil_chk(val$producer_)) setValueWithId:JavaLangBoolean_valueOfWithBoolean_(!this$0_->returnOnEmpty_)];
    [self unsubscribe];
  }
}

- (void)onErrorWithNSException:(NSException *)e {
  [((RxSubscriber *) nil_chk(val$child_)) onErrorWithNSException:e];
}

- (void)onCompleted {
  if (!done_) {
    done_ = true;
    if (hasElements_) {
      [((RxInternalProducersSingleDelayedProducer *) nil_chk(val$producer_)) setValueWithId:JavaLangBoolean_valueOfWithBoolean_(false)];
    }
    else {
      [((RxInternalProducersSingleDelayedProducer *) nil_chk(val$producer_)) setValueWithId:JavaLangBoolean_valueOfWithBoolean_(this$0_->returnOnEmpty_)];
    }
  }
}

- (instancetype)initWithRxInternalOperatorsOperatorAny:(RxInternalOperatorsOperatorAny *)outer$
          withRxInternalProducersSingleDelayedProducer:(RxInternalProducersSingleDelayedProducer *)capture$0
                                      withRxSubscriber:(RxSubscriber *)capture$1 {
  RxInternalOperatorsOperatorAny_$1_initWithRxInternalOperatorsOperatorAny_withRxInternalProducersSingleDelayedProducer_withRxSubscriber_(self, outer$, capture$0, capture$1);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onNextWithId:", "V", 0x1, 0, 1, -1, 2, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "initWithRxInternalOperatorsOperatorAny:withRxInternalProducersSingleDelayedProducer:withRxSubscriber:", NULL, 0x0, -1, 5, -1, 6, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LRxInternalOperatorsOperatorAny;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "hasElements_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "done_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "val$producer_", "LRxInternalProducersSingleDelayedProducer;", .constantValue.asLong = 0, 0x1012, -1, -1, 7, -1 },
    { "val$child_", "LRxSubscriber;", .constantValue.asLong = 0, 0x1012, -1, -1, 8, -1 },
  };
  static const void *ptrTable[] = { "onNext", "LNSObject;", "(TT;)V", "onError", "LNSException;", "LRxInternalOperatorsOperatorAny;LRxInternalProducersSingleDelayedProducer;LRxSubscriber;", "(Lrx/internal/operators/OperatorAny;Lrx/internal/producers/SingleDelayedProducer<Ljava/lang/Boolean;>;Lrx/Subscriber<-Ljava/lang/Boolean;>;)V", "Lrx/internal/producers/SingleDelayedProducer<Ljava/lang/Boolean;>;", "Lrx/Subscriber<-Ljava/lang/Boolean;>;", "LRxInternalOperatorsOperatorAny;", "callWithId:", "Lrx/Subscriber<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorAny_$1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 4, 5, 9, -1, 10, 11, -1 };
  return &_RxInternalOperatorsOperatorAny_$1;
}

@end

void RxInternalOperatorsOperatorAny_$1_initWithRxInternalOperatorsOperatorAny_withRxInternalProducersSingleDelayedProducer_withRxSubscriber_(RxInternalOperatorsOperatorAny_$1 *self, RxInternalOperatorsOperatorAny *outer$, RxInternalProducersSingleDelayedProducer *capture$0, RxSubscriber *capture$1) {
  self->this$0_ = outer$;
  self->val$producer_ = capture$0;
  self->val$child_ = capture$1;
  RxSubscriber_init(self);
}

RxInternalOperatorsOperatorAny_$1 *new_RxInternalOperatorsOperatorAny_$1_initWithRxInternalOperatorsOperatorAny_withRxInternalProducersSingleDelayedProducer_withRxSubscriber_(RxInternalOperatorsOperatorAny *outer$, RxInternalProducersSingleDelayedProducer *capture$0, RxSubscriber *capture$1) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorAny_$1, initWithRxInternalOperatorsOperatorAny_withRxInternalProducersSingleDelayedProducer_withRxSubscriber_, outer$, capture$0, capture$1)
}

RxInternalOperatorsOperatorAny_$1 *create_RxInternalOperatorsOperatorAny_$1_initWithRxInternalOperatorsOperatorAny_withRxInternalProducersSingleDelayedProducer_withRxSubscriber_(RxInternalOperatorsOperatorAny *outer$, RxInternalProducersSingleDelayedProducer *capture$0, RxSubscriber *capture$1) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorAny_$1, initWithRxInternalOperatorsOperatorAny_withRxInternalProducersSingleDelayedProducer_withRxSubscriber_, outer$, capture$0, capture$1)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorAny_$1)
