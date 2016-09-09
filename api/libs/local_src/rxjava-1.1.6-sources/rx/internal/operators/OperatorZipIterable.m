//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorZipIterable.java
//

#include "J2ObjC_source.h"
#include "java/lang/Iterable.h"
#include "java/util/Iterator.h"
#include "rx/Subscriber.h"
#include "rx/exceptions/Exceptions.h"
#include "rx/functions/Func2.h"
#include "rx/internal/operators/OperatorZipIterable.h"
#include "rx/observers/Subscribers.h"

@interface RxInternalOperatorsOperatorZipIterable_$1 : RxSubscriber {
 @public
  RxInternalOperatorsOperatorZipIterable *this$0_;
  jboolean done_;
  RxSubscriber *val$subscriber_;
  id<JavaUtilIterator> val$iterator_;
}

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)t;

- (instancetype)initWithRxInternalOperatorsOperatorZipIterable:(RxInternalOperatorsOperatorZipIterable *)outer$
                                              withRxSubscriber:(RxSubscriber *)capture$0
                                          withJavaUtilIterator:(id<JavaUtilIterator>)capture$1
                                              withRxSubscriber:(RxSubscriber *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorZipIterable_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorZipIterable_$1, this$0_, RxInternalOperatorsOperatorZipIterable *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorZipIterable_$1, val$subscriber_, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorZipIterable_$1, val$iterator_, id<JavaUtilIterator>)

__attribute__((unused)) static void RxInternalOperatorsOperatorZipIterable_$1_initWithRxInternalOperatorsOperatorZipIterable_withRxSubscriber_withJavaUtilIterator_withRxSubscriber_(RxInternalOperatorsOperatorZipIterable_$1 *self, RxInternalOperatorsOperatorZipIterable *outer$, RxSubscriber *capture$0, id<JavaUtilIterator> capture$1, RxSubscriber *arg$0);

__attribute__((unused)) static RxInternalOperatorsOperatorZipIterable_$1 *new_RxInternalOperatorsOperatorZipIterable_$1_initWithRxInternalOperatorsOperatorZipIterable_withRxSubscriber_withJavaUtilIterator_withRxSubscriber_(RxInternalOperatorsOperatorZipIterable *outer$, RxSubscriber *capture$0, id<JavaUtilIterator> capture$1, RxSubscriber *arg$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorZipIterable_$1 *create_RxInternalOperatorsOperatorZipIterable_$1_initWithRxInternalOperatorsOperatorZipIterable_withRxSubscriber_withJavaUtilIterator_withRxSubscriber_(RxInternalOperatorsOperatorZipIterable *outer$, RxSubscriber *capture$0, id<JavaUtilIterator> capture$1, RxSubscriber *arg$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorZipIterable_$1)

@implementation RxInternalOperatorsOperatorZipIterable

- (instancetype)initWithJavaLangIterable:(id<JavaLangIterable>)iterable
                    withRxFunctionsFunc2:(id<RxFunctionsFunc2>)zipFunction {
  RxInternalOperatorsOperatorZipIterable_initWithJavaLangIterable_withRxFunctionsFunc2_(self, iterable, zipFunction);
  return self;
}

- (RxSubscriber *)callWithId:(RxSubscriber *)subscriber {
  id<JavaUtilIterator> iterator = [((id<JavaLangIterable>) nil_chk(iterable_)) iterator];
  @try {
    if (![((id<JavaUtilIterator>) nil_chk(iterator)) hasNext]) {
      [((RxSubscriber *) nil_chk(subscriber)) onCompleted];
      return RxObserversSubscribers_empty();
    }
  }
  @catch (NSException *e) {
    RxExceptionsExceptions_throwOrReportWithNSException_withRxObserver_(e, subscriber);
    return RxObserversSubscribers_empty();
  }
  return new_RxInternalOperatorsOperatorZipIterable_$1_initWithRxInternalOperatorsOperatorZipIterable_withRxSubscriber_withJavaUtilIterator_withRxSubscriber_(self, subscriber, iterator, subscriber);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaLangIterable:withRxFunctionsFunc2:", NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { "callWithId:", "LRxSubscriber;", 0x1, 2, 3, -1, 4, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "iterable_", "LJavaLangIterable;", .constantValue.asLong = 0, 0x10, -1, -1, 5, -1 },
    { "zipFunction_", "LRxFunctionsFunc2;", .constantValue.asLong = 0, 0x10, -1, -1, 6, -1 },
  };
  static const void *ptrTable[] = { "LJavaLangIterable;LRxFunctionsFunc2;", "(Ljava/lang/Iterable<+TT2;>;Lrx/functions/Func2<-TT1;-TT2;+TR;>;)V", "call", "LRxSubscriber;", "(Lrx/Subscriber<-TR;>;)Lrx/Subscriber<-TT1;>;", "Ljava/lang/Iterable<+TT2;>;", "Lrx/functions/Func2<-TT1;-TT2;+TR;>;", "<T1:Ljava/lang/Object;T2:Ljava/lang/Object;R:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$Operator<TR;TT1;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorZipIterable = { "OperatorZipIterable", "rx.internal.operators", ptrTable, methods, fields, 7, 0x11, 2, 2, -1, -1, -1, 7, -1 };
  return &_RxInternalOperatorsOperatorZipIterable;
}

@end

void RxInternalOperatorsOperatorZipIterable_initWithJavaLangIterable_withRxFunctionsFunc2_(RxInternalOperatorsOperatorZipIterable *self, id<JavaLangIterable> iterable, id<RxFunctionsFunc2> zipFunction) {
  NSObject_init(self);
  self->iterable_ = iterable;
  self->zipFunction_ = zipFunction;
}

RxInternalOperatorsOperatorZipIterable *new_RxInternalOperatorsOperatorZipIterable_initWithJavaLangIterable_withRxFunctionsFunc2_(id<JavaLangIterable> iterable, id<RxFunctionsFunc2> zipFunction) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorZipIterable, initWithJavaLangIterable_withRxFunctionsFunc2_, iterable, zipFunction)
}

RxInternalOperatorsOperatorZipIterable *create_RxInternalOperatorsOperatorZipIterable_initWithJavaLangIterable_withRxFunctionsFunc2_(id<JavaLangIterable> iterable, id<RxFunctionsFunc2> zipFunction) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorZipIterable, initWithJavaLangIterable_withRxFunctionsFunc2_, iterable, zipFunction)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorZipIterable)

@implementation RxInternalOperatorsOperatorZipIterable_$1

- (void)onCompleted {
  if (done_) {
    return;
  }
  done_ = true;
  [((RxSubscriber *) nil_chk(val$subscriber_)) onCompleted];
}

- (void)onErrorWithNSException:(NSException *)e {
  if (done_) {
    RxExceptionsExceptions_throwIfFatalWithNSException_(e);
    return;
  }
  done_ = true;
  [((RxSubscriber *) nil_chk(val$subscriber_)) onErrorWithNSException:e];
}

- (void)onNextWithId:(id)t {
  if (done_) {
    return;
  }
  @try {
    [((RxSubscriber *) nil_chk(val$subscriber_)) onNextWithId:[((id<RxFunctionsFunc2>) nil_chk(this$0_->zipFunction_)) callWithId:t withId:[((id<JavaUtilIterator>) nil_chk(val$iterator_)) next]]];
    if (![val$iterator_ hasNext]) {
      [self onCompleted];
    }
  }
  @catch (NSException *e) {
    RxExceptionsExceptions_throwOrReportWithNSException_withRxObserver_(e, self);
  }
}

- (instancetype)initWithRxInternalOperatorsOperatorZipIterable:(RxInternalOperatorsOperatorZipIterable *)outer$
                                              withRxSubscriber:(RxSubscriber *)capture$0
                                          withJavaUtilIterator:(id<JavaUtilIterator>)capture$1
                                              withRxSubscriber:(RxSubscriber *)arg$0 {
  RxInternalOperatorsOperatorZipIterable_$1_initWithRxInternalOperatorsOperatorZipIterable_withRxSubscriber_withJavaUtilIterator_withRxSubscriber_(self, outer$, capture$0, capture$1, arg$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { "onNextWithId:", "V", 0x1, 2, 3, -1, 4, -1, -1 },
    { "initWithRxInternalOperatorsOperatorZipIterable:withRxSubscriber:withJavaUtilIterator:withRxSubscriber:", NULL, 0x0, -1, 5, -1, 6, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LRxInternalOperatorsOperatorZipIterable;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "done_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "val$subscriber_", "LRxSubscriber;", .constantValue.asLong = 0, 0x1012, -1, -1, 7, -1 },
    { "val$iterator_", "LJavaUtilIterator;", .constantValue.asLong = 0, 0x1012, -1, -1, 8, -1 },
  };
  static const void *ptrTable[] = { "onError", "LNSException;", "onNext", "LNSObject;", "(TT1;)V", "LRxInternalOperatorsOperatorZipIterable;LRxSubscriber;LJavaUtilIterator;LRxSubscriber;", "(Lrx/internal/operators/OperatorZipIterable;Lrx/Subscriber<-TR;>;Ljava/util/Iterator<+TT2;>;Lrx/Subscriber<*>;)V", "Lrx/Subscriber<-TR;>;", "Ljava/util/Iterator<+TT2;>;", "LRxInternalOperatorsOperatorZipIterable;", "callWithId:", "Lrx/Subscriber<TT1;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorZipIterable_$1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 4, 4, 9, -1, 10, 11, -1 };
  return &_RxInternalOperatorsOperatorZipIterable_$1;
}

@end

void RxInternalOperatorsOperatorZipIterable_$1_initWithRxInternalOperatorsOperatorZipIterable_withRxSubscriber_withJavaUtilIterator_withRxSubscriber_(RxInternalOperatorsOperatorZipIterable_$1 *self, RxInternalOperatorsOperatorZipIterable *outer$, RxSubscriber *capture$0, id<JavaUtilIterator> capture$1, RxSubscriber *arg$0) {
  self->this$0_ = outer$;
  self->val$subscriber_ = capture$0;
  self->val$iterator_ = capture$1;
  RxSubscriber_initWithRxSubscriber_(self, arg$0);
}

RxInternalOperatorsOperatorZipIterable_$1 *new_RxInternalOperatorsOperatorZipIterable_$1_initWithRxInternalOperatorsOperatorZipIterable_withRxSubscriber_withJavaUtilIterator_withRxSubscriber_(RxInternalOperatorsOperatorZipIterable *outer$, RxSubscriber *capture$0, id<JavaUtilIterator> capture$1, RxSubscriber *arg$0) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorZipIterable_$1, initWithRxInternalOperatorsOperatorZipIterable_withRxSubscriber_withJavaUtilIterator_withRxSubscriber_, outer$, capture$0, capture$1, arg$0)
}

RxInternalOperatorsOperatorZipIterable_$1 *create_RxInternalOperatorsOperatorZipIterable_$1_initWithRxInternalOperatorsOperatorZipIterable_withRxSubscriber_withJavaUtilIterator_withRxSubscriber_(RxInternalOperatorsOperatorZipIterable *outer$, RxSubscriber *capture$0, id<JavaUtilIterator> capture$1, RxSubscriber *arg$0) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorZipIterable_$1, initWithRxInternalOperatorsOperatorZipIterable_withRxSubscriber_withJavaUtilIterator_withRxSubscriber_, outer$, capture$0, capture$1, arg$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorZipIterable_$1)
