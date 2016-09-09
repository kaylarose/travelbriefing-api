//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorMaterialize.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Long.h"
#include "java/util/concurrent/atomic/AtomicLong.h"
#include "rx/Notification.h"
#include "rx/Producer.h"
#include "rx/Subscriber.h"
#include "rx/internal/operators/BackpressureUtils.h"
#include "rx/internal/operators/OperatorMaterialize.h"
#include "rx/plugins/RxJavaErrorHandler.h"
#include "rx/plugins/RxJavaPlugins.h"

/*!
 @brief Lazy initialization via inner-class holder.
 */
@interface RxInternalOperatorsOperatorMaterialize_Holder : NSObject

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(RxInternalOperatorsOperatorMaterialize_Holder)

/*!
 @brief A singleton instance.
 */
inline RxInternalOperatorsOperatorMaterialize *RxInternalOperatorsOperatorMaterialize_Holder_get_INSTANCE();
static RxInternalOperatorsOperatorMaterialize *RxInternalOperatorsOperatorMaterialize_Holder_INSTANCE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxInternalOperatorsOperatorMaterialize_Holder, INSTANCE, RxInternalOperatorsOperatorMaterialize *)

__attribute__((unused)) static void RxInternalOperatorsOperatorMaterialize_Holder_init(RxInternalOperatorsOperatorMaterialize_Holder *self);

__attribute__((unused)) static RxInternalOperatorsOperatorMaterialize_Holder *new_RxInternalOperatorsOperatorMaterialize_Holder_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorMaterialize_Holder *create_RxInternalOperatorsOperatorMaterialize_Holder_init();

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorMaterialize_Holder)

@interface RxInternalOperatorsOperatorMaterialize_ParentSubscriber : RxSubscriber {
 @public
  RxSubscriber *child_;
  volatile_id terminalNotification_;
  jboolean busy_;
  jboolean missed_;
  JavaUtilConcurrentAtomicAtomicLong *requested_ParentSubscriber_;
}

- (instancetype)initWithRxSubscriber:(RxSubscriber *)child;

- (void)onStart;

- (void)requestMoreWithLong:(jlong)n;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)t;

- (void)decrementRequested;

- (void)drain;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorMaterialize_ParentSubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorMaterialize_ParentSubscriber, child_, RxSubscriber *)
J2OBJC_VOLATILE_FIELD_SETTER(RxInternalOperatorsOperatorMaterialize_ParentSubscriber, terminalNotification_, RxNotification *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorMaterialize_ParentSubscriber, requested_ParentSubscriber_, JavaUtilConcurrentAtomicAtomicLong *)

__attribute__((unused)) static void RxInternalOperatorsOperatorMaterialize_ParentSubscriber_initWithRxSubscriber_(RxInternalOperatorsOperatorMaterialize_ParentSubscriber *self, RxSubscriber *child);

__attribute__((unused)) static RxInternalOperatorsOperatorMaterialize_ParentSubscriber *new_RxInternalOperatorsOperatorMaterialize_ParentSubscriber_initWithRxSubscriber_(RxSubscriber *child) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorMaterialize_ParentSubscriber *create_RxInternalOperatorsOperatorMaterialize_ParentSubscriber_initWithRxSubscriber_(RxSubscriber *child);

__attribute__((unused)) static void RxInternalOperatorsOperatorMaterialize_ParentSubscriber_decrementRequested(RxInternalOperatorsOperatorMaterialize_ParentSubscriber *self);

__attribute__((unused)) static void RxInternalOperatorsOperatorMaterialize_ParentSubscriber_drain(RxInternalOperatorsOperatorMaterialize_ParentSubscriber *self);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorMaterialize_ParentSubscriber)

@interface RxInternalOperatorsOperatorMaterialize_$1 : NSObject < RxProducer > {
 @public
  RxInternalOperatorsOperatorMaterialize_ParentSubscriber *val$parent_;
}

- (void)requestWithLong:(jlong)n;

- (instancetype)initWithRxInternalOperatorsOperatorMaterialize_ParentSubscriber:(RxInternalOperatorsOperatorMaterialize_ParentSubscriber *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorMaterialize_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorMaterialize_$1, val$parent_, RxInternalOperatorsOperatorMaterialize_ParentSubscriber *)

__attribute__((unused)) static void RxInternalOperatorsOperatorMaterialize_$1_initWithRxInternalOperatorsOperatorMaterialize_ParentSubscriber_(RxInternalOperatorsOperatorMaterialize_$1 *self, RxInternalOperatorsOperatorMaterialize_ParentSubscriber *capture$0);

__attribute__((unused)) static RxInternalOperatorsOperatorMaterialize_$1 *new_RxInternalOperatorsOperatorMaterialize_$1_initWithRxInternalOperatorsOperatorMaterialize_ParentSubscriber_(RxInternalOperatorsOperatorMaterialize_ParentSubscriber *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorMaterialize_$1 *create_RxInternalOperatorsOperatorMaterialize_$1_initWithRxInternalOperatorsOperatorMaterialize_ParentSubscriber_(RxInternalOperatorsOperatorMaterialize_ParentSubscriber *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorMaterialize_$1)

@implementation RxInternalOperatorsOperatorMaterialize

+ (RxInternalOperatorsOperatorMaterialize *)instance {
  return RxInternalOperatorsOperatorMaterialize_instance();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  RxInternalOperatorsOperatorMaterialize_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (RxSubscriber *)callWithId:(RxSubscriber *)child {
  RxInternalOperatorsOperatorMaterialize_ParentSubscriber *parent = new_RxInternalOperatorsOperatorMaterialize_ParentSubscriber_initWithRxSubscriber_(child);
  [((RxSubscriber *) nil_chk(child)) addWithRxSubscription:parent];
  [child setProducerWithRxProducer:new_RxInternalOperatorsOperatorMaterialize_$1_initWithRxInternalOperatorsOperatorMaterialize_ParentSubscriber_(parent)];
  return parent;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "instance", "LRxInternalOperatorsOperatorMaterialize;", 0x9, -1, -1, -1, 0, -1, -1 },
    { "init", NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { "callWithId:", "LRxSubscriber;", 0x1, 1, 2, -1, 3, -1, -1 },
  };
  static const void *ptrTable[] = { "<T:Ljava/lang/Object;>()Lrx/internal/operators/OperatorMaterialize<TT;>;", "call", "LRxSubscriber;", "(Lrx/Subscriber<-Lrx/Notification<TT;>;>;)Lrx/Subscriber<-TT;>;", "LRxInternalOperatorsOperatorMaterialize_Holder;LRxInternalOperatorsOperatorMaterialize_ParentSubscriber;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$Operator<Lrx/Notification<TT;>;TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorMaterialize = { "OperatorMaterialize", "rx.internal.operators", ptrTable, methods, NULL, 7, 0x11, 3, 0, -1, 4, -1, 5, -1 };
  return &_RxInternalOperatorsOperatorMaterialize;
}

@end

RxInternalOperatorsOperatorMaterialize *RxInternalOperatorsOperatorMaterialize_instance() {
  RxInternalOperatorsOperatorMaterialize_initialize();
  return JreLoadStatic(RxInternalOperatorsOperatorMaterialize_Holder, INSTANCE);
}

void RxInternalOperatorsOperatorMaterialize_init(RxInternalOperatorsOperatorMaterialize *self) {
  NSObject_init(self);
}

RxInternalOperatorsOperatorMaterialize *new_RxInternalOperatorsOperatorMaterialize_init() {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorMaterialize, init)
}

RxInternalOperatorsOperatorMaterialize *create_RxInternalOperatorsOperatorMaterialize_init() {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorMaterialize, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorMaterialize)

J2OBJC_INITIALIZED_DEFN(RxInternalOperatorsOperatorMaterialize_Holder)

@implementation RxInternalOperatorsOperatorMaterialize_Holder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  RxInternalOperatorsOperatorMaterialize_Holder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, 0x2, -1, -1, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE", "LRxInternalOperatorsOperatorMaterialize;", .constantValue.asLong = 0, 0x18, -1, 0, 1, -1 },
  };
  static const void *ptrTable[] = { &RxInternalOperatorsOperatorMaterialize_Holder_INSTANCE, "Lrx/internal/operators/OperatorMaterialize<Ljava/lang/Object;>;", "LRxInternalOperatorsOperatorMaterialize;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorMaterialize_Holder = { "Holder", "rx.internal.operators", ptrTable, methods, fields, 7, 0x1a, 1, 1, 2, -1, -1, -1, -1 };
  return &_RxInternalOperatorsOperatorMaterialize_Holder;
}

+ (void)initialize {
  if (self == [RxInternalOperatorsOperatorMaterialize_Holder class]) {
    RxInternalOperatorsOperatorMaterialize_Holder_INSTANCE = new_RxInternalOperatorsOperatorMaterialize_init();
    J2OBJC_SET_INITIALIZED(RxInternalOperatorsOperatorMaterialize_Holder)
  }
}

@end

void RxInternalOperatorsOperatorMaterialize_Holder_init(RxInternalOperatorsOperatorMaterialize_Holder *self) {
  NSObject_init(self);
}

RxInternalOperatorsOperatorMaterialize_Holder *new_RxInternalOperatorsOperatorMaterialize_Holder_init() {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorMaterialize_Holder, init)
}

RxInternalOperatorsOperatorMaterialize_Holder *create_RxInternalOperatorsOperatorMaterialize_Holder_init() {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorMaterialize_Holder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorMaterialize_Holder)

@implementation RxInternalOperatorsOperatorMaterialize_ParentSubscriber

- (instancetype)initWithRxSubscriber:(RxSubscriber *)child {
  RxInternalOperatorsOperatorMaterialize_ParentSubscriber_initWithRxSubscriber_(self, child);
  return self;
}

- (void)onStart {
  [self requestWithLong:0];
}

- (void)requestMoreWithLong:(jlong)n {
  RxInternalOperatorsBackpressureUtils_getAndAddRequestWithJavaUtilConcurrentAtomicAtomicLong_withLong_(requested_ParentSubscriber_, n);
  [self requestWithLong:n];
  RxInternalOperatorsOperatorMaterialize_ParentSubscriber_drain(self);
}

- (void)onCompleted {
  (void) JreVolatileStrongAssign(&terminalNotification_, RxNotification_createOnCompleted());
  RxInternalOperatorsOperatorMaterialize_ParentSubscriber_drain(self);
}

- (void)onErrorWithNSException:(NSException *)e {
  (void) JreVolatileStrongAssign(&terminalNotification_, RxNotification_createOnErrorWithNSException_(e));
  [((RxPluginsRxJavaErrorHandler *) nil_chk([((RxPluginsRxJavaPlugins *) nil_chk(RxPluginsRxJavaPlugins_getInstance())) getErrorHandler])) handleErrorWithNSException:e];
  RxInternalOperatorsOperatorMaterialize_ParentSubscriber_drain(self);
}

- (void)onNextWithId:(id)t {
  [((RxSubscriber *) nil_chk(child_)) onNextWithId:RxNotification_createOnNextWithId_(t)];
  RxInternalOperatorsOperatorMaterialize_ParentSubscriber_decrementRequested(self);
}

- (void)decrementRequested {
  RxInternalOperatorsOperatorMaterialize_ParentSubscriber_decrementRequested(self);
}

- (void)drain {
  RxInternalOperatorsOperatorMaterialize_ParentSubscriber_drain(self);
}

- (void)__javaClone:(RxInternalOperatorsOperatorMaterialize_ParentSubscriber *)original {
  [super __javaClone:original];
  JreCloneVolatileStrong(&terminalNotification_, &original->terminalNotification_);
}

- (void)dealloc {
  JreReleaseVolatile(&terminalNotification_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxSubscriber:", NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { "onStart", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "requestMoreWithLong:", "V", 0x0, 2, 3, -1, -1, -1, -1 },
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { "onNextWithId:", "V", 0x1, 6, 7, -1, 8, -1, -1 },
    { "decrementRequested", "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { "drain", "V", 0x2, -1, -1, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "child_", "LRxSubscriber;", .constantValue.asLong = 0, 0x12, -1, -1, 9, -1 },
    { "terminalNotification_", "LRxNotification;", .constantValue.asLong = 0, 0x42, -1, -1, 10, -1 },
    { "busy_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "missed_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "requested_ParentSubscriber_", "LJavaUtilConcurrentAtomicAtomicLong;", .constantValue.asLong = 0, 0x12, 11, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LRxSubscriber;", "(Lrx/Subscriber<-Lrx/Notification<TT;>;>;)V", "requestMore", "J", "onError", "LNSException;", "onNext", "LNSObject;", "(TT;)V", "Lrx/Subscriber<-Lrx/Notification<TT;>;>;", "Lrx/Notification<TT;>;", "requested", "LRxInternalOperatorsOperatorMaterialize;", "<T:Ljava/lang/Object;>Lrx/Subscriber<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorMaterialize_ParentSubscriber = { "ParentSubscriber", "rx.internal.operators", ptrTable, methods, fields, 7, 0xa, 8, 5, 12, -1, -1, 13, -1 };
  return &_RxInternalOperatorsOperatorMaterialize_ParentSubscriber;
}

@end

void RxInternalOperatorsOperatorMaterialize_ParentSubscriber_initWithRxSubscriber_(RxInternalOperatorsOperatorMaterialize_ParentSubscriber *self, RxSubscriber *child) {
  RxSubscriber_init(self);
  self->busy_ = false;
  self->missed_ = false;
  self->requested_ParentSubscriber_ = new_JavaUtilConcurrentAtomicAtomicLong_init();
  self->child_ = child;
}

RxInternalOperatorsOperatorMaterialize_ParentSubscriber *new_RxInternalOperatorsOperatorMaterialize_ParentSubscriber_initWithRxSubscriber_(RxSubscriber *child) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorMaterialize_ParentSubscriber, initWithRxSubscriber_, child)
}

RxInternalOperatorsOperatorMaterialize_ParentSubscriber *create_RxInternalOperatorsOperatorMaterialize_ParentSubscriber_initWithRxSubscriber_(RxSubscriber *child) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorMaterialize_ParentSubscriber, initWithRxSubscriber_, child)
}

void RxInternalOperatorsOperatorMaterialize_ParentSubscriber_decrementRequested(RxInternalOperatorsOperatorMaterialize_ParentSubscriber *self) {
  JavaUtilConcurrentAtomicAtomicLong *localRequested = self->requested_ParentSubscriber_;
  while (true) {
    jlong r = [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(localRequested)) get];
    if (r == JavaLangLong_MAX_VALUE) {
      return;
    }
    else if ([localRequested compareAndSetWithLong:r withLong:r - 1]) {
      return;
    }
  }
}

void RxInternalOperatorsOperatorMaterialize_ParentSubscriber_drain(RxInternalOperatorsOperatorMaterialize_ParentSubscriber *self) {
  @synchronized(self) {
    if (self->busy_) {
      self->missed_ = true;
      return;
    }
  }
  JavaUtilConcurrentAtomicAtomicLong *localRequested = self->requested_ParentSubscriber_;
  while (![((RxSubscriber *) nil_chk(self->child_)) isUnsubscribed]) {
    RxNotification *tn;
    tn = JreLoadVolatileId(&self->terminalNotification_);
    if (tn != nil) {
      if ([((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(localRequested)) get] > 0) {
        (void) JreVolatileStrongAssign(&self->terminalNotification_, nil);
        [self->child_ onNextWithId:tn];
        if (![self->child_ isUnsubscribed]) {
          [self->child_ onCompleted];
        }
        return;
      }
    }
    @synchronized(self) {
      if (!self->missed_) {
        self->busy_ = false;
        return;
      }
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorMaterialize_ParentSubscriber)

@implementation RxInternalOperatorsOperatorMaterialize_$1

- (void)requestWithLong:(jlong)n {
  if (n > 0) {
    [((RxInternalOperatorsOperatorMaterialize_ParentSubscriber *) nil_chk(val$parent_)) requestMoreWithLong:n];
  }
}

- (instancetype)initWithRxInternalOperatorsOperatorMaterialize_ParentSubscriber:(RxInternalOperatorsOperatorMaterialize_ParentSubscriber *)capture$0 {
  RxInternalOperatorsOperatorMaterialize_$1_initWithRxInternalOperatorsOperatorMaterialize_ParentSubscriber_(self, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "requestWithLong:", "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { "initWithRxInternalOperatorsOperatorMaterialize_ParentSubscriber:", NULL, 0x0, -1, 2, -1, 3, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$parent_", "LRxInternalOperatorsOperatorMaterialize_ParentSubscriber;", .constantValue.asLong = 0, 0x1012, -1, -1, 4, -1 },
  };
  static const void *ptrTable[] = { "request", "J", "LRxInternalOperatorsOperatorMaterialize_ParentSubscriber;", "(Lrx/internal/operators/OperatorMaterialize$ParentSubscriber<TT;>;)V", "Lrx/internal/operators/OperatorMaterialize$ParentSubscriber<TT;>;", "LRxInternalOperatorsOperatorMaterialize;", "callWithId:" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorMaterialize_$1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 2, 1, 5, -1, 6, -1, -1 };
  return &_RxInternalOperatorsOperatorMaterialize_$1;
}

@end

void RxInternalOperatorsOperatorMaterialize_$1_initWithRxInternalOperatorsOperatorMaterialize_ParentSubscriber_(RxInternalOperatorsOperatorMaterialize_$1 *self, RxInternalOperatorsOperatorMaterialize_ParentSubscriber *capture$0) {
  self->val$parent_ = capture$0;
  NSObject_init(self);
}

RxInternalOperatorsOperatorMaterialize_$1 *new_RxInternalOperatorsOperatorMaterialize_$1_initWithRxInternalOperatorsOperatorMaterialize_ParentSubscriber_(RxInternalOperatorsOperatorMaterialize_ParentSubscriber *capture$0) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorMaterialize_$1, initWithRxInternalOperatorsOperatorMaterialize_ParentSubscriber_, capture$0)
}

RxInternalOperatorsOperatorMaterialize_$1 *create_RxInternalOperatorsOperatorMaterialize_$1_initWithRxInternalOperatorsOperatorMaterialize_ParentSubscriber_(RxInternalOperatorsOperatorMaterialize_ParentSubscriber *capture$0) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorMaterialize_$1, initWithRxInternalOperatorsOperatorMaterialize_ParentSubscriber_, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorMaterialize_$1)