//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorMap.java
//

#include "J2ObjC_source.h"
#include "rx/Producer.h"
#include "rx/Subscriber.h"
#include "rx/exceptions/Exceptions.h"
#include "rx/exceptions/OnErrorThrowable.h"
#include "rx/functions/Func1.h"
#include "rx/internal/operators/OperatorMap.h"
#include "rx/internal/util/RxJavaPluginUtils.h"

@implementation RxInternalOperatorsOperatorMap

- (instancetype)initWithRxFunctionsFunc1:(id<RxFunctionsFunc1>)transformer {
  RxInternalOperatorsOperatorMap_initWithRxFunctionsFunc1_(self, transformer);
  return self;
}

- (RxSubscriber *)callWithId:(RxSubscriber *)o {
  RxInternalOperatorsOperatorMap_MapSubscriber *parent = new_RxInternalOperatorsOperatorMap_MapSubscriber_initWithRxSubscriber_withRxFunctionsFunc1_(o, transformer_);
  [((RxSubscriber *) nil_chk(o)) addWithRxSubscription:parent];
  return parent;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxFunctionsFunc1:", NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { "callWithId:", "LRxSubscriber;", 0x1, 2, 3, -1, 4, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "transformer_", "LRxFunctionsFunc1;", .constantValue.asLong = 0, 0x10, -1, -1, 5, -1 },
  };
  static const void *ptrTable[] = { "LRxFunctionsFunc1;", "(Lrx/functions/Func1<-TT;+TR;>;)V", "call", "LRxSubscriber;", "(Lrx/Subscriber<-TR;>;)Lrx/Subscriber<-TT;>;", "Lrx/functions/Func1<-TT;+TR;>;", "LRxInternalOperatorsOperatorMap_MapSubscriber;", "<T:Ljava/lang/Object;R:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$Operator<TR;TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorMap = { "OperatorMap", "rx.internal.operators", ptrTable, methods, fields, 7, 0x11, 2, 1, -1, 6, -1, 7, -1 };
  return &_RxInternalOperatorsOperatorMap;
}

@end

void RxInternalOperatorsOperatorMap_initWithRxFunctionsFunc1_(RxInternalOperatorsOperatorMap *self, id<RxFunctionsFunc1> transformer) {
  NSObject_init(self);
  self->transformer_ = transformer;
}

RxInternalOperatorsOperatorMap *new_RxInternalOperatorsOperatorMap_initWithRxFunctionsFunc1_(id<RxFunctionsFunc1> transformer) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorMap, initWithRxFunctionsFunc1_, transformer)
}

RxInternalOperatorsOperatorMap *create_RxInternalOperatorsOperatorMap_initWithRxFunctionsFunc1_(id<RxFunctionsFunc1> transformer) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorMap, initWithRxFunctionsFunc1_, transformer)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorMap)

@implementation RxInternalOperatorsOperatorMap_MapSubscriber

- (instancetype)initWithRxSubscriber:(RxSubscriber *)actual
                withRxFunctionsFunc1:(id<RxFunctionsFunc1>)mapper {
  RxInternalOperatorsOperatorMap_MapSubscriber_initWithRxSubscriber_withRxFunctionsFunc1_(self, actual, mapper);
  return self;
}

- (void)onNextWithId:(id)t {
  id result;
  @try {
    result = [((id<RxFunctionsFunc1>) nil_chk(mapper_)) callWithId:t];
  }
  @catch (NSException *ex) {
    RxExceptionsExceptions_throwIfFatalWithNSException_(ex);
    [self unsubscribe];
    [self onErrorWithNSException:RxExceptionsOnErrorThrowable_addValueAsLastCauseWithNSException_withId_(ex, t)];
    return;
  }
  [((RxSubscriber *) nil_chk(actual_)) onNextWithId:result];
}

- (void)onErrorWithNSException:(NSException *)e {
  if (done_) {
    RxInternalUtilRxJavaPluginUtils_handleExceptionWithNSException_(e);
    return;
  }
  done_ = true;
  [((RxSubscriber *) nil_chk(actual_)) onErrorWithNSException:e];
}

- (void)onCompleted {
  if (done_) {
    return;
  }
  [((RxSubscriber *) nil_chk(actual_)) onCompleted];
}

- (void)setProducerWithRxProducer:(id<RxProducer>)p {
  [((RxSubscriber *) nil_chk(actual_)) setProducerWithRxProducer:p];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxSubscriber:withRxFunctionsFunc1:", NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { "onNextWithId:", "V", 0x1, 2, 3, -1, 4, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "setProducerWithRxProducer:", "V", 0x1, 7, 8, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "actual_", "LRxSubscriber;", .constantValue.asLong = 0, 0x10, -1, -1, 9, -1 },
    { "mapper_", "LRxFunctionsFunc1;", .constantValue.asLong = 0, 0x10, -1, -1, 10, -1 },
    { "done_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LRxSubscriber;LRxFunctionsFunc1;", "(Lrx/Subscriber<-TR;>;Lrx/functions/Func1<-TT;+TR;>;)V", "onNext", "LNSObject;", "(TT;)V", "onError", "LNSException;", "setProducer", "LRxProducer;", "Lrx/Subscriber<-TR;>;", "Lrx/functions/Func1<-TT;+TR;>;", "LRxInternalOperatorsOperatorMap;", "<T:Ljava/lang/Object;R:Ljava/lang/Object;>Lrx/Subscriber<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorMap_MapSubscriber = { "MapSubscriber", "rx.internal.operators", ptrTable, methods, fields, 7, 0x18, 5, 3, 11, -1, -1, 12, -1 };
  return &_RxInternalOperatorsOperatorMap_MapSubscriber;
}

@end

void RxInternalOperatorsOperatorMap_MapSubscriber_initWithRxSubscriber_withRxFunctionsFunc1_(RxInternalOperatorsOperatorMap_MapSubscriber *self, RxSubscriber *actual, id<RxFunctionsFunc1> mapper) {
  RxSubscriber_init(self);
  self->actual_ = actual;
  self->mapper_ = mapper;
}

RxInternalOperatorsOperatorMap_MapSubscriber *new_RxInternalOperatorsOperatorMap_MapSubscriber_initWithRxSubscriber_withRxFunctionsFunc1_(RxSubscriber *actual, id<RxFunctionsFunc1> mapper) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorMap_MapSubscriber, initWithRxSubscriber_withRxFunctionsFunc1_, actual, mapper)
}

RxInternalOperatorsOperatorMap_MapSubscriber *create_RxInternalOperatorsOperatorMap_MapSubscriber_initWithRxSubscriber_withRxFunctionsFunc1_(RxSubscriber *actual, id<RxFunctionsFunc1> mapper) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorMap_MapSubscriber, initWithRxSubscriber_withRxFunctionsFunc1_, actual, mapper)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorMap_MapSubscriber)
