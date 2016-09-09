//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/producers/SingleProducer.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/concurrent/atomic/AtomicBoolean.h"
#include "rx/Subscriber.h"
#include "rx/exceptions/Exceptions.h"
#include "rx/internal/producers/SingleProducer.h"

/*!
 */
inline jlong RxInternalProducersSingleProducer_get_serialVersionUID();
#define RxInternalProducersSingleProducer_serialVersionUID -3353584923995471404LL
J2OBJC_STATIC_FIELD_CONSTANT(RxInternalProducersSingleProducer, serialVersionUID, jlong)

@implementation RxInternalProducersSingleProducer

- (instancetype)initWithRxSubscriber:(RxSubscriber *)child
                              withId:(id)value {
  RxInternalProducersSingleProducer_initWithRxSubscriber_withId_(self, child, value);
  return self;
}

- (void)requestWithLong:(jlong)n {
  if (n < 0) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"n >= 0 required");
  }
  if (n == 0) {
    return;
  }
  if ([self compareAndSetWithBoolean:false withBoolean:true]) {
    RxSubscriber *c = child_;
    id v = value_SingleProducer_;
    if ([((RxSubscriber *) nil_chk(c)) isUnsubscribed]) {
      return;
    }
    @try {
      [c onNextWithId:v];
    }
    @catch (NSException *e) {
      RxExceptionsExceptions_throwOrReportWithNSException_withRxObserver_withId_(e, c, v);
      return;
    }
    if ([c isUnsubscribed]) {
      return;
    }
    [c onCompleted];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxSubscriber:withId:", NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { "requestWithLong:", "V", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = RxInternalProducersSingleProducer_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "child_", "LRxSubscriber;", .constantValue.asLong = 0, 0x10, -1, -1, 4, -1 },
    { "value_SingleProducer_", "LNSObject;", .constantValue.asLong = 0, 0x10, 5, -1, 6, -1 },
  };
  static const void *ptrTable[] = { "LRxSubscriber;LNSObject;", "(Lrx/Subscriber<-TT;>;TT;)V", "request", "J", "Lrx/Subscriber<-TT;>;", "value", "TT;", "<T:Ljava/lang/Object;>Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/Producer;" };
  static const J2ObjcClassInfo _RxInternalProducersSingleProducer = { "SingleProducer", "rx.internal.producers", ptrTable, methods, fields, 7, 0x11, 2, 3, -1, -1, -1, 7, -1 };
  return &_RxInternalProducersSingleProducer;
}

@end

void RxInternalProducersSingleProducer_initWithRxSubscriber_withId_(RxInternalProducersSingleProducer *self, RxSubscriber *child, id value) {
  JavaUtilConcurrentAtomicAtomicBoolean_init(self);
  self->child_ = child;
  self->value_SingleProducer_ = value;
}

RxInternalProducersSingleProducer *new_RxInternalProducersSingleProducer_initWithRxSubscriber_withId_(RxSubscriber *child, id value) {
  J2OBJC_NEW_IMPL(RxInternalProducersSingleProducer, initWithRxSubscriber_withId_, child, value)
}

RxInternalProducersSingleProducer *create_RxInternalProducersSingleProducer_initWithRxSubscriber_withId_(RxSubscriber *child, id value) {
  J2OBJC_CREATE_IMPL(RxInternalProducersSingleProducer, initWithRxSubscriber_withId_, child, value)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalProducersSingleProducer)
