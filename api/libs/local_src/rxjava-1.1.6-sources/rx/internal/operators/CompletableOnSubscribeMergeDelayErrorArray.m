//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/CompletableOnSubscribeMergeDelayErrorArray.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/NullPointerException.h"
#include "java/util/Queue.h"
#include "java/util/concurrent/ConcurrentLinkedQueue.h"
#include "java/util/concurrent/atomic/AtomicInteger.h"
#include "rx/Completable.h"
#include "rx/Subscription.h"
#include "rx/internal/operators/CompletableOnSubscribeMerge.h"
#include "rx/internal/operators/CompletableOnSubscribeMergeDelayErrorArray.h"
#include "rx/subscriptions/CompositeSubscription.h"

@interface RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1 : NSObject < RxCompletable_CompletableSubscriber > {
 @public
  RxSubscriptionsCompositeSubscription *val$set_;
  id<JavaUtilQueue> val$q_;
  JavaUtilConcurrentAtomicAtomicInteger *val$wip_;
  id<RxCompletable_CompletableSubscriber> val$s_;
}

- (void)onSubscribeWithRxSubscription:(id<RxSubscription>)d;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onCompleted;

- (void)tryTerminate;

- (instancetype)initWithRxSubscriptionsCompositeSubscription:(RxSubscriptionsCompositeSubscription *)capture$0
                                           withJavaUtilQueue:(id<JavaUtilQueue>)capture$1
                   withJavaUtilConcurrentAtomicAtomicInteger:(JavaUtilConcurrentAtomicAtomicInteger *)capture$2
                     withRxCompletable_CompletableSubscriber:(id<RxCompletable_CompletableSubscriber>)capture$3;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1, val$set_, RxSubscriptionsCompositeSubscription *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1, val$q_, id<JavaUtilQueue>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1, val$wip_, JavaUtilConcurrentAtomicAtomicInteger *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1, val$s_, id<RxCompletable_CompletableSubscriber>)

__attribute__((unused)) static void RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1_initWithRxSubscriptionsCompositeSubscription_withJavaUtilQueue_withJavaUtilConcurrentAtomicAtomicInteger_withRxCompletable_CompletableSubscriber_(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1 *self, RxSubscriptionsCompositeSubscription *capture$0, id<JavaUtilQueue> capture$1, JavaUtilConcurrentAtomicAtomicInteger *capture$2, id<RxCompletable_CompletableSubscriber> capture$3);

__attribute__((unused)) static RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1 *new_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1_initWithRxSubscriptionsCompositeSubscription_withJavaUtilQueue_withJavaUtilConcurrentAtomicAtomicInteger_withRxCompletable_CompletableSubscriber_(RxSubscriptionsCompositeSubscription *capture$0, id<JavaUtilQueue> capture$1, JavaUtilConcurrentAtomicAtomicInteger *capture$2, id<RxCompletable_CompletableSubscriber> capture$3) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1 *create_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1_initWithRxSubscriptionsCompositeSubscription_withJavaUtilQueue_withJavaUtilConcurrentAtomicAtomicInteger_withRxCompletable_CompletableSubscriber_(RxSubscriptionsCompositeSubscription *capture$0, id<JavaUtilQueue> capture$1, JavaUtilConcurrentAtomicAtomicInteger *capture$2, id<RxCompletable_CompletableSubscriber> capture$3);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1)

@implementation RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray

- (instancetype)initWithRxCompletableArray:(IOSObjectArray *)sources {
  RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_initWithRxCompletableArray_(self, sources);
  return self;
}

- (void)callWithId:(id<RxCompletable_CompletableSubscriber>)s {
  RxSubscriptionsCompositeSubscription *set = new_RxSubscriptionsCompositeSubscription_init();
  JavaUtilConcurrentAtomicAtomicInteger *wip = new_JavaUtilConcurrentAtomicAtomicInteger_initWithInt_(((IOSObjectArray *) nil_chk(sources_))->size_ + 1);
  id<JavaUtilQueue> q = new_JavaUtilConcurrentConcurrentLinkedQueue_init();
  [((id<RxCompletable_CompletableSubscriber>) nil_chk(s)) onSubscribeWithRxSubscription:set];
  {
    IOSObjectArray *a__ = sources_;
    RxCompletable * const *b__ = a__->buffer_;
    RxCompletable * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      RxCompletable *c = *b__++;
      if ([set isUnsubscribed]) {
        return;
      }
      if (c == nil) {
        [q offerWithId:new_JavaLangNullPointerException_initWithNSString_(@"A completable source is null")];
        [wip decrementAndGet];
        continue;
      }
      [c unsafeSubscribeWithRxCompletable_CompletableSubscriber:new_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1_initWithRxSubscriptionsCompositeSubscription_withJavaUtilQueue_withJavaUtilConcurrentAtomicAtomicInteger_withRxCompletable_CompletableSubscriber_(set, q, wip, s)];
    }
  }
  if ([wip decrementAndGet] == 0) {
    if ([q isEmpty]) {
      [s onCompleted];
    }
    else {
      [s onErrorWithNSException:RxInternalOperatorsCompletableOnSubscribeMerge_collectErrorsWithJavaUtilQueue_(q)];
    }
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxCompletableArray:", NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { "callWithId:", "V", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "sources_", "[LRxCompletable;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "[LRxCompletable;", "call", "LRxCompletable_CompletableSubscriber;" };
  static const J2ObjcClassInfo _RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray = { "CompletableOnSubscribeMergeDelayErrorArray", "rx.internal.operators", ptrTable, methods, fields, 7, 0x11, 2, 1, -1, -1, -1, -1, -1 };
  return &_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray;
}

@end

void RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_initWithRxCompletableArray_(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray *self, IOSObjectArray *sources) {
  NSObject_init(self);
  self->sources_ = sources;
}

RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray *new_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_initWithRxCompletableArray_(IOSObjectArray *sources) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray, initWithRxCompletableArray_, sources)
}

RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray *create_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_initWithRxCompletableArray_(IOSObjectArray *sources) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray, initWithRxCompletableArray_, sources)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray)

@implementation RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1

- (void)onSubscribeWithRxSubscription:(id<RxSubscription>)d {
  [((RxSubscriptionsCompositeSubscription *) nil_chk(val$set_)) addWithRxSubscription:d];
}

- (void)onErrorWithNSException:(NSException *)e {
  [((id<JavaUtilQueue>) nil_chk(val$q_)) offerWithId:e];
  [self tryTerminate];
}

- (void)onCompleted {
  [self tryTerminate];
}

- (void)tryTerminate {
  if ([((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(val$wip_)) decrementAndGet] == 0) {
    if ([((id<JavaUtilQueue>) nil_chk(val$q_)) isEmpty]) {
      [((id<RxCompletable_CompletableSubscriber>) nil_chk(val$s_)) onCompleted];
    }
    else {
      [((id<RxCompletable_CompletableSubscriber>) nil_chk(val$s_)) onErrorWithNSException:RxInternalOperatorsCompletableOnSubscribeMerge_collectErrorsWithJavaUtilQueue_(val$q_)];
    }
  }
}

- (instancetype)initWithRxSubscriptionsCompositeSubscription:(RxSubscriptionsCompositeSubscription *)capture$0
                                           withJavaUtilQueue:(id<JavaUtilQueue>)capture$1
                   withJavaUtilConcurrentAtomicAtomicInteger:(JavaUtilConcurrentAtomicAtomicInteger *)capture$2
                     withRxCompletable_CompletableSubscriber:(id<RxCompletable_CompletableSubscriber>)capture$3 {
  RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1_initWithRxSubscriptionsCompositeSubscription_withJavaUtilQueue_withJavaUtilConcurrentAtomicAtomicInteger_withRxCompletable_CompletableSubscriber_(self, capture$0, capture$1, capture$2, capture$3);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onSubscribeWithRxSubscription:", "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "tryTerminate", "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { "initWithRxSubscriptionsCompositeSubscription:withJavaUtilQueue:withJavaUtilConcurrentAtomicAtomicInteger:withRxCompletable_CompletableSubscriber:", NULL, 0x0, -1, 4, -1, 5, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$set_", "LRxSubscriptionsCompositeSubscription;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$q_", "LJavaUtilQueue;", .constantValue.asLong = 0, 0x1012, -1, -1, 6, -1 },
    { "val$wip_", "LJavaUtilConcurrentAtomicAtomicInteger;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$s_", "LRxCompletable_CompletableSubscriber;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "onSubscribe", "LRxSubscription;", "onError", "LNSException;", "LRxSubscriptionsCompositeSubscription;LJavaUtilQueue;LJavaUtilConcurrentAtomicAtomicInteger;LRxCompletable_CompletableSubscriber;", "(Lrx/subscriptions/CompositeSubscription;Ljava/util/Queue<Ljava/lang/Throwable;>;Ljava/util/concurrent/atomic/AtomicInteger;Lrx/Completable$CompletableSubscriber;)V", "Ljava/util/Queue<Ljava/lang/Throwable;>;", "LRxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray;", "callWithId:" };
  static const J2ObjcClassInfo _RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 5, 4, 7, -1, 8, -1, -1 };
  return &_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1;
}

@end

void RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1_initWithRxSubscriptionsCompositeSubscription_withJavaUtilQueue_withJavaUtilConcurrentAtomicAtomicInteger_withRxCompletable_CompletableSubscriber_(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1 *self, RxSubscriptionsCompositeSubscription *capture$0, id<JavaUtilQueue> capture$1, JavaUtilConcurrentAtomicAtomicInteger *capture$2, id<RxCompletable_CompletableSubscriber> capture$3) {
  self->val$set_ = capture$0;
  self->val$q_ = capture$1;
  self->val$wip_ = capture$2;
  self->val$s_ = capture$3;
  NSObject_init(self);
}

RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1 *new_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1_initWithRxSubscriptionsCompositeSubscription_withJavaUtilQueue_withJavaUtilConcurrentAtomicAtomicInteger_withRxCompletable_CompletableSubscriber_(RxSubscriptionsCompositeSubscription *capture$0, id<JavaUtilQueue> capture$1, JavaUtilConcurrentAtomicAtomicInteger *capture$2, id<RxCompletable_CompletableSubscriber> capture$3) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1, initWithRxSubscriptionsCompositeSubscription_withJavaUtilQueue_withJavaUtilConcurrentAtomicAtomicInteger_withRxCompletable_CompletableSubscriber_, capture$0, capture$1, capture$2, capture$3)
}

RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1 *create_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1_initWithRxSubscriptionsCompositeSubscription_withJavaUtilQueue_withJavaUtilConcurrentAtomicAtomicInteger_withRxCompletable_CompletableSubscriber_(RxSubscriptionsCompositeSubscription *capture$0, id<JavaUtilQueue> capture$1, JavaUtilConcurrentAtomicAtomicInteger *capture$2, id<RxCompletable_CompletableSubscriber> capture$3) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1, initWithRxSubscriptionsCompositeSubscription_withJavaUtilQueue_withJavaUtilConcurrentAtomicAtomicInteger_withRxCompletable_CompletableSubscriber_, capture$0, capture$1, capture$2, capture$3)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_$1)