//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/CompletableOnSubscribeMergeIterable.java
//

#include "J2ObjC_source.h"
#include "java/lang/Iterable.h"
#include "java/lang/NullPointerException.h"
#include "java/util/Iterator.h"
#include "java/util/concurrent/atomic/AtomicBoolean.h"
#include "java/util/concurrent/atomic/AtomicInteger.h"
#include "rx/Completable.h"
#include "rx/Subscription.h"
#include "rx/internal/operators/CompletableOnSubscribeMergeIterable.h"
#include "rx/plugins/RxJavaErrorHandler.h"
#include "rx/plugins/RxJavaPlugins.h"
#include "rx/subscriptions/CompositeSubscription.h"

@interface RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1 : NSObject < RxCompletable_CompletableSubscriber > {
 @public
  RxSubscriptionsCompositeSubscription *val$set_;
  JavaUtilConcurrentAtomicAtomicBoolean *val$once_;
  id<RxCompletable_CompletableSubscriber> val$s_;
  JavaUtilConcurrentAtomicAtomicInteger *val$wip_;
}

- (void)onSubscribeWithRxSubscription:(id<RxSubscription>)d;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onCompleted;

- (instancetype)initWithRxSubscriptionsCompositeSubscription:(RxSubscriptionsCompositeSubscription *)capture$0
                   withJavaUtilConcurrentAtomicAtomicBoolean:(JavaUtilConcurrentAtomicAtomicBoolean *)capture$1
                     withRxCompletable_CompletableSubscriber:(id<RxCompletable_CompletableSubscriber>)capture$2
                   withJavaUtilConcurrentAtomicAtomicInteger:(JavaUtilConcurrentAtomicAtomicInteger *)capture$3;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1, val$set_, RxSubscriptionsCompositeSubscription *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1, val$once_, JavaUtilConcurrentAtomicAtomicBoolean *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1, val$s_, id<RxCompletable_CompletableSubscriber>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1, val$wip_, JavaUtilConcurrentAtomicAtomicInteger *)

__attribute__((unused)) static void RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1_initWithRxSubscriptionsCompositeSubscription_withJavaUtilConcurrentAtomicAtomicBoolean_withRxCompletable_CompletableSubscriber_withJavaUtilConcurrentAtomicAtomicInteger_(RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1 *self, RxSubscriptionsCompositeSubscription *capture$0, JavaUtilConcurrentAtomicAtomicBoolean *capture$1, id<RxCompletable_CompletableSubscriber> capture$2, JavaUtilConcurrentAtomicAtomicInteger *capture$3);

__attribute__((unused)) static RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1 *new_RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1_initWithRxSubscriptionsCompositeSubscription_withJavaUtilConcurrentAtomicAtomicBoolean_withRxCompletable_CompletableSubscriber_withJavaUtilConcurrentAtomicAtomicInteger_(RxSubscriptionsCompositeSubscription *capture$0, JavaUtilConcurrentAtomicAtomicBoolean *capture$1, id<RxCompletable_CompletableSubscriber> capture$2, JavaUtilConcurrentAtomicAtomicInteger *capture$3) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1 *create_RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1_initWithRxSubscriptionsCompositeSubscription_withJavaUtilConcurrentAtomicAtomicBoolean_withRxCompletable_CompletableSubscriber_withJavaUtilConcurrentAtomicAtomicInteger_(RxSubscriptionsCompositeSubscription *capture$0, JavaUtilConcurrentAtomicAtomicBoolean *capture$1, id<RxCompletable_CompletableSubscriber> capture$2, JavaUtilConcurrentAtomicAtomicInteger *capture$3);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1)

@implementation RxInternalOperatorsCompletableOnSubscribeMergeIterable

- (instancetype)initWithJavaLangIterable:(id<JavaLangIterable>)sources {
  RxInternalOperatorsCompletableOnSubscribeMergeIterable_initWithJavaLangIterable_(self, sources);
  return self;
}

- (void)callWithId:(id<RxCompletable_CompletableSubscriber>)s {
  RxSubscriptionsCompositeSubscription *set = new_RxSubscriptionsCompositeSubscription_init();
  JavaUtilConcurrentAtomicAtomicInteger *wip = new_JavaUtilConcurrentAtomicAtomicInteger_initWithInt_(1);
  JavaUtilConcurrentAtomicAtomicBoolean *once = new_JavaUtilConcurrentAtomicAtomicBoolean_init();
  [((id<RxCompletable_CompletableSubscriber>) nil_chk(s)) onSubscribeWithRxSubscription:set];
  id<JavaUtilIterator> iterator;
  @try {
    iterator = [((id<JavaLangIterable>) nil_chk(sources_)) iterator];
  }
  @catch (NSException *e) {
    [s onErrorWithNSException:e];
    return;
  }
  if (iterator == nil) {
    [s onErrorWithNSException:new_JavaLangNullPointerException_initWithNSString_(@"The source iterator returned is null")];
    return;
  }
  for (; ; ) {
    if ([set isUnsubscribed]) {
      return;
    }
    jboolean b;
    @try {
      b = [iterator hasNext];
    }
    @catch (NSException *e) {
      [set unsubscribe];
      if ([once compareAndSetWithBoolean:false withBoolean:true]) {
        [s onErrorWithNSException:e];
      }
      else {
        [((RxPluginsRxJavaErrorHandler *) nil_chk([((RxPluginsRxJavaPlugins *) nil_chk(RxPluginsRxJavaPlugins_getInstance())) getErrorHandler])) handleErrorWithNSException:e];
      }
      return;
    }
    if (!b) {
      break;
    }
    if ([set isUnsubscribed]) {
      return;
    }
    RxCompletable *c;
    @try {
      c = [iterator next];
    }
    @catch (NSException *e) {
      [set unsubscribe];
      if ([once compareAndSetWithBoolean:false withBoolean:true]) {
        [s onErrorWithNSException:e];
      }
      else {
        [((RxPluginsRxJavaErrorHandler *) nil_chk([((RxPluginsRxJavaPlugins *) nil_chk(RxPluginsRxJavaPlugins_getInstance())) getErrorHandler])) handleErrorWithNSException:e];
      }
      return;
    }
    if ([set isUnsubscribed]) {
      return;
    }
    if (c == nil) {
      [set unsubscribe];
      JavaLangNullPointerException *npe = new_JavaLangNullPointerException_initWithNSString_(@"A completable source is null");
      if ([once compareAndSetWithBoolean:false withBoolean:true]) {
        [s onErrorWithNSException:npe];
      }
      else {
        [((RxPluginsRxJavaErrorHandler *) nil_chk([((RxPluginsRxJavaPlugins *) nil_chk(RxPluginsRxJavaPlugins_getInstance())) getErrorHandler])) handleErrorWithNSException:npe];
      }
      return;
    }
    [wip getAndIncrement];
    [c unsafeSubscribeWithRxCompletable_CompletableSubscriber:new_RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1_initWithRxSubscriptionsCompositeSubscription_withJavaUtilConcurrentAtomicAtomicBoolean_withRxCompletable_CompletableSubscriber_withJavaUtilConcurrentAtomicAtomicInteger_(set, once, s, wip)];
  }
  if ([wip decrementAndGet] == 0) {
    if ([once compareAndSetWithBoolean:false withBoolean:true]) {
      [s onCompleted];
    }
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaLangIterable:", NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { "callWithId:", "V", 0x1, 2, 3, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "sources_", "LJavaLangIterable;", .constantValue.asLong = 0, 0x10, -1, -1, 4, -1 },
  };
  static const void *ptrTable[] = { "LJavaLangIterable;", "(Ljava/lang/Iterable<+Lrx/Completable;>;)V", "call", "LRxCompletable_CompletableSubscriber;", "Ljava/lang/Iterable<+Lrx/Completable;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsCompletableOnSubscribeMergeIterable = { "CompletableOnSubscribeMergeIterable", "rx.internal.operators", ptrTable, methods, fields, 7, 0x11, 2, 1, -1, -1, -1, -1, -1 };
  return &_RxInternalOperatorsCompletableOnSubscribeMergeIterable;
}

@end

void RxInternalOperatorsCompletableOnSubscribeMergeIterable_initWithJavaLangIterable_(RxInternalOperatorsCompletableOnSubscribeMergeIterable *self, id<JavaLangIterable> sources) {
  NSObject_init(self);
  self->sources_ = sources;
}

RxInternalOperatorsCompletableOnSubscribeMergeIterable *new_RxInternalOperatorsCompletableOnSubscribeMergeIterable_initWithJavaLangIterable_(id<JavaLangIterable> sources) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsCompletableOnSubscribeMergeIterable, initWithJavaLangIterable_, sources)
}

RxInternalOperatorsCompletableOnSubscribeMergeIterable *create_RxInternalOperatorsCompletableOnSubscribeMergeIterable_initWithJavaLangIterable_(id<JavaLangIterable> sources) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsCompletableOnSubscribeMergeIterable, initWithJavaLangIterable_, sources)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsCompletableOnSubscribeMergeIterable)

@implementation RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1

- (void)onSubscribeWithRxSubscription:(id<RxSubscription>)d {
  [((RxSubscriptionsCompositeSubscription *) nil_chk(val$set_)) addWithRxSubscription:d];
}

- (void)onErrorWithNSException:(NSException *)e {
  [((RxSubscriptionsCompositeSubscription *) nil_chk(val$set_)) unsubscribe];
  if ([((JavaUtilConcurrentAtomicAtomicBoolean *) nil_chk(val$once_)) compareAndSetWithBoolean:false withBoolean:true]) {
    [((id<RxCompletable_CompletableSubscriber>) nil_chk(val$s_)) onErrorWithNSException:e];
  }
  else {
    [((RxPluginsRxJavaErrorHandler *) nil_chk([((RxPluginsRxJavaPlugins *) nil_chk(RxPluginsRxJavaPlugins_getInstance())) getErrorHandler])) handleErrorWithNSException:e];
  }
}

- (void)onCompleted {
  if ([((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(val$wip_)) decrementAndGet] == 0) {
    if ([((JavaUtilConcurrentAtomicAtomicBoolean *) nil_chk(val$once_)) compareAndSetWithBoolean:false withBoolean:true]) {
      [((id<RxCompletable_CompletableSubscriber>) nil_chk(val$s_)) onCompleted];
    }
  }
}

- (instancetype)initWithRxSubscriptionsCompositeSubscription:(RxSubscriptionsCompositeSubscription *)capture$0
                   withJavaUtilConcurrentAtomicAtomicBoolean:(JavaUtilConcurrentAtomicAtomicBoolean *)capture$1
                     withRxCompletable_CompletableSubscriber:(id<RxCompletable_CompletableSubscriber>)capture$2
                   withJavaUtilConcurrentAtomicAtomicInteger:(JavaUtilConcurrentAtomicAtomicInteger *)capture$3 {
  RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1_initWithRxSubscriptionsCompositeSubscription_withJavaUtilConcurrentAtomicAtomicBoolean_withRxCompletable_CompletableSubscriber_withJavaUtilConcurrentAtomicAtomicInteger_(self, capture$0, capture$1, capture$2, capture$3);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onSubscribeWithRxSubscription:", "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "initWithRxSubscriptionsCompositeSubscription:withJavaUtilConcurrentAtomicAtomicBoolean:withRxCompletable_CompletableSubscriber:withJavaUtilConcurrentAtomicAtomicInteger:", NULL, 0x0, -1, 4, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$set_", "LRxSubscriptionsCompositeSubscription;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$once_", "LJavaUtilConcurrentAtomicAtomicBoolean;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$s_", "LRxCompletable_CompletableSubscriber;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$wip_", "LJavaUtilConcurrentAtomicAtomicInteger;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "onSubscribe", "LRxSubscription;", "onError", "LNSException;", "LRxSubscriptionsCompositeSubscription;LJavaUtilConcurrentAtomicAtomicBoolean;LRxCompletable_CompletableSubscriber;LJavaUtilConcurrentAtomicAtomicInteger;", "LRxInternalOperatorsCompletableOnSubscribeMergeIterable;", "callWithId:" };
  static const J2ObjcClassInfo _RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 4, 4, 5, -1, 6, -1, -1 };
  return &_RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1;
}

@end

void RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1_initWithRxSubscriptionsCompositeSubscription_withJavaUtilConcurrentAtomicAtomicBoolean_withRxCompletable_CompletableSubscriber_withJavaUtilConcurrentAtomicAtomicInteger_(RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1 *self, RxSubscriptionsCompositeSubscription *capture$0, JavaUtilConcurrentAtomicAtomicBoolean *capture$1, id<RxCompletable_CompletableSubscriber> capture$2, JavaUtilConcurrentAtomicAtomicInteger *capture$3) {
  self->val$set_ = capture$0;
  self->val$once_ = capture$1;
  self->val$s_ = capture$2;
  self->val$wip_ = capture$3;
  NSObject_init(self);
}

RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1 *new_RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1_initWithRxSubscriptionsCompositeSubscription_withJavaUtilConcurrentAtomicAtomicBoolean_withRxCompletable_CompletableSubscriber_withJavaUtilConcurrentAtomicAtomicInteger_(RxSubscriptionsCompositeSubscription *capture$0, JavaUtilConcurrentAtomicAtomicBoolean *capture$1, id<RxCompletable_CompletableSubscriber> capture$2, JavaUtilConcurrentAtomicAtomicInteger *capture$3) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1, initWithRxSubscriptionsCompositeSubscription_withJavaUtilConcurrentAtomicAtomicBoolean_withRxCompletable_CompletableSubscriber_withJavaUtilConcurrentAtomicAtomicInteger_, capture$0, capture$1, capture$2, capture$3)
}

RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1 *create_RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1_initWithRxSubscriptionsCompositeSubscription_withJavaUtilConcurrentAtomicAtomicBoolean_withRxCompletable_CompletableSubscriber_withJavaUtilConcurrentAtomicAtomicInteger_(RxSubscriptionsCompositeSubscription *capture$0, JavaUtilConcurrentAtomicAtomicBoolean *capture$1, id<RxCompletable_CompletableSubscriber> capture$2, JavaUtilConcurrentAtomicAtomicInteger *capture$3) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1, initWithRxSubscriptionsCompositeSubscription_withJavaUtilConcurrentAtomicAtomicBoolean_withRxCompletable_CompletableSubscriber_withJavaUtilConcurrentAtomicAtomicInteger_, capture$0, capture$1, capture$2, capture$3)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsCompletableOnSubscribeMergeIterable_$1)
