//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OnSubscribeRange.java
//

#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/util/concurrent/atomic/AtomicLong.h"
#include "rx/Producer.h"
#include "rx/Subscriber.h"
#include "rx/internal/operators/BackpressureUtils.h"
#include "rx/internal/operators/OnSubscribeRange.h"

@interface RxInternalOperatorsOnSubscribeRange () {
 @public
  jint startIndex_;
  jint endIndex_;
}

@end

@interface RxInternalOperatorsOnSubscribeRange_RangeProducer : JavaUtilConcurrentAtomicAtomicLong < RxProducer > {
 @public
  RxSubscriber *childSubscriber_;
  jint endOfRange_;
  jlong currentIndex_;
}

- (instancetype)initWithRxSubscriber:(RxSubscriber *)childSubscriber
                             withInt:(jint)startIndex
                             withInt:(jint)endIndex;

- (void)requestWithLong:(jlong)requestedAmount;

/*!
 @brief Emits as many values as requested or remaining from the range, whichever is smaller.
 */
- (void)slowpathWithLong:(jlong)requestedAmount;

/*!
 @brief Emits all remaining values without decrementing the requested amount.
 */
- (void)fastpath;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeRange_RangeProducer)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeRange_RangeProducer, childSubscriber_, RxSubscriber *)

/*!
 */
inline jlong RxInternalOperatorsOnSubscribeRange_RangeProducer_get_serialVersionUID();
#define RxInternalOperatorsOnSubscribeRange_RangeProducer_serialVersionUID 4114392207069098388LL
J2OBJC_STATIC_FIELD_CONSTANT(RxInternalOperatorsOnSubscribeRange_RangeProducer, serialVersionUID, jlong)

__attribute__((unused)) static void RxInternalOperatorsOnSubscribeRange_RangeProducer_initWithRxSubscriber_withInt_withInt_(RxInternalOperatorsOnSubscribeRange_RangeProducer *self, RxSubscriber *childSubscriber, jint startIndex, jint endIndex);

__attribute__((unused)) static RxInternalOperatorsOnSubscribeRange_RangeProducer *new_RxInternalOperatorsOnSubscribeRange_RangeProducer_initWithRxSubscriber_withInt_withInt_(RxSubscriber *childSubscriber, jint startIndex, jint endIndex) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOnSubscribeRange_RangeProducer *create_RxInternalOperatorsOnSubscribeRange_RangeProducer_initWithRxSubscriber_withInt_withInt_(RxSubscriber *childSubscriber, jint startIndex, jint endIndex);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeRange_RangeProducer)

@implementation RxInternalOperatorsOnSubscribeRange

- (instancetype)initWithInt:(jint)start
                    withInt:(jint)end {
  RxInternalOperatorsOnSubscribeRange_initWithInt_withInt_(self, start, end);
  return self;
}

- (void)callWithId:(RxSubscriber *)childSubscriber {
  [((RxSubscriber *) nil_chk(childSubscriber)) setProducerWithRxProducer:new_RxInternalOperatorsOnSubscribeRange_RangeProducer_initWithRxSubscriber_withInt_withInt_(childSubscriber, startIndex_, endIndex_)];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:", NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { "callWithId:", "V", 0x1, 1, 2, -1, 3, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "startIndex_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "endIndex_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "II", "call", "LRxSubscriber;", "(Lrx/Subscriber<-Ljava/lang/Integer;>;)V", "LRxInternalOperatorsOnSubscribeRange_RangeProducer;", "Ljava/lang/Object;Lrx/Observable$OnSubscribe<Ljava/lang/Integer;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOnSubscribeRange = { "OnSubscribeRange", "rx.internal.operators", ptrTable, methods, fields, 7, 0x11, 2, 2, -1, 4, -1, 5, -1 };
  return &_RxInternalOperatorsOnSubscribeRange;
}

@end

void RxInternalOperatorsOnSubscribeRange_initWithInt_withInt_(RxInternalOperatorsOnSubscribeRange *self, jint start, jint end) {
  NSObject_init(self);
  self->startIndex_ = start;
  self->endIndex_ = end;
}

RxInternalOperatorsOnSubscribeRange *new_RxInternalOperatorsOnSubscribeRange_initWithInt_withInt_(jint start, jint end) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOnSubscribeRange, initWithInt_withInt_, start, end)
}

RxInternalOperatorsOnSubscribeRange *create_RxInternalOperatorsOnSubscribeRange_initWithInt_withInt_(jint start, jint end) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOnSubscribeRange, initWithInt_withInt_, start, end)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOnSubscribeRange)

@implementation RxInternalOperatorsOnSubscribeRange_RangeProducer

- (instancetype)initWithRxSubscriber:(RxSubscriber *)childSubscriber
                             withInt:(jint)startIndex
                             withInt:(jint)endIndex {
  RxInternalOperatorsOnSubscribeRange_RangeProducer_initWithRxSubscriber_withInt_withInt_(self, childSubscriber, startIndex, endIndex);
  return self;
}

- (void)requestWithLong:(jlong)requestedAmount {
  if ([self get] == JavaLangLong_MAX_VALUE) {
    return;
  }
  if (requestedAmount == JavaLangLong_MAX_VALUE && [self compareAndSetWithLong:0LL withLong:JavaLangLong_MAX_VALUE]) {
    [self fastpath];
  }
  else if (requestedAmount > 0LL) {
    jlong c = RxInternalOperatorsBackpressureUtils_getAndAddRequestWithJavaUtilConcurrentAtomicAtomicLong_withLong_(self, requestedAmount);
    if (c == 0LL) {
      [self slowpathWithLong:requestedAmount];
    }
  }
}

- (void)slowpathWithLong:(jlong)requestedAmount {
  jlong emitted = 0LL;
  jlong endIndex = endOfRange_ + 1LL;
  jlong index = currentIndex_;
  RxSubscriber *childSubscriber = self->childSubscriber_;
  for (; ; ) {
    while (emitted != requestedAmount && index != endIndex) {
      if ([((RxSubscriber *) nil_chk(childSubscriber)) isUnsubscribed]) {
        return;
      }
      [childSubscriber onNextWithId:JavaLangInteger_valueOfWithInt_((jint) index)];
      index++;
      emitted++;
    }
    if ([((RxSubscriber *) nil_chk(childSubscriber)) isUnsubscribed]) {
      return;
    }
    if (index == endIndex) {
      [childSubscriber onCompleted];
      return;
    }
    requestedAmount = [self get];
    if (requestedAmount == emitted) {
      currentIndex_ = index;
      requestedAmount = [self addAndGetWithLong:-emitted];
      if (requestedAmount == 0LL) {
        break;
      }
      emitted = 0LL;
    }
  }
}

- (void)fastpath {
  jlong endIndex = self->endOfRange_ + 1LL;
  RxSubscriber *childSubscriber = self->childSubscriber_;
  for (jlong index = currentIndex_; index != endIndex; index++) {
    if ([((RxSubscriber *) nil_chk(childSubscriber)) isUnsubscribed]) {
      return;
    }
    [childSubscriber onNextWithId:JavaLangInteger_valueOfWithInt_((jint) index)];
  }
  if (![((RxSubscriber *) nil_chk(childSubscriber)) isUnsubscribed]) {
    [childSubscriber onCompleted];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxSubscriber:withInt:withInt:", NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { "requestWithLong:", "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { "slowpathWithLong:", "V", 0x0, 4, 3, -1, -1, -1, -1 },
    { "fastpath", "V", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = RxInternalOperatorsOnSubscribeRange_RangeProducer_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "childSubscriber_", "LRxSubscriber;", .constantValue.asLong = 0, 0x12, -1, -1, 5, -1 },
    { "endOfRange_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "currentIndex_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LRxSubscriber;II", "(Lrx/Subscriber<-Ljava/lang/Integer;>;II)V", "request", "J", "slowpath", "Lrx/Subscriber<-Ljava/lang/Integer;>;", "LRxInternalOperatorsOnSubscribeRange;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOnSubscribeRange_RangeProducer = { "RangeProducer", "rx.internal.operators", ptrTable, methods, fields, 7, 0x1a, 4, 4, 6, -1, -1, -1, -1 };
  return &_RxInternalOperatorsOnSubscribeRange_RangeProducer;
}

@end

void RxInternalOperatorsOnSubscribeRange_RangeProducer_initWithRxSubscriber_withInt_withInt_(RxInternalOperatorsOnSubscribeRange_RangeProducer *self, RxSubscriber *childSubscriber, jint startIndex, jint endIndex) {
  JavaUtilConcurrentAtomicAtomicLong_init(self);
  self->childSubscriber_ = childSubscriber;
  self->currentIndex_ = startIndex;
  self->endOfRange_ = endIndex;
}

RxInternalOperatorsOnSubscribeRange_RangeProducer *new_RxInternalOperatorsOnSubscribeRange_RangeProducer_initWithRxSubscriber_withInt_withInt_(RxSubscriber *childSubscriber, jint startIndex, jint endIndex) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOnSubscribeRange_RangeProducer, initWithRxSubscriber_withInt_withInt_, childSubscriber, startIndex, endIndex)
}

RxInternalOperatorsOnSubscribeRange_RangeProducer *create_RxInternalOperatorsOnSubscribeRange_RangeProducer_initWithRxSubscriber_withInt_withInt_(RxSubscriber *childSubscriber, jint startIndex, jint endIndex) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOnSubscribeRange_RangeProducer, initWithRxSubscriber_withInt_withInt_, childSubscriber, startIndex, endIndex)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOnSubscribeRange_RangeProducer)