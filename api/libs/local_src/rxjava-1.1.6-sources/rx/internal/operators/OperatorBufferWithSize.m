//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorBufferWithSize.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/ArrayDeque.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "java/util/concurrent/atomic/AtomicBoolean.h"
#include "java/util/concurrent/atomic/AtomicLong.h"
#include "rx/Producer.h"
#include "rx/Subscriber.h"
#include "rx/exceptions/MissingBackpressureException.h"
#include "rx/internal/operators/BackpressureUtils.h"
#include "rx/internal/operators/OperatorBufferWithSize.h"

@interface RxInternalOperatorsOperatorBufferWithSize_BufferExact_$1 : NSObject < RxProducer > {
 @public
  RxInternalOperatorsOperatorBufferWithSize_BufferExact *this$0_;
}

- (void)requestWithLong:(jlong)n;

- (instancetype)initWithRxInternalOperatorsOperatorBufferWithSize_BufferExact:(RxInternalOperatorsOperatorBufferWithSize_BufferExact *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorBufferWithSize_BufferExact_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithSize_BufferExact_$1, this$0_, RxInternalOperatorsOperatorBufferWithSize_BufferExact *)

__attribute__((unused)) static void RxInternalOperatorsOperatorBufferWithSize_BufferExact_$1_initWithRxInternalOperatorsOperatorBufferWithSize_BufferExact_(RxInternalOperatorsOperatorBufferWithSize_BufferExact_$1 *self, RxInternalOperatorsOperatorBufferWithSize_BufferExact *outer$);

__attribute__((unused)) static RxInternalOperatorsOperatorBufferWithSize_BufferExact_$1 *new_RxInternalOperatorsOperatorBufferWithSize_BufferExact_$1_initWithRxInternalOperatorsOperatorBufferWithSize_BufferExact_(RxInternalOperatorsOperatorBufferWithSize_BufferExact *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorBufferWithSize_BufferExact_$1 *create_RxInternalOperatorsOperatorBufferWithSize_BufferExact_$1_initWithRxInternalOperatorsOperatorBufferWithSize_BufferExact_(RxInternalOperatorsOperatorBufferWithSize_BufferExact *outer$);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorBufferWithSize_BufferExact_$1)

@interface RxInternalOperatorsOperatorBufferWithSize_BufferSkip_BufferSkipProducer () {
 @public
  RxInternalOperatorsOperatorBufferWithSize_BufferSkip *this$0_;
}

@end

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithSize_BufferSkip_BufferSkipProducer, this$0_, RxInternalOperatorsOperatorBufferWithSize_BufferSkip *)

/*!
 */
inline jlong RxInternalOperatorsOperatorBufferWithSize_BufferSkip_BufferSkipProducer_get_serialVersionUID();
#define RxInternalOperatorsOperatorBufferWithSize_BufferSkip_BufferSkipProducer_serialVersionUID 3428177408082367154LL
J2OBJC_STATIC_FIELD_CONSTANT(RxInternalOperatorsOperatorBufferWithSize_BufferSkip_BufferSkipProducer, serialVersionUID, jlong)

@interface RxInternalOperatorsOperatorBufferWithSize_BufferOverlap_BufferOverlapProducer () {
 @public
  RxInternalOperatorsOperatorBufferWithSize_BufferOverlap *this$0_;
}

@end

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithSize_BufferOverlap_BufferOverlapProducer, this$0_, RxInternalOperatorsOperatorBufferWithSize_BufferOverlap *)

/*!
 */
inline jlong RxInternalOperatorsOperatorBufferWithSize_BufferOverlap_BufferOverlapProducer_get_serialVersionUID();
#define RxInternalOperatorsOperatorBufferWithSize_BufferOverlap_BufferOverlapProducer_serialVersionUID -4015894850868853147LL
J2OBJC_STATIC_FIELD_CONSTANT(RxInternalOperatorsOperatorBufferWithSize_BufferOverlap_BufferOverlapProducer, serialVersionUID, jlong)

@implementation RxInternalOperatorsOperatorBufferWithSize

- (instancetype)initWithInt:(jint)count
                    withInt:(jint)skip {
  RxInternalOperatorsOperatorBufferWithSize_initWithInt_withInt_(self, count, skip);
  return self;
}

- (RxSubscriber *)callWithId:(RxSubscriber *)child {
  if (skip_ == count_) {
    RxInternalOperatorsOperatorBufferWithSize_BufferExact *parent = new_RxInternalOperatorsOperatorBufferWithSize_BufferExact_initWithRxSubscriber_withInt_(child, count_);
    [((RxSubscriber *) nil_chk(child)) addWithRxSubscription:parent];
    [child setProducerWithRxProducer:[parent createProducer]];
    return parent;
  }
  if (skip_ > count_) {
    RxInternalOperatorsOperatorBufferWithSize_BufferSkip *parent = new_RxInternalOperatorsOperatorBufferWithSize_BufferSkip_initWithRxSubscriber_withInt_withInt_(child, count_, skip_);
    [((RxSubscriber *) nil_chk(child)) addWithRxSubscription:parent];
    [child setProducerWithRxProducer:[parent createProducer]];
    return parent;
  }
  RxInternalOperatorsOperatorBufferWithSize_BufferOverlap *parent = new_RxInternalOperatorsOperatorBufferWithSize_BufferOverlap_initWithRxSubscriber_withInt_withInt_(child, count_, skip_);
  [((RxSubscriber *) nil_chk(child)) addWithRxSubscription:parent];
  [child setProducerWithRxProducer:[parent createProducer]];
  return parent;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:", NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { "callWithId:", "LRxSubscriber;", 0x1, 1, 2, -1, 3, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "count_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "skip_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "II", "call", "LRxSubscriber;", "(Lrx/Subscriber<-Ljava/util/List<TT;>;>;)Lrx/Subscriber<-TT;>;", "LRxInternalOperatorsOperatorBufferWithSize_BufferExact;LRxInternalOperatorsOperatorBufferWithSize_BufferSkip;LRxInternalOperatorsOperatorBufferWithSize_BufferOverlap;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$Operator<Ljava/util/List<TT;>;TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorBufferWithSize = { "OperatorBufferWithSize", "rx.internal.operators", ptrTable, methods, fields, 7, 0x11, 2, 2, -1, 4, -1, 5, -1 };
  return &_RxInternalOperatorsOperatorBufferWithSize;
}

@end

void RxInternalOperatorsOperatorBufferWithSize_initWithInt_withInt_(RxInternalOperatorsOperatorBufferWithSize *self, jint count, jint skip) {
  NSObject_init(self);
  if (count <= 0) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"count must be greater than 0");
  }
  if (skip <= 0) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"skip must be greater than 0");
  }
  self->count_ = count;
  self->skip_ = skip;
}

RxInternalOperatorsOperatorBufferWithSize *new_RxInternalOperatorsOperatorBufferWithSize_initWithInt_withInt_(jint count, jint skip) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorBufferWithSize, initWithInt_withInt_, count, skip)
}

RxInternalOperatorsOperatorBufferWithSize *create_RxInternalOperatorsOperatorBufferWithSize_initWithInt_withInt_(jint count, jint skip) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorBufferWithSize, initWithInt_withInt_, count, skip)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorBufferWithSize)

@implementation RxInternalOperatorsOperatorBufferWithSize_BufferExact

- (instancetype)initWithRxSubscriber:(RxSubscriber *)actual
                             withInt:(jint)count {
  RxInternalOperatorsOperatorBufferWithSize_BufferExact_initWithRxSubscriber_withInt_(self, actual, count);
  return self;
}

- (void)onNextWithId:(id)t {
  id<JavaUtilList> b = buffer_;
  if (b == nil) {
    b = new_JavaUtilArrayList_initWithInt_(count_);
    buffer_ = b;
  }
  [b addWithId:t];
  if ([b size] == count_) {
    buffer_ = nil;
    [((RxSubscriber *) nil_chk(actual_)) onNextWithId:b];
  }
}

- (void)onErrorWithNSException:(NSException *)e {
  buffer_ = nil;
  [((RxSubscriber *) nil_chk(actual_)) onErrorWithNSException:e];
}

- (void)onCompleted {
  id<JavaUtilList> b = buffer_;
  if (b != nil) {
    [((RxSubscriber *) nil_chk(actual_)) onNextWithId:b];
  }
  [((RxSubscriber *) nil_chk(actual_)) onCompleted];
}

- (id<RxProducer>)createProducer {
  return new_RxInternalOperatorsOperatorBufferWithSize_BufferExact_$1_initWithRxInternalOperatorsOperatorBufferWithSize_BufferExact_(self);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxSubscriber:withInt:", NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { "onNextWithId:", "V", 0x1, 2, 3, -1, 4, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "createProducer", "LRxProducer;", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "actual_", "LRxSubscriber;", .constantValue.asLong = 0, 0x10, -1, -1, 7, -1 },
    { "count_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "buffer_", "LJavaUtilList;", .constantValue.asLong = 0, 0x0, -1, -1, 8, -1 },
  };
  static const void *ptrTable[] = { "LRxSubscriber;I", "(Lrx/Subscriber<-Ljava/util/List<TT;>;>;I)V", "onNext", "LNSObject;", "(TT;)V", "onError", "LNSException;", "Lrx/Subscriber<-Ljava/util/List<TT;>;>;", "Ljava/util/List<TT;>;", "LRxInternalOperatorsOperatorBufferWithSize;", "<T:Ljava/lang/Object;>Lrx/Subscriber<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorBufferWithSize_BufferExact = { "BufferExact", "rx.internal.operators", ptrTable, methods, fields, 7, 0x18, 5, 3, 9, -1, -1, 10, -1 };
  return &_RxInternalOperatorsOperatorBufferWithSize_BufferExact;
}

@end

void RxInternalOperatorsOperatorBufferWithSize_BufferExact_initWithRxSubscriber_withInt_(RxInternalOperatorsOperatorBufferWithSize_BufferExact *self, RxSubscriber *actual, jint count) {
  RxSubscriber_init(self);
  self->actual_ = actual;
  self->count_ = count;
  [self requestWithLong:0LL];
}

RxInternalOperatorsOperatorBufferWithSize_BufferExact *new_RxInternalOperatorsOperatorBufferWithSize_BufferExact_initWithRxSubscriber_withInt_(RxSubscriber *actual, jint count) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorBufferWithSize_BufferExact, initWithRxSubscriber_withInt_, actual, count)
}

RxInternalOperatorsOperatorBufferWithSize_BufferExact *create_RxInternalOperatorsOperatorBufferWithSize_BufferExact_initWithRxSubscriber_withInt_(RxSubscriber *actual, jint count) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorBufferWithSize_BufferExact, initWithRxSubscriber_withInt_, actual, count)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorBufferWithSize_BufferExact)

@implementation RxInternalOperatorsOperatorBufferWithSize_BufferExact_$1

- (void)requestWithLong:(jlong)n {
  if (n < 0LL) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$J", @"n >= required but it was ", n));
  }
  if (n != 0LL) {
    jlong u = RxInternalOperatorsBackpressureUtils_multiplyCapWithLong_withLong_(n, this$0_->count_);
    [this$0_ requestWithLong:u];
  }
}

- (instancetype)initWithRxInternalOperatorsOperatorBufferWithSize_BufferExact:(RxInternalOperatorsOperatorBufferWithSize_BufferExact *)outer$ {
  RxInternalOperatorsOperatorBufferWithSize_BufferExact_$1_initWithRxInternalOperatorsOperatorBufferWithSize_BufferExact_(self, outer$);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "requestWithLong:", "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { "initWithRxInternalOperatorsOperatorBufferWithSize_BufferExact:", NULL, 0x0, -1, 2, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LRxInternalOperatorsOperatorBufferWithSize_BufferExact;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "request", "J", "LRxInternalOperatorsOperatorBufferWithSize_BufferExact;", "createProducer" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorBufferWithSize_BufferExact_$1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 2, 1, 2, -1, 3, -1, -1 };
  return &_RxInternalOperatorsOperatorBufferWithSize_BufferExact_$1;
}

@end

void RxInternalOperatorsOperatorBufferWithSize_BufferExact_$1_initWithRxInternalOperatorsOperatorBufferWithSize_BufferExact_(RxInternalOperatorsOperatorBufferWithSize_BufferExact_$1 *self, RxInternalOperatorsOperatorBufferWithSize_BufferExact *outer$) {
  self->this$0_ = outer$;
  NSObject_init(self);
}

RxInternalOperatorsOperatorBufferWithSize_BufferExact_$1 *new_RxInternalOperatorsOperatorBufferWithSize_BufferExact_$1_initWithRxInternalOperatorsOperatorBufferWithSize_BufferExact_(RxInternalOperatorsOperatorBufferWithSize_BufferExact *outer$) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorBufferWithSize_BufferExact_$1, initWithRxInternalOperatorsOperatorBufferWithSize_BufferExact_, outer$)
}

RxInternalOperatorsOperatorBufferWithSize_BufferExact_$1 *create_RxInternalOperatorsOperatorBufferWithSize_BufferExact_$1_initWithRxInternalOperatorsOperatorBufferWithSize_BufferExact_(RxInternalOperatorsOperatorBufferWithSize_BufferExact *outer$) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorBufferWithSize_BufferExact_$1, initWithRxInternalOperatorsOperatorBufferWithSize_BufferExact_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorBufferWithSize_BufferExact_$1)

@implementation RxInternalOperatorsOperatorBufferWithSize_BufferSkip

- (instancetype)initWithRxSubscriber:(RxSubscriber *)actual
                             withInt:(jint)count
                             withInt:(jint)skip {
  RxInternalOperatorsOperatorBufferWithSize_BufferSkip_initWithRxSubscriber_withInt_withInt_(self, actual, count, skip);
  return self;
}

- (void)onNextWithId:(id)t {
  jlong i = index_;
  id<JavaUtilList> b = buffer_;
  if (i == 0) {
    b = new_JavaUtilArrayList_initWithInt_(count_);
    buffer_ = b;
  }
  i++;
  if (i == skip_) {
    index_ = 0;
  }
  else {
    index_ = i;
  }
  if (b != nil) {
    [b addWithId:t];
    if ([b size] == count_) {
      buffer_ = nil;
      [((RxSubscriber *) nil_chk(actual_)) onNextWithId:b];
    }
  }
}

- (void)onErrorWithNSException:(NSException *)e {
  buffer_ = nil;
  [((RxSubscriber *) nil_chk(actual_)) onErrorWithNSException:e];
}

- (void)onCompleted {
  id<JavaUtilList> b = buffer_;
  if (b != nil) {
    buffer_ = nil;
    [((RxSubscriber *) nil_chk(actual_)) onNextWithId:b];
  }
  [((RxSubscriber *) nil_chk(actual_)) onCompleted];
}

- (id<RxProducer>)createProducer {
  return new_RxInternalOperatorsOperatorBufferWithSize_BufferSkip_BufferSkipProducer_initWithRxInternalOperatorsOperatorBufferWithSize_BufferSkip_(self);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxSubscriber:withInt:withInt:", NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { "onNextWithId:", "V", 0x1, 2, 3, -1, 4, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "createProducer", "LRxProducer;", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "actual_", "LRxSubscriber;", .constantValue.asLong = 0, 0x10, -1, -1, 7, -1 },
    { "count_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "skip_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "index_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "buffer_", "LJavaUtilList;", .constantValue.asLong = 0, 0x0, -1, -1, 8, -1 },
  };
  static const void *ptrTable[] = { "LRxSubscriber;II", "(Lrx/Subscriber<-Ljava/util/List<TT;>;>;II)V", "onNext", "LNSObject;", "(TT;)V", "onError", "LNSException;", "Lrx/Subscriber<-Ljava/util/List<TT;>;>;", "Ljava/util/List<TT;>;", "LRxInternalOperatorsOperatorBufferWithSize;", "LRxInternalOperatorsOperatorBufferWithSize_BufferSkip_BufferSkipProducer;", "<T:Ljava/lang/Object;>Lrx/Subscriber<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorBufferWithSize_BufferSkip = { "BufferSkip", "rx.internal.operators", ptrTable, methods, fields, 7, 0x18, 5, 5, 9, 10, -1, 11, -1 };
  return &_RxInternalOperatorsOperatorBufferWithSize_BufferSkip;
}

@end

void RxInternalOperatorsOperatorBufferWithSize_BufferSkip_initWithRxSubscriber_withInt_withInt_(RxInternalOperatorsOperatorBufferWithSize_BufferSkip *self, RxSubscriber *actual, jint count, jint skip) {
  RxSubscriber_init(self);
  self->actual_ = actual;
  self->count_ = count;
  self->skip_ = skip;
  [self requestWithLong:0LL];
}

RxInternalOperatorsOperatorBufferWithSize_BufferSkip *new_RxInternalOperatorsOperatorBufferWithSize_BufferSkip_initWithRxSubscriber_withInt_withInt_(RxSubscriber *actual, jint count, jint skip) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorBufferWithSize_BufferSkip, initWithRxSubscriber_withInt_withInt_, actual, count, skip)
}

RxInternalOperatorsOperatorBufferWithSize_BufferSkip *create_RxInternalOperatorsOperatorBufferWithSize_BufferSkip_initWithRxSubscriber_withInt_withInt_(RxSubscriber *actual, jint count, jint skip) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorBufferWithSize_BufferSkip, initWithRxSubscriber_withInt_withInt_, actual, count, skip)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorBufferWithSize_BufferSkip)

@implementation RxInternalOperatorsOperatorBufferWithSize_BufferSkip_BufferSkipProducer

- (void)requestWithLong:(jlong)n {
  if (n < 0) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$J", @"n >= 0 required but it was ", n));
  }
  if (n != 0) {
    RxInternalOperatorsOperatorBufferWithSize_BufferSkip *parent = this$0_;
    if (![self get] && [self compareAndSetWithBoolean:false withBoolean:true]) {
      jlong u = RxInternalOperatorsBackpressureUtils_multiplyCapWithLong_withLong_(n, parent->count_);
      jlong v = RxInternalOperatorsBackpressureUtils_multiplyCapWithLong_withLong_(parent->skip_ - parent->count_, n - 1);
      jlong w = RxInternalOperatorsBackpressureUtils_addCapWithLong_withLong_(u, v);
      [parent requestWithLong:w];
    }
    else {
      jlong u = RxInternalOperatorsBackpressureUtils_multiplyCapWithLong_withLong_(n, parent->skip_);
      [parent requestWithLong:u];
    }
  }
}

- (instancetype)initWithRxInternalOperatorsOperatorBufferWithSize_BufferSkip:(RxInternalOperatorsOperatorBufferWithSize_BufferSkip *)outer$ {
  RxInternalOperatorsOperatorBufferWithSize_BufferSkip_BufferSkipProducer_initWithRxInternalOperatorsOperatorBufferWithSize_BufferSkip_(self, outer$);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "requestWithLong:", "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { "initWithRxInternalOperatorsOperatorBufferWithSize_BufferSkip:", NULL, 0x0, -1, 2, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LRxInternalOperatorsOperatorBufferWithSize_BufferSkip;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "serialVersionUID", "J", .constantValue.asLong = RxInternalOperatorsOperatorBufferWithSize_BufferSkip_BufferSkipProducer_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "request", "J", "LRxInternalOperatorsOperatorBufferWithSize_BufferSkip;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorBufferWithSize_BufferSkip_BufferSkipProducer = { "BufferSkipProducer", "rx.internal.operators", ptrTable, methods, fields, 7, 0x10, 2, 2, 2, -1, -1, -1, -1 };
  return &_RxInternalOperatorsOperatorBufferWithSize_BufferSkip_BufferSkipProducer;
}

@end

void RxInternalOperatorsOperatorBufferWithSize_BufferSkip_BufferSkipProducer_initWithRxInternalOperatorsOperatorBufferWithSize_BufferSkip_(RxInternalOperatorsOperatorBufferWithSize_BufferSkip_BufferSkipProducer *self, RxInternalOperatorsOperatorBufferWithSize_BufferSkip *outer$) {
  self->this$0_ = outer$;
  JavaUtilConcurrentAtomicAtomicBoolean_init(self);
}

RxInternalOperatorsOperatorBufferWithSize_BufferSkip_BufferSkipProducer *new_RxInternalOperatorsOperatorBufferWithSize_BufferSkip_BufferSkipProducer_initWithRxInternalOperatorsOperatorBufferWithSize_BufferSkip_(RxInternalOperatorsOperatorBufferWithSize_BufferSkip *outer$) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorBufferWithSize_BufferSkip_BufferSkipProducer, initWithRxInternalOperatorsOperatorBufferWithSize_BufferSkip_, outer$)
}

RxInternalOperatorsOperatorBufferWithSize_BufferSkip_BufferSkipProducer *create_RxInternalOperatorsOperatorBufferWithSize_BufferSkip_BufferSkipProducer_initWithRxInternalOperatorsOperatorBufferWithSize_BufferSkip_(RxInternalOperatorsOperatorBufferWithSize_BufferSkip *outer$) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorBufferWithSize_BufferSkip_BufferSkipProducer, initWithRxInternalOperatorsOperatorBufferWithSize_BufferSkip_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorBufferWithSize_BufferSkip_BufferSkipProducer)

@implementation RxInternalOperatorsOperatorBufferWithSize_BufferOverlap

- (instancetype)initWithRxSubscriber:(RxSubscriber *)actual
                             withInt:(jint)count
                             withInt:(jint)skip {
  RxInternalOperatorsOperatorBufferWithSize_BufferOverlap_initWithRxSubscriber_withInt_withInt_(self, actual, count, skip);
  return self;
}

- (void)onNextWithId:(id)t {
  jlong i = index_;
  if (i == 0) {
    id<JavaUtilList> b = new_JavaUtilArrayList_initWithInt_(count_);
    [((JavaUtilArrayDeque *) nil_chk(queue_)) offerWithId:b];
  }
  i++;
  if (i == skip_) {
    index_ = 0;
  }
  else {
    index_ = i;
  }
  for (id<JavaUtilList> __strong list in nil_chk(queue_)) {
    [((id<JavaUtilList>) nil_chk(list)) addWithId:t];
  }
  id<JavaUtilList> b = [queue_ peek];
  if (b != nil && [b size] == count_) {
    (void) [queue_ poll];
    produced_++;
    [((RxSubscriber *) nil_chk(actual_)) onNextWithId:b];
  }
}

- (void)onErrorWithNSException:(NSException *)e {
  [((JavaUtilArrayDeque *) nil_chk(queue_)) clear];
  [((RxSubscriber *) nil_chk(actual_)) onErrorWithNSException:e];
}

- (void)onCompleted {
  jlong p = produced_;
  if (p != 0LL) {
    if (p > [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(requested_BufferOverlap_)) get]) {
      [((RxSubscriber *) nil_chk(actual_)) onErrorWithNSException:new_RxExceptionsMissingBackpressureException_initWithNSString_(JreStrcat("$J", @"More produced than requested? ", p))];
      return;
    }
    [requested_BufferOverlap_ addAndGetWithLong:-p];
  }
  RxInternalOperatorsBackpressureUtils_postCompleteDoneWithJavaUtilConcurrentAtomicAtomicLong_withJavaUtilQueue_withRxSubscriber_(requested_BufferOverlap_, queue_, actual_);
}

- (id<RxProducer>)createProducer {
  return new_RxInternalOperatorsOperatorBufferWithSize_BufferOverlap_BufferOverlapProducer_initWithRxInternalOperatorsOperatorBufferWithSize_BufferOverlap_(self);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxSubscriber:withInt:withInt:", NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { "onNextWithId:", "V", 0x1, 2, 3, -1, 4, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "createProducer", "LRxProducer;", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "actual_", "LRxSubscriber;", .constantValue.asLong = 0, 0x10, -1, -1, 7, -1 },
    { "count_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "skip_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "index_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "queue_", "LJavaUtilArrayDeque;", .constantValue.asLong = 0, 0x10, -1, -1, 8, -1 },
    { "requested_BufferOverlap_", "LJavaUtilConcurrentAtomicAtomicLong;", .constantValue.asLong = 0, 0x10, 9, -1, -1, -1 },
    { "produced_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LRxSubscriber;II", "(Lrx/Subscriber<-Ljava/util/List<TT;>;>;II)V", "onNext", "LNSObject;", "(TT;)V", "onError", "LNSException;", "Lrx/Subscriber<-Ljava/util/List<TT;>;>;", "Ljava/util/ArrayDeque<Ljava/util/List<TT;>;>;", "requested", "LRxInternalOperatorsOperatorBufferWithSize;", "LRxInternalOperatorsOperatorBufferWithSize_BufferOverlap_BufferOverlapProducer;", "<T:Ljava/lang/Object;>Lrx/Subscriber<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorBufferWithSize_BufferOverlap = { "BufferOverlap", "rx.internal.operators", ptrTable, methods, fields, 7, 0x18, 5, 7, 10, 11, -1, 12, -1 };
  return &_RxInternalOperatorsOperatorBufferWithSize_BufferOverlap;
}

@end

void RxInternalOperatorsOperatorBufferWithSize_BufferOverlap_initWithRxSubscriber_withInt_withInt_(RxInternalOperatorsOperatorBufferWithSize_BufferOverlap *self, RxSubscriber *actual, jint count, jint skip) {
  RxSubscriber_init(self);
  self->actual_ = actual;
  self->count_ = count;
  self->skip_ = skip;
  self->queue_ = new_JavaUtilArrayDeque_init();
  self->requested_BufferOverlap_ = new_JavaUtilConcurrentAtomicAtomicLong_init();
  [self requestWithLong:0LL];
}

RxInternalOperatorsOperatorBufferWithSize_BufferOverlap *new_RxInternalOperatorsOperatorBufferWithSize_BufferOverlap_initWithRxSubscriber_withInt_withInt_(RxSubscriber *actual, jint count, jint skip) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorBufferWithSize_BufferOverlap, initWithRxSubscriber_withInt_withInt_, actual, count, skip)
}

RxInternalOperatorsOperatorBufferWithSize_BufferOverlap *create_RxInternalOperatorsOperatorBufferWithSize_BufferOverlap_initWithRxSubscriber_withInt_withInt_(RxSubscriber *actual, jint count, jint skip) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorBufferWithSize_BufferOverlap, initWithRxSubscriber_withInt_withInt_, actual, count, skip)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorBufferWithSize_BufferOverlap)

@implementation RxInternalOperatorsOperatorBufferWithSize_BufferOverlap_BufferOverlapProducer

- (void)requestWithLong:(jlong)n {
  RxInternalOperatorsOperatorBufferWithSize_BufferOverlap *parent = this$0_;
  if (RxInternalOperatorsBackpressureUtils_postCompleteRequestWithJavaUtilConcurrentAtomicAtomicLong_withLong_withJavaUtilQueue_withRxSubscriber_(parent->requested_BufferOverlap_, n, parent->queue_, parent->actual_)) {
    if (n != 0LL) {
      if (![self get] && [self compareAndSetWithBoolean:false withBoolean:true]) {
        jlong u = RxInternalOperatorsBackpressureUtils_multiplyCapWithLong_withLong_(parent->skip_, n - 1);
        jlong v = RxInternalOperatorsBackpressureUtils_addCapWithLong_withLong_(u, parent->count_);
        [parent requestWithLong:v];
      }
      else {
        jlong u = RxInternalOperatorsBackpressureUtils_multiplyCapWithLong_withLong_(parent->skip_, n);
        [parent requestWithLong:u];
      }
    }
  }
}

- (instancetype)initWithRxInternalOperatorsOperatorBufferWithSize_BufferOverlap:(RxInternalOperatorsOperatorBufferWithSize_BufferOverlap *)outer$ {
  RxInternalOperatorsOperatorBufferWithSize_BufferOverlap_BufferOverlapProducer_initWithRxInternalOperatorsOperatorBufferWithSize_BufferOverlap_(self, outer$);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "requestWithLong:", "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { "initWithRxInternalOperatorsOperatorBufferWithSize_BufferOverlap:", NULL, 0x0, -1, 2, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LRxInternalOperatorsOperatorBufferWithSize_BufferOverlap;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "serialVersionUID", "J", .constantValue.asLong = RxInternalOperatorsOperatorBufferWithSize_BufferOverlap_BufferOverlapProducer_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "request", "J", "LRxInternalOperatorsOperatorBufferWithSize_BufferOverlap;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorBufferWithSize_BufferOverlap_BufferOverlapProducer = { "BufferOverlapProducer", "rx.internal.operators", ptrTable, methods, fields, 7, 0x10, 2, 2, 2, -1, -1, -1, -1 };
  return &_RxInternalOperatorsOperatorBufferWithSize_BufferOverlap_BufferOverlapProducer;
}

@end

void RxInternalOperatorsOperatorBufferWithSize_BufferOverlap_BufferOverlapProducer_initWithRxInternalOperatorsOperatorBufferWithSize_BufferOverlap_(RxInternalOperatorsOperatorBufferWithSize_BufferOverlap_BufferOverlapProducer *self, RxInternalOperatorsOperatorBufferWithSize_BufferOverlap *outer$) {
  self->this$0_ = outer$;
  JavaUtilConcurrentAtomicAtomicBoolean_init(self);
}

RxInternalOperatorsOperatorBufferWithSize_BufferOverlap_BufferOverlapProducer *new_RxInternalOperatorsOperatorBufferWithSize_BufferOverlap_BufferOverlapProducer_initWithRxInternalOperatorsOperatorBufferWithSize_BufferOverlap_(RxInternalOperatorsOperatorBufferWithSize_BufferOverlap *outer$) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorBufferWithSize_BufferOverlap_BufferOverlapProducer, initWithRxInternalOperatorsOperatorBufferWithSize_BufferOverlap_, outer$)
}

RxInternalOperatorsOperatorBufferWithSize_BufferOverlap_BufferOverlapProducer *create_RxInternalOperatorsOperatorBufferWithSize_BufferOverlap_BufferOverlapProducer_initWithRxInternalOperatorsOperatorBufferWithSize_BufferOverlap_(RxInternalOperatorsOperatorBufferWithSize_BufferOverlap *outer$) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorBufferWithSize_BufferOverlap_BufferOverlapProducer, initWithRxInternalOperatorsOperatorBufferWithSize_BufferOverlap_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorBufferWithSize_BufferOverlap_BufferOverlapProducer)