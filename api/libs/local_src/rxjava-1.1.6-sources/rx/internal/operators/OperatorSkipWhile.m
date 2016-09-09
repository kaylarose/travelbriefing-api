//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorSkipWhile.java
//

#include "J2ObjC_source.h"
#include "java/lang/Boolean.h"
#include "java/lang/Integer.h"
#include "rx/Subscriber.h"
#include "rx/exceptions/Exceptions.h"
#include "rx/functions/Func1.h"
#include "rx/functions/Func2.h"
#include "rx/internal/operators/OperatorSkipWhile.h"

@interface RxInternalOperatorsOperatorSkipWhile_$1 : RxSubscriber {
 @public
  RxInternalOperatorsOperatorSkipWhile *this$0_;
  jboolean skipping_;
  jint index_;
  RxSubscriber *val$child_;
}

- (void)onNextWithId:(id)t;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onCompleted;

- (instancetype)initWithRxInternalOperatorsOperatorSkipWhile:(RxInternalOperatorsOperatorSkipWhile *)outer$
                                            withRxSubscriber:(RxSubscriber *)capture$0
                                            withRxSubscriber:(RxSubscriber *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorSkipWhile_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorSkipWhile_$1, this$0_, RxInternalOperatorsOperatorSkipWhile *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorSkipWhile_$1, val$child_, RxSubscriber *)

__attribute__((unused)) static void RxInternalOperatorsOperatorSkipWhile_$1_initWithRxInternalOperatorsOperatorSkipWhile_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorSkipWhile_$1 *self, RxInternalOperatorsOperatorSkipWhile *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0);

__attribute__((unused)) static RxInternalOperatorsOperatorSkipWhile_$1 *new_RxInternalOperatorsOperatorSkipWhile_$1_initWithRxInternalOperatorsOperatorSkipWhile_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorSkipWhile *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorSkipWhile_$1 *create_RxInternalOperatorsOperatorSkipWhile_$1_initWithRxInternalOperatorsOperatorSkipWhile_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorSkipWhile *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorSkipWhile_$1)

@interface RxInternalOperatorsOperatorSkipWhile_$2 : NSObject < RxFunctionsFunc2 > {
 @public
  id<RxFunctionsFunc1> val$predicate_;
}

- (JavaLangBoolean *)callWithId:(id)t1
                         withId:(JavaLangInteger *)t2;

- (instancetype)initWithRxFunctionsFunc1:(id<RxFunctionsFunc1>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorSkipWhile_$2)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorSkipWhile_$2, val$predicate_, id<RxFunctionsFunc1>)

__attribute__((unused)) static void RxInternalOperatorsOperatorSkipWhile_$2_initWithRxFunctionsFunc1_(RxInternalOperatorsOperatorSkipWhile_$2 *self, id<RxFunctionsFunc1> capture$0);

__attribute__((unused)) static RxInternalOperatorsOperatorSkipWhile_$2 *new_RxInternalOperatorsOperatorSkipWhile_$2_initWithRxFunctionsFunc1_(id<RxFunctionsFunc1> capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorSkipWhile_$2 *create_RxInternalOperatorsOperatorSkipWhile_$2_initWithRxFunctionsFunc1_(id<RxFunctionsFunc1> capture$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorSkipWhile_$2)

@implementation RxInternalOperatorsOperatorSkipWhile

- (instancetype)initWithRxFunctionsFunc2:(id<RxFunctionsFunc2>)predicate {
  RxInternalOperatorsOperatorSkipWhile_initWithRxFunctionsFunc2_(self, predicate);
  return self;
}

- (RxSubscriber *)callWithId:(RxSubscriber *)child {
  return new_RxInternalOperatorsOperatorSkipWhile_$1_initWithRxInternalOperatorsOperatorSkipWhile_withRxSubscriber_withRxSubscriber_(self, child, child);
}

+ (id<RxFunctionsFunc2>)toPredicate2WithRxFunctionsFunc1:(id<RxFunctionsFunc1>)predicate {
  return RxInternalOperatorsOperatorSkipWhile_toPredicate2WithRxFunctionsFunc1_(predicate);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxFunctionsFunc2:", NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { "callWithId:", "LRxSubscriber;", 0x1, 2, 3, -1, 4, -1, -1 },
    { "toPredicate2WithRxFunctionsFunc1:", "LRxFunctionsFunc2;", 0x9, 5, 6, -1, 7, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "predicate_", "LRxFunctionsFunc2;", .constantValue.asLong = 0, 0x10, -1, -1, 8, -1 },
  };
  static const void *ptrTable[] = { "LRxFunctionsFunc2;", "(Lrx/functions/Func2<-TT;Ljava/lang/Integer;Ljava/lang/Boolean;>;)V", "call", "LRxSubscriber;", "(Lrx/Subscriber<-TT;>;)Lrx/Subscriber<-TT;>;", "toPredicate2", "LRxFunctionsFunc1;", "<T:Ljava/lang/Object;>(Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;)Lrx/functions/Func2<TT;Ljava/lang/Integer;Ljava/lang/Boolean;>;", "Lrx/functions/Func2<-TT;Ljava/lang/Integer;Ljava/lang/Boolean;>;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$Operator<TT;TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorSkipWhile = { "OperatorSkipWhile", "rx.internal.operators", ptrTable, methods, fields, 7, 0x11, 3, 1, -1, -1, -1, 9, -1 };
  return &_RxInternalOperatorsOperatorSkipWhile;
}

@end

void RxInternalOperatorsOperatorSkipWhile_initWithRxFunctionsFunc2_(RxInternalOperatorsOperatorSkipWhile *self, id<RxFunctionsFunc2> predicate) {
  NSObject_init(self);
  self->predicate_ = predicate;
}

RxInternalOperatorsOperatorSkipWhile *new_RxInternalOperatorsOperatorSkipWhile_initWithRxFunctionsFunc2_(id<RxFunctionsFunc2> predicate) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorSkipWhile, initWithRxFunctionsFunc2_, predicate)
}

RxInternalOperatorsOperatorSkipWhile *create_RxInternalOperatorsOperatorSkipWhile_initWithRxFunctionsFunc2_(id<RxFunctionsFunc2> predicate) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorSkipWhile, initWithRxFunctionsFunc2_, predicate)
}

id<RxFunctionsFunc2> RxInternalOperatorsOperatorSkipWhile_toPredicate2WithRxFunctionsFunc1_(id<RxFunctionsFunc1> predicate) {
  RxInternalOperatorsOperatorSkipWhile_initialize();
  return new_RxInternalOperatorsOperatorSkipWhile_$2_initWithRxFunctionsFunc1_(predicate);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorSkipWhile)

@implementation RxInternalOperatorsOperatorSkipWhile_$1

- (void)onNextWithId:(id)t {
  if (!skipping_) {
    [((RxSubscriber *) nil_chk(val$child_)) onNextWithId:t];
  }
  else {
    jboolean skip;
    @try {
      skip = [((JavaLangBoolean *) nil_chk([((id<RxFunctionsFunc2>) nil_chk(this$0_->predicate_)) callWithId:t withId:JavaLangInteger_valueOfWithInt_(index_++)])) booleanValue];
    }
    @catch (NSException *e) {
      RxExceptionsExceptions_throwOrReportWithNSException_withRxObserver_withId_(e, val$child_, t);
      return;
    }
    if (!skip) {
      skipping_ = false;
      [((RxSubscriber *) nil_chk(val$child_)) onNextWithId:t];
    }
    else {
      [self requestWithLong:1];
    }
  }
}

- (void)onErrorWithNSException:(NSException *)e {
  [((RxSubscriber *) nil_chk(val$child_)) onErrorWithNSException:e];
}

- (void)onCompleted {
  [((RxSubscriber *) nil_chk(val$child_)) onCompleted];
}

- (instancetype)initWithRxInternalOperatorsOperatorSkipWhile:(RxInternalOperatorsOperatorSkipWhile *)outer$
                                            withRxSubscriber:(RxSubscriber *)capture$0
                                            withRxSubscriber:(RxSubscriber *)arg$0 {
  RxInternalOperatorsOperatorSkipWhile_$1_initWithRxInternalOperatorsOperatorSkipWhile_withRxSubscriber_withRxSubscriber_(self, outer$, capture$0, arg$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onNextWithId:", "V", 0x1, 0, 1, -1, 2, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "initWithRxInternalOperatorsOperatorSkipWhile:withRxSubscriber:withRxSubscriber:", NULL, 0x0, -1, 5, -1, 6, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LRxInternalOperatorsOperatorSkipWhile;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "skipping_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "index_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "val$child_", "LRxSubscriber;", .constantValue.asLong = 0, 0x1012, -1, -1, 7, -1 },
  };
  static const void *ptrTable[] = { "onNext", "LNSObject;", "(TT;)V", "onError", "LNSException;", "LRxInternalOperatorsOperatorSkipWhile;LRxSubscriber;LRxSubscriber;", "(Lrx/internal/operators/OperatorSkipWhile;Lrx/Subscriber<-TT;>;Lrx/Subscriber<*>;)V", "Lrx/Subscriber<-TT;>;", "LRxInternalOperatorsOperatorSkipWhile;", "callWithId:", "Lrx/Subscriber<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorSkipWhile_$1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 4, 4, 8, -1, 9, 10, -1 };
  return &_RxInternalOperatorsOperatorSkipWhile_$1;
}

@end

void RxInternalOperatorsOperatorSkipWhile_$1_initWithRxInternalOperatorsOperatorSkipWhile_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorSkipWhile_$1 *self, RxInternalOperatorsOperatorSkipWhile *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) {
  self->this$0_ = outer$;
  self->val$child_ = capture$0;
  RxSubscriber_initWithRxSubscriber_(self, arg$0);
  self->skipping_ = true;
}

RxInternalOperatorsOperatorSkipWhile_$1 *new_RxInternalOperatorsOperatorSkipWhile_$1_initWithRxInternalOperatorsOperatorSkipWhile_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorSkipWhile *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorSkipWhile_$1, initWithRxInternalOperatorsOperatorSkipWhile_withRxSubscriber_withRxSubscriber_, outer$, capture$0, arg$0)
}

RxInternalOperatorsOperatorSkipWhile_$1 *create_RxInternalOperatorsOperatorSkipWhile_$1_initWithRxInternalOperatorsOperatorSkipWhile_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorSkipWhile *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorSkipWhile_$1, initWithRxInternalOperatorsOperatorSkipWhile_withRxSubscriber_withRxSubscriber_, outer$, capture$0, arg$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorSkipWhile_$1)

@implementation RxInternalOperatorsOperatorSkipWhile_$2

- (JavaLangBoolean *)callWithId:(id)t1
                         withId:(JavaLangInteger *)t2 {
  return [((id<RxFunctionsFunc1>) nil_chk(val$predicate_)) callWithId:t1];
}

- (instancetype)initWithRxFunctionsFunc1:(id<RxFunctionsFunc1>)capture$0 {
  RxInternalOperatorsOperatorSkipWhile_$2_initWithRxFunctionsFunc1_(self, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "callWithId:withId:", "LJavaLangBoolean;", 0x1, 0, 1, -1, 2, -1, -1 },
    { "initWithRxFunctionsFunc1:", NULL, 0x0, -1, 3, -1, 4, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$predicate_", "LRxFunctionsFunc1;", .constantValue.asLong = 0, 0x1012, -1, -1, 5, -1 },
  };
  static const void *ptrTable[] = { "call", "LNSObject;LJavaLangInteger;", "(TT;Ljava/lang/Integer;)Ljava/lang/Boolean;", "LRxFunctionsFunc1;", "(Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;)V", "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;", "LRxInternalOperatorsOperatorSkipWhile;", "toPredicate2WithRxFunctionsFunc1:", "Ljava/lang/Object;Lrx/functions/Func2<TT;Ljava/lang/Integer;Ljava/lang/Boolean;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorSkipWhile_$2 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 2, 1, 6, -1, 7, 8, -1 };
  return &_RxInternalOperatorsOperatorSkipWhile_$2;
}

@end

void RxInternalOperatorsOperatorSkipWhile_$2_initWithRxFunctionsFunc1_(RxInternalOperatorsOperatorSkipWhile_$2 *self, id<RxFunctionsFunc1> capture$0) {
  self->val$predicate_ = capture$0;
  NSObject_init(self);
}

RxInternalOperatorsOperatorSkipWhile_$2 *new_RxInternalOperatorsOperatorSkipWhile_$2_initWithRxFunctionsFunc1_(id<RxFunctionsFunc1> capture$0) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorSkipWhile_$2, initWithRxFunctionsFunc1_, capture$0)
}

RxInternalOperatorsOperatorSkipWhile_$2 *create_RxInternalOperatorsOperatorSkipWhile_$2_initWithRxFunctionsFunc1_(id<RxFunctionsFunc1> capture$0) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorSkipWhile_$2, initWithRxFunctionsFunc1_, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorSkipWhile_$2)
