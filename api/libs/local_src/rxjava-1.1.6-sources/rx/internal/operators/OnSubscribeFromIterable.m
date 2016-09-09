//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OnSubscribeFromIterable.java
//

#include "J2ObjC_source.h"
#include "java/lang/Iterable.h"
#include "java/lang/Long.h"
#include "java/lang/NullPointerException.h"
#include "java/util/Iterator.h"
#include "java/util/concurrent/atomic/AtomicLong.h"
#include "rx/Subscriber.h"
#include "rx/exceptions/Exceptions.h"
#include "rx/internal/operators/BackpressureUtils.h"
#include "rx/internal/operators/OnSubscribeFromIterable.h"

@interface RxInternalOperatorsOnSubscribeFromIterable_IterableProducer () {
 @public
  RxSubscriber *o_;
  id<JavaUtilIterator> it_;
}

@end

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeFromIterable_IterableProducer, o_, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeFromIterable_IterableProducer, it_, id<JavaUtilIterator>)

/*!
 */
inline jlong RxInternalOperatorsOnSubscribeFromIterable_IterableProducer_get_serialVersionUID();
#define RxInternalOperatorsOnSubscribeFromIterable_IterableProducer_serialVersionUID -8730475647105475802LL
J2OBJC_STATIC_FIELD_CONSTANT(RxInternalOperatorsOnSubscribeFromIterable_IterableProducer, serialVersionUID, jlong)

@implementation RxInternalOperatorsOnSubscribeFromIterable

- (instancetype)initWithJavaLangIterable:(id<JavaLangIterable>)iterable {
  RxInternalOperatorsOnSubscribeFromIterable_initWithJavaLangIterable_(self, iterable);
  return self;
}

- (void)callWithId:(RxSubscriber *)o {
  id<JavaUtilIterator> it;
  jboolean b;
  @try {
    it = [((id<JavaLangIterable>) nil_chk(is_)) iterator];
    b = [((id<JavaUtilIterator>) nil_chk(it)) hasNext];
  }
  @catch (NSException *ex) {
    RxExceptionsExceptions_throwOrReportWithNSException_withRxObserver_(ex, o);
    return;
  }
  if (![((RxSubscriber *) nil_chk(o)) isUnsubscribed]) {
    if (!b) {
      [o onCompleted];
    }
    else {
      [o setProducerWithRxProducer:new_RxInternalOperatorsOnSubscribeFromIterable_IterableProducer_initWithRxSubscriber_withJavaUtilIterator_(o, it)];
    }
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaLangIterable:", NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { "callWithId:", "V", 0x1, 2, 3, -1, 4, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "is_", "LJavaLangIterable;", .constantValue.asLong = 0, 0x10, -1, -1, 5, -1 },
  };
  static const void *ptrTable[] = { "LJavaLangIterable;", "(Ljava/lang/Iterable<+TT;>;)V", "call", "LRxSubscriber;", "(Lrx/Subscriber<-TT;>;)V", "Ljava/lang/Iterable<+TT;>;", "LRxInternalOperatorsOnSubscribeFromIterable_IterableProducer;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$OnSubscribe<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOnSubscribeFromIterable = { "OnSubscribeFromIterable", "rx.internal.operators", ptrTable, methods, fields, 7, 0x11, 2, 1, -1, 6, -1, 7, -1 };
  return &_RxInternalOperatorsOnSubscribeFromIterable;
}

@end

void RxInternalOperatorsOnSubscribeFromIterable_initWithJavaLangIterable_(RxInternalOperatorsOnSubscribeFromIterable *self, id<JavaLangIterable> iterable) {
  NSObject_init(self);
  if (iterable == nil) {
    @throw new_JavaLangNullPointerException_initWithNSString_(@"iterable must not be null");
  }
  self->is_ = iterable;
}

RxInternalOperatorsOnSubscribeFromIterable *new_RxInternalOperatorsOnSubscribeFromIterable_initWithJavaLangIterable_(id<JavaLangIterable> iterable) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOnSubscribeFromIterable, initWithJavaLangIterable_, iterable)
}

RxInternalOperatorsOnSubscribeFromIterable *create_RxInternalOperatorsOnSubscribeFromIterable_initWithJavaLangIterable_(id<JavaLangIterable> iterable) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOnSubscribeFromIterable, initWithJavaLangIterable_, iterable)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOnSubscribeFromIterable)

@implementation RxInternalOperatorsOnSubscribeFromIterable_IterableProducer

- (instancetype)initWithRxSubscriber:(RxSubscriber *)o
                withJavaUtilIterator:(id<JavaUtilIterator>)it {
  RxInternalOperatorsOnSubscribeFromIterable_IterableProducer_initWithRxSubscriber_withJavaUtilIterator_(self, o, it);
  return self;
}

- (void)requestWithLong:(jlong)n {
  if ([self get] == JavaLangLong_MAX_VALUE) {
    return;
  }
  if (n == JavaLangLong_MAX_VALUE && [self compareAndSetWithLong:0 withLong:JavaLangLong_MAX_VALUE]) {
    [self fastpath];
  }
  else if (n > 0 && RxInternalOperatorsBackpressureUtils_getAndAddRequestWithJavaUtilConcurrentAtomicAtomicLong_withLong_(self, n) == 0LL) {
    [self slowpathWithLong:n];
  }
}

- (void)slowpathWithLong:(jlong)n {
  RxSubscriber *o = self->o_;
  id<JavaUtilIterator> it = self->it_;
  jlong r = n;
  jlong e = 0;
  for (; ; ) {
    while (e != r) {
      if ([((RxSubscriber *) nil_chk(o)) isUnsubscribed]) {
        return;
      }
      id value;
      @try {
        value = [((id<JavaUtilIterator>) nil_chk(it)) next];
      }
      @catch (NSException *ex) {
        RxExceptionsExceptions_throwOrReportWithNSException_withRxObserver_(ex, o);
        return;
      }
      [o onNextWithId:value];
      if ([o isUnsubscribed]) {
        return;
      }
      jboolean b;
      @try {
        b = [it hasNext];
      }
      @catch (NSException *ex) {
        RxExceptionsExceptions_throwOrReportWithNSException_withRxObserver_(ex, o);
        return;
      }
      if (!b) {
        if (![o isUnsubscribed]) {
          [o onCompleted];
        }
        return;
      }
      e++;
    }
    r = [self get];
    if (e == r) {
      r = RxInternalOperatorsBackpressureUtils_producedWithJavaUtilConcurrentAtomicAtomicLong_withLong_(self, e);
      if (r == 0LL) {
        break;
      }
      e = 0LL;
    }
  }
}

- (void)fastpath {
  RxSubscriber *o = self->o_;
  id<JavaUtilIterator> it = self->it_;
  for (; ; ) {
    if ([((RxSubscriber *) nil_chk(o)) isUnsubscribed]) {
      return;
    }
    id value;
    @try {
      value = [((id<JavaUtilIterator>) nil_chk(it)) next];
    }
    @catch (NSException *ex) {
      RxExceptionsExceptions_throwOrReportWithNSException_withRxObserver_(ex, o);
      return;
    }
    [o onNextWithId:value];
    if ([o isUnsubscribed]) {
      return;
    }
    jboolean b;
    @try {
      b = [it hasNext];
    }
    @catch (NSException *ex) {
      RxExceptionsExceptions_throwOrReportWithNSException_withRxObserver_(ex, o);
      return;
    }
    if (!b) {
      if (![o isUnsubscribed]) {
        [o onCompleted];
      }
      return;
    }
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxSubscriber:withJavaUtilIterator:", NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { "requestWithLong:", "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { "slowpathWithLong:", "V", 0x0, 4, 3, -1, -1, -1, -1 },
    { "fastpath", "V", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = RxInternalOperatorsOnSubscribeFromIterable_IterableProducer_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "o_", "LRxSubscriber;", .constantValue.asLong = 0, 0x12, -1, -1, 5, -1 },
    { "it_", "LJavaUtilIterator;", .constantValue.asLong = 0, 0x12, -1, -1, 6, -1 },
  };
  static const void *ptrTable[] = { "LRxSubscriber;LJavaUtilIterator;", "(Lrx/Subscriber<-TT;>;Ljava/util/Iterator<+TT;>;)V", "request", "J", "slowpath", "Lrx/Subscriber<-TT;>;", "Ljava/util/Iterator<+TT;>;", "LRxInternalOperatorsOnSubscribeFromIterable;", "<T:Ljava/lang/Object;>Ljava/util/concurrent/atomic/AtomicLong;Lrx/Producer;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOnSubscribeFromIterable_IterableProducer = { "IterableProducer", "rx.internal.operators", ptrTable, methods, fields, 7, 0x18, 4, 3, 7, -1, -1, 8, -1 };
  return &_RxInternalOperatorsOnSubscribeFromIterable_IterableProducer;
}

@end

void RxInternalOperatorsOnSubscribeFromIterable_IterableProducer_initWithRxSubscriber_withJavaUtilIterator_(RxInternalOperatorsOnSubscribeFromIterable_IterableProducer *self, RxSubscriber *o, id<JavaUtilIterator> it) {
  JavaUtilConcurrentAtomicAtomicLong_init(self);
  self->o_ = o;
  self->it_ = it;
}

RxInternalOperatorsOnSubscribeFromIterable_IterableProducer *new_RxInternalOperatorsOnSubscribeFromIterable_IterableProducer_initWithRxSubscriber_withJavaUtilIterator_(RxSubscriber *o, id<JavaUtilIterator> it) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOnSubscribeFromIterable_IterableProducer, initWithRxSubscriber_withJavaUtilIterator_, o, it)
}

RxInternalOperatorsOnSubscribeFromIterable_IterableProducer *create_RxInternalOperatorsOnSubscribeFromIterable_IterableProducer_initWithRxSubscriber_withJavaUtilIterator_(RxSubscriber *o, id<JavaUtilIterator> it) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOnSubscribeFromIterable_IterableProducer, initWithRxSubscriber_withJavaUtilIterator_, o, it)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOnSubscribeFromIterable_IterableProducer)