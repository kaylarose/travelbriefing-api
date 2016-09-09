//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorWithLatestFrom.java
//

#include "J2ObjC_source.h"
#include "java/util/concurrent/atomic/AtomicReference.h"
#include "rx/Observable.h"
#include "rx/Subscriber.h"
#include "rx/Subscription.h"
#include "rx/exceptions/Exceptions.h"
#include "rx/functions/Func2.h"
#include "rx/internal/operators/OperatorWithLatestFrom.h"
#include "rx/observers/SerializedSubscriber.h"

@interface RxInternalOperatorsOperatorWithLatestFrom_$1 : RxSubscriber {
 @public
  RxInternalOperatorsOperatorWithLatestFrom *this$0_;
  JavaUtilConcurrentAtomicAtomicReference *val$current_;
  RxObserversSerializedSubscriber *val$s_;
}

- (void)onNextWithId:(id)t;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onCompleted;

- (instancetype)initWithRxInternalOperatorsOperatorWithLatestFrom:(RxInternalOperatorsOperatorWithLatestFrom *)outer$
                      withJavaUtilConcurrentAtomicAtomicReference:(JavaUtilConcurrentAtomicAtomicReference *)capture$0
                              withRxObserversSerializedSubscriber:(RxObserversSerializedSubscriber *)capture$1
                                                 withRxSubscriber:(RxSubscriber *)arg$0
                                                      withBoolean:(jboolean)arg$1;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorWithLatestFrom_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWithLatestFrom_$1, this$0_, RxInternalOperatorsOperatorWithLatestFrom *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWithLatestFrom_$1, val$current_, JavaUtilConcurrentAtomicAtomicReference *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWithLatestFrom_$1, val$s_, RxObserversSerializedSubscriber *)

__attribute__((unused)) static void RxInternalOperatorsOperatorWithLatestFrom_$1_initWithRxInternalOperatorsOperatorWithLatestFrom_withJavaUtilConcurrentAtomicAtomicReference_withRxObserversSerializedSubscriber_withRxSubscriber_withBoolean_(RxInternalOperatorsOperatorWithLatestFrom_$1 *self, RxInternalOperatorsOperatorWithLatestFrom *outer$, JavaUtilConcurrentAtomicAtomicReference *capture$0, RxObserversSerializedSubscriber *capture$1, RxSubscriber *arg$0, jboolean arg$1);

__attribute__((unused)) static RxInternalOperatorsOperatorWithLatestFrom_$1 *new_RxInternalOperatorsOperatorWithLatestFrom_$1_initWithRxInternalOperatorsOperatorWithLatestFrom_withJavaUtilConcurrentAtomicAtomicReference_withRxObserversSerializedSubscriber_withRxSubscriber_withBoolean_(RxInternalOperatorsOperatorWithLatestFrom *outer$, JavaUtilConcurrentAtomicAtomicReference *capture$0, RxObserversSerializedSubscriber *capture$1, RxSubscriber *arg$0, jboolean arg$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorWithLatestFrom_$1 *create_RxInternalOperatorsOperatorWithLatestFrom_$1_initWithRxInternalOperatorsOperatorWithLatestFrom_withJavaUtilConcurrentAtomicAtomicReference_withRxObserversSerializedSubscriber_withRxSubscriber_withBoolean_(RxInternalOperatorsOperatorWithLatestFrom *outer$, JavaUtilConcurrentAtomicAtomicReference *capture$0, RxObserversSerializedSubscriber *capture$1, RxSubscriber *arg$0, jboolean arg$1);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorWithLatestFrom_$1)

@interface RxInternalOperatorsOperatorWithLatestFrom_$2 : RxSubscriber {
 @public
  JavaUtilConcurrentAtomicAtomicReference *val$current_;
  RxObserversSerializedSubscriber *val$s_;
}

- (void)onNextWithId:(id)t;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onCompleted;

- (instancetype)initWithJavaUtilConcurrentAtomicAtomicReference:(JavaUtilConcurrentAtomicAtomicReference *)capture$0
                            withRxObserversSerializedSubscriber:(RxObserversSerializedSubscriber *)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorWithLatestFrom_$2)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWithLatestFrom_$2, val$current_, JavaUtilConcurrentAtomicAtomicReference *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWithLatestFrom_$2, val$s_, RxObserversSerializedSubscriber *)

__attribute__((unused)) static void RxInternalOperatorsOperatorWithLatestFrom_$2_initWithJavaUtilConcurrentAtomicAtomicReference_withRxObserversSerializedSubscriber_(RxInternalOperatorsOperatorWithLatestFrom_$2 *self, JavaUtilConcurrentAtomicAtomicReference *capture$0, RxObserversSerializedSubscriber *capture$1);

__attribute__((unused)) static RxInternalOperatorsOperatorWithLatestFrom_$2 *new_RxInternalOperatorsOperatorWithLatestFrom_$2_initWithJavaUtilConcurrentAtomicAtomicReference_withRxObserversSerializedSubscriber_(JavaUtilConcurrentAtomicAtomicReference *capture$0, RxObserversSerializedSubscriber *capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorWithLatestFrom_$2 *create_RxInternalOperatorsOperatorWithLatestFrom_$2_initWithJavaUtilConcurrentAtomicAtomicReference_withRxObserversSerializedSubscriber_(JavaUtilConcurrentAtomicAtomicReference *capture$0, RxObserversSerializedSubscriber *capture$1);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorWithLatestFrom_$2)

J2OBJC_INITIALIZED_DEFN(RxInternalOperatorsOperatorWithLatestFrom)

id RxInternalOperatorsOperatorWithLatestFrom_EMPTY;

@implementation RxInternalOperatorsOperatorWithLatestFrom

+ (id)EMPTY {
  return RxInternalOperatorsOperatorWithLatestFrom_EMPTY;
}

- (instancetype)initWithRxObservable:(RxObservable *)other
                withRxFunctionsFunc2:(id<RxFunctionsFunc2>)resultSelector {
  RxInternalOperatorsOperatorWithLatestFrom_initWithRxObservable_withRxFunctionsFunc2_(self, other, resultSelector);
  return self;
}

- (RxSubscriber *)callWithId:(RxSubscriber *)child {
  RxObserversSerializedSubscriber *s = new_RxObserversSerializedSubscriber_initWithRxSubscriber_withBoolean_(child, false);
  [((RxSubscriber *) nil_chk(child)) addWithRxSubscription:s];
  JavaUtilConcurrentAtomicAtomicReference *current = new_JavaUtilConcurrentAtomicAtomicReference_initWithId_(RxInternalOperatorsOperatorWithLatestFrom_EMPTY);
  RxSubscriber *subscriber = new_RxInternalOperatorsOperatorWithLatestFrom_$1_initWithRxInternalOperatorsOperatorWithLatestFrom_withJavaUtilConcurrentAtomicAtomicReference_withRxObserversSerializedSubscriber_withRxSubscriber_withBoolean_(self, current, s, s, true);
  RxSubscriber *otherSubscriber = new_RxInternalOperatorsOperatorWithLatestFrom_$2_initWithJavaUtilConcurrentAtomicAtomicReference_withRxObserversSerializedSubscriber_(current, s);
  [s addWithRxSubscription:subscriber];
  [s addWithRxSubscription:otherSubscriber];
  (void) [((RxObservable *) nil_chk(other_)) unsafeSubscribeWithRxSubscriber:otherSubscriber];
  return subscriber;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxObservable:withRxFunctionsFunc2:", NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { "callWithId:", "LRxSubscriber;", 0x1, 2, 3, -1, 4, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "resultSelector_", "LRxFunctionsFunc2;", .constantValue.asLong = 0, 0x10, -1, -1, 5, -1 },
    { "other_", "LRxObservable;", .constantValue.asLong = 0, 0x10, -1, -1, 6, -1 },
    { "EMPTY", "LNSObject;", .constantValue.asLong = 0, 0x18, -1, 7, -1, -1 },
  };
  static const void *ptrTable[] = { "LRxObservable;LRxFunctionsFunc2;", "(Lrx/Observable<+TU;>;Lrx/functions/Func2<-TT;-TU;+TR;>;)V", "call", "LRxSubscriber;", "(Lrx/Subscriber<-TR;>;)Lrx/Subscriber<-TT;>;", "Lrx/functions/Func2<-TT;-TU;+TR;>;", "Lrx/Observable<+TU;>;", &RxInternalOperatorsOperatorWithLatestFrom_EMPTY, "<T:Ljava/lang/Object;U:Ljava/lang/Object;R:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$Operator<TR;TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorWithLatestFrom = { "OperatorWithLatestFrom", "rx.internal.operators", ptrTable, methods, fields, 7, 0x11, 2, 3, -1, -1, -1, 8, -1 };
  return &_RxInternalOperatorsOperatorWithLatestFrom;
}

+ (void)initialize {
  if (self == [RxInternalOperatorsOperatorWithLatestFrom class]) {
    RxInternalOperatorsOperatorWithLatestFrom_EMPTY = new_NSObject_init();
    J2OBJC_SET_INITIALIZED(RxInternalOperatorsOperatorWithLatestFrom)
  }
}

@end

void RxInternalOperatorsOperatorWithLatestFrom_initWithRxObservable_withRxFunctionsFunc2_(RxInternalOperatorsOperatorWithLatestFrom *self, RxObservable *other, id<RxFunctionsFunc2> resultSelector) {
  NSObject_init(self);
  self->other_ = other;
  self->resultSelector_ = resultSelector;
}

RxInternalOperatorsOperatorWithLatestFrom *new_RxInternalOperatorsOperatorWithLatestFrom_initWithRxObservable_withRxFunctionsFunc2_(RxObservable *other, id<RxFunctionsFunc2> resultSelector) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorWithLatestFrom, initWithRxObservable_withRxFunctionsFunc2_, other, resultSelector)
}

RxInternalOperatorsOperatorWithLatestFrom *create_RxInternalOperatorsOperatorWithLatestFrom_initWithRxObservable_withRxFunctionsFunc2_(RxObservable *other, id<RxFunctionsFunc2> resultSelector) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorWithLatestFrom, initWithRxObservable_withRxFunctionsFunc2_, other, resultSelector)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorWithLatestFrom)

@implementation RxInternalOperatorsOperatorWithLatestFrom_$1

- (void)onNextWithId:(id)t {
  id o = [((JavaUtilConcurrentAtomicAtomicReference *) nil_chk(val$current_)) get];
  if (o != JreLoadStatic(RxInternalOperatorsOperatorWithLatestFrom, EMPTY)) {
    @try {
      id u = o;
      id result = [((id<RxFunctionsFunc2>) nil_chk(this$0_->resultSelector_)) callWithId:t withId:u];
      [((RxObserversSerializedSubscriber *) nil_chk(val$s_)) onNextWithId:result];
    }
    @catch (NSException *e) {
      RxExceptionsExceptions_throwOrReportWithNSException_withRxObserver_(e, self);
    }
  }
}

- (void)onErrorWithNSException:(NSException *)e {
  [((RxObserversSerializedSubscriber *) nil_chk(val$s_)) onErrorWithNSException:e];
  [val$s_ unsubscribe];
}

- (void)onCompleted {
  [((RxObserversSerializedSubscriber *) nil_chk(val$s_)) onCompleted];
  [val$s_ unsubscribe];
}

- (instancetype)initWithRxInternalOperatorsOperatorWithLatestFrom:(RxInternalOperatorsOperatorWithLatestFrom *)outer$
                      withJavaUtilConcurrentAtomicAtomicReference:(JavaUtilConcurrentAtomicAtomicReference *)capture$0
                              withRxObserversSerializedSubscriber:(RxObserversSerializedSubscriber *)capture$1
                                                 withRxSubscriber:(RxSubscriber *)arg$0
                                                      withBoolean:(jboolean)arg$1 {
  RxInternalOperatorsOperatorWithLatestFrom_$1_initWithRxInternalOperatorsOperatorWithLatestFrom_withJavaUtilConcurrentAtomicAtomicReference_withRxObserversSerializedSubscriber_withRxSubscriber_withBoolean_(self, outer$, capture$0, capture$1, arg$0, arg$1);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onNextWithId:", "V", 0x1, 0, 1, -1, 2, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "initWithRxInternalOperatorsOperatorWithLatestFrom:withJavaUtilConcurrentAtomicAtomicReference:withRxObserversSerializedSubscriber:withRxSubscriber:withBoolean:", NULL, 0x0, -1, 5, -1, 6, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LRxInternalOperatorsOperatorWithLatestFrom;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$current_", "LJavaUtilConcurrentAtomicAtomicReference;", .constantValue.asLong = 0, 0x1012, -1, -1, 7, -1 },
    { "val$s_", "LRxObserversSerializedSubscriber;", .constantValue.asLong = 0, 0x1012, -1, -1, 8, -1 },
  };
  static const void *ptrTable[] = { "onNext", "LNSObject;", "(TT;)V", "onError", "LNSException;", "LRxInternalOperatorsOperatorWithLatestFrom;LJavaUtilConcurrentAtomicAtomicReference;LRxObserversSerializedSubscriber;LRxSubscriber;Z", "(Lrx/internal/operators/OperatorWithLatestFrom;Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;Lrx/observers/SerializedSubscriber<TR;>;Lrx/Subscriber<*>;Z)V", "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;", "Lrx/observers/SerializedSubscriber<TR;>;", "LRxInternalOperatorsOperatorWithLatestFrom;", "callWithId:", "Lrx/Subscriber<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorWithLatestFrom_$1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 4, 3, 9, -1, 10, 11, -1 };
  return &_RxInternalOperatorsOperatorWithLatestFrom_$1;
}

@end

void RxInternalOperatorsOperatorWithLatestFrom_$1_initWithRxInternalOperatorsOperatorWithLatestFrom_withJavaUtilConcurrentAtomicAtomicReference_withRxObserversSerializedSubscriber_withRxSubscriber_withBoolean_(RxInternalOperatorsOperatorWithLatestFrom_$1 *self, RxInternalOperatorsOperatorWithLatestFrom *outer$, JavaUtilConcurrentAtomicAtomicReference *capture$0, RxObserversSerializedSubscriber *capture$1, RxSubscriber *arg$0, jboolean arg$1) {
  self->this$0_ = outer$;
  self->val$current_ = capture$0;
  self->val$s_ = capture$1;
  RxSubscriber_initWithRxSubscriber_withBoolean_(self, arg$0, arg$1);
}

RxInternalOperatorsOperatorWithLatestFrom_$1 *new_RxInternalOperatorsOperatorWithLatestFrom_$1_initWithRxInternalOperatorsOperatorWithLatestFrom_withJavaUtilConcurrentAtomicAtomicReference_withRxObserversSerializedSubscriber_withRxSubscriber_withBoolean_(RxInternalOperatorsOperatorWithLatestFrom *outer$, JavaUtilConcurrentAtomicAtomicReference *capture$0, RxObserversSerializedSubscriber *capture$1, RxSubscriber *arg$0, jboolean arg$1) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorWithLatestFrom_$1, initWithRxInternalOperatorsOperatorWithLatestFrom_withJavaUtilConcurrentAtomicAtomicReference_withRxObserversSerializedSubscriber_withRxSubscriber_withBoolean_, outer$, capture$0, capture$1, arg$0, arg$1)
}

RxInternalOperatorsOperatorWithLatestFrom_$1 *create_RxInternalOperatorsOperatorWithLatestFrom_$1_initWithRxInternalOperatorsOperatorWithLatestFrom_withJavaUtilConcurrentAtomicAtomicReference_withRxObserversSerializedSubscriber_withRxSubscriber_withBoolean_(RxInternalOperatorsOperatorWithLatestFrom *outer$, JavaUtilConcurrentAtomicAtomicReference *capture$0, RxObserversSerializedSubscriber *capture$1, RxSubscriber *arg$0, jboolean arg$1) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorWithLatestFrom_$1, initWithRxInternalOperatorsOperatorWithLatestFrom_withJavaUtilConcurrentAtomicAtomicReference_withRxObserversSerializedSubscriber_withRxSubscriber_withBoolean_, outer$, capture$0, capture$1, arg$0, arg$1)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorWithLatestFrom_$1)

@implementation RxInternalOperatorsOperatorWithLatestFrom_$2

- (void)onNextWithId:(id)t {
  [((JavaUtilConcurrentAtomicAtomicReference *) nil_chk(val$current_)) setWithId:t];
}

- (void)onErrorWithNSException:(NSException *)e {
  [((RxObserversSerializedSubscriber *) nil_chk(val$s_)) onErrorWithNSException:e];
  [val$s_ unsubscribe];
}

- (void)onCompleted {
  if ([((JavaUtilConcurrentAtomicAtomicReference *) nil_chk(val$current_)) get] == JreLoadStatic(RxInternalOperatorsOperatorWithLatestFrom, EMPTY)) {
    [((RxObserversSerializedSubscriber *) nil_chk(val$s_)) onCompleted];
    [val$s_ unsubscribe];
  }
}

- (instancetype)initWithJavaUtilConcurrentAtomicAtomicReference:(JavaUtilConcurrentAtomicAtomicReference *)capture$0
                            withRxObserversSerializedSubscriber:(RxObserversSerializedSubscriber *)capture$1 {
  RxInternalOperatorsOperatorWithLatestFrom_$2_initWithJavaUtilConcurrentAtomicAtomicReference_withRxObserversSerializedSubscriber_(self, capture$0, capture$1);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onNextWithId:", "V", 0x1, 0, 1, -1, 2, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "initWithJavaUtilConcurrentAtomicAtomicReference:withRxObserversSerializedSubscriber:", NULL, 0x0, -1, 5, -1, 6, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$current_", "LJavaUtilConcurrentAtomicAtomicReference;", .constantValue.asLong = 0, 0x1012, -1, -1, 7, -1 },
    { "val$s_", "LRxObserversSerializedSubscriber;", .constantValue.asLong = 0, 0x1012, -1, -1, 8, -1 },
  };
  static const void *ptrTable[] = { "onNext", "LNSObject;", "(TU;)V", "onError", "LNSException;", "LJavaUtilConcurrentAtomicAtomicReference;LRxObserversSerializedSubscriber;", "(Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;Lrx/observers/SerializedSubscriber<TR;>;)V", "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;", "Lrx/observers/SerializedSubscriber<TR;>;", "LRxInternalOperatorsOperatorWithLatestFrom;", "callWithId:", "Lrx/Subscriber<TU;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorWithLatestFrom_$2 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 4, 2, 9, -1, 10, 11, -1 };
  return &_RxInternalOperatorsOperatorWithLatestFrom_$2;
}

@end

void RxInternalOperatorsOperatorWithLatestFrom_$2_initWithJavaUtilConcurrentAtomicAtomicReference_withRxObserversSerializedSubscriber_(RxInternalOperatorsOperatorWithLatestFrom_$2 *self, JavaUtilConcurrentAtomicAtomicReference *capture$0, RxObserversSerializedSubscriber *capture$1) {
  self->val$current_ = capture$0;
  self->val$s_ = capture$1;
  RxSubscriber_init(self);
}

RxInternalOperatorsOperatorWithLatestFrom_$2 *new_RxInternalOperatorsOperatorWithLatestFrom_$2_initWithJavaUtilConcurrentAtomicAtomicReference_withRxObserversSerializedSubscriber_(JavaUtilConcurrentAtomicAtomicReference *capture$0, RxObserversSerializedSubscriber *capture$1) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorWithLatestFrom_$2, initWithJavaUtilConcurrentAtomicAtomicReference_withRxObserversSerializedSubscriber_, capture$0, capture$1)
}

RxInternalOperatorsOperatorWithLatestFrom_$2 *create_RxInternalOperatorsOperatorWithLatestFrom_$2_initWithJavaUtilConcurrentAtomicAtomicReference_withRxObserversSerializedSubscriber_(JavaUtilConcurrentAtomicAtomicReference *capture$0, RxObserversSerializedSubscriber *capture$1) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorWithLatestFrom_$2, initWithJavaUtilConcurrentAtomicAtomicReference_withRxObserversSerializedSubscriber_, capture$0, capture$1)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorWithLatestFrom_$2)