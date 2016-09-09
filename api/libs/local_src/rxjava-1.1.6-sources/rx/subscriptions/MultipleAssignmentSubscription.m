//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/subscriptions/MultipleAssignmentSubscription.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/concurrent/atomic/AtomicReference.h"
#include "rx/Subscription.h"
#include "rx/subscriptions/MultipleAssignmentSubscription.h"
#include "rx/subscriptions/Subscriptions.h"

@interface RxSubscriptionsMultipleAssignmentSubscription_State : NSObject {
 @public
  jboolean isUnsubscribed_;
  id<RxSubscription> subscription_;
}

- (instancetype)initWithBoolean:(jboolean)u
             withRxSubscription:(id<RxSubscription>)s;

- (RxSubscriptionsMultipleAssignmentSubscription_State *)unsubscribe;

- (RxSubscriptionsMultipleAssignmentSubscription_State *)setWithRxSubscription:(id<RxSubscription>)s;

@end

J2OBJC_EMPTY_STATIC_INIT(RxSubscriptionsMultipleAssignmentSubscription_State)

J2OBJC_FIELD_SETTER(RxSubscriptionsMultipleAssignmentSubscription_State, subscription_, id<RxSubscription>)

__attribute__((unused)) static void RxSubscriptionsMultipleAssignmentSubscription_State_initWithBoolean_withRxSubscription_(RxSubscriptionsMultipleAssignmentSubscription_State *self, jboolean u, id<RxSubscription> s);

__attribute__((unused)) static RxSubscriptionsMultipleAssignmentSubscription_State *new_RxSubscriptionsMultipleAssignmentSubscription_State_initWithBoolean_withRxSubscription_(jboolean u, id<RxSubscription> s) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxSubscriptionsMultipleAssignmentSubscription_State *create_RxSubscriptionsMultipleAssignmentSubscription_State_initWithBoolean_withRxSubscription_(jboolean u, id<RxSubscription> s);

J2OBJC_TYPE_LITERAL_HEADER(RxSubscriptionsMultipleAssignmentSubscription_State)

@implementation RxSubscriptionsMultipleAssignmentSubscription

- (jboolean)isUnsubscribed {
  return ((RxSubscriptionsMultipleAssignmentSubscription_State *) nil_chk([((JavaUtilConcurrentAtomicAtomicReference *) nil_chk(state_)) get]))->isUnsubscribed_;
}

- (void)unsubscribe {
  RxSubscriptionsMultipleAssignmentSubscription_State *oldState;
  RxSubscriptionsMultipleAssignmentSubscription_State *newState;
  JavaUtilConcurrentAtomicAtomicReference *localState = self->state_;
  do {
    oldState = [((JavaUtilConcurrentAtomicAtomicReference *) nil_chk(localState)) get];
    if (((RxSubscriptionsMultipleAssignmentSubscription_State *) nil_chk(oldState))->isUnsubscribed_) {
      return;
    }
    else {
      newState = [oldState unsubscribe];
    }
  }
  while (![localState compareAndSetWithId:oldState withId:newState]);
  [((id<RxSubscription>) nil_chk(oldState->subscription_)) unsubscribe];
}

- (void)setWithRxSubscription:(id<RxSubscription>)s {
  if (s == nil) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"Subscription can not be null");
  }
  RxSubscriptionsMultipleAssignmentSubscription_State *oldState;
  RxSubscriptionsMultipleAssignmentSubscription_State *newState;
  JavaUtilConcurrentAtomicAtomicReference *localState = self->state_;
  do {
    oldState = [((JavaUtilConcurrentAtomicAtomicReference *) nil_chk(localState)) get];
    if (((RxSubscriptionsMultipleAssignmentSubscription_State *) nil_chk(oldState))->isUnsubscribed_) {
      [s unsubscribe];
      return;
    }
    else {
      newState = [oldState setWithRxSubscription:s];
    }
  }
  while (![localState compareAndSetWithId:oldState withId:newState]);
}

- (id<RxSubscription>)get {
  return ((RxSubscriptionsMultipleAssignmentSubscription_State *) nil_chk([((JavaUtilConcurrentAtomicAtomicReference *) nil_chk(state_)) get]))->subscription_;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  RxSubscriptionsMultipleAssignmentSubscription_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "isUnsubscribed", "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { "unsubscribe", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "setWithRxSubscription:", "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { "get", "LRxSubscription;", 0x1, -1, -1, -1, -1, -1, -1 },
    { "init", NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "state_", "LJavaUtilConcurrentAtomicAtomicReference;", .constantValue.asLong = 0, 0x10, -1, -1, 2, -1 },
  };
  static const void *ptrTable[] = { "set", "LRxSubscription;", "Ljava/util/concurrent/atomic/AtomicReference<Lrx/subscriptions/MultipleAssignmentSubscription$State;>;", "LRxSubscriptionsMultipleAssignmentSubscription_State;" };
  static const J2ObjcClassInfo _RxSubscriptionsMultipleAssignmentSubscription = { "MultipleAssignmentSubscription", "rx.subscriptions", ptrTable, methods, fields, 7, 0x11, 5, 1, -1, 3, -1, -1, -1 };
  return &_RxSubscriptionsMultipleAssignmentSubscription;
}

@end

void RxSubscriptionsMultipleAssignmentSubscription_init(RxSubscriptionsMultipleAssignmentSubscription *self) {
  NSObject_init(self);
  self->state_ = new_JavaUtilConcurrentAtomicAtomicReference_initWithId_(new_RxSubscriptionsMultipleAssignmentSubscription_State_initWithBoolean_withRxSubscription_(false, RxSubscriptionsSubscriptions_empty()));
}

RxSubscriptionsMultipleAssignmentSubscription *new_RxSubscriptionsMultipleAssignmentSubscription_init() {
  J2OBJC_NEW_IMPL(RxSubscriptionsMultipleAssignmentSubscription, init)
}

RxSubscriptionsMultipleAssignmentSubscription *create_RxSubscriptionsMultipleAssignmentSubscription_init() {
  J2OBJC_CREATE_IMPL(RxSubscriptionsMultipleAssignmentSubscription, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxSubscriptionsMultipleAssignmentSubscription)

@implementation RxSubscriptionsMultipleAssignmentSubscription_State

- (instancetype)initWithBoolean:(jboolean)u
             withRxSubscription:(id<RxSubscription>)s {
  RxSubscriptionsMultipleAssignmentSubscription_State_initWithBoolean_withRxSubscription_(self, u, s);
  return self;
}

- (RxSubscriptionsMultipleAssignmentSubscription_State *)unsubscribe {
  return new_RxSubscriptionsMultipleAssignmentSubscription_State_initWithBoolean_withRxSubscription_(true, subscription_);
}

- (RxSubscriptionsMultipleAssignmentSubscription_State *)setWithRxSubscription:(id<RxSubscription>)s {
  return new_RxSubscriptionsMultipleAssignmentSubscription_State_initWithBoolean_withRxSubscription_(isUnsubscribed_, s);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithBoolean:withRxSubscription:", NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { "unsubscribe", "LRxSubscriptionsMultipleAssignmentSubscription_State;", 0x0, -1, -1, -1, -1, -1, -1 },
    { "setWithRxSubscription:", "LRxSubscriptionsMultipleAssignmentSubscription_State;", 0x0, 1, 2, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "isUnsubscribed_", "Z", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "subscription_", "LRxSubscription;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "ZLRxSubscription;", "set", "LRxSubscription;", "LRxSubscriptionsMultipleAssignmentSubscription;" };
  static const J2ObjcClassInfo _RxSubscriptionsMultipleAssignmentSubscription_State = { "State", "rx.subscriptions", ptrTable, methods, fields, 7, 0x1a, 3, 2, 3, -1, -1, -1, -1 };
  return &_RxSubscriptionsMultipleAssignmentSubscription_State;
}

@end

void RxSubscriptionsMultipleAssignmentSubscription_State_initWithBoolean_withRxSubscription_(RxSubscriptionsMultipleAssignmentSubscription_State *self, jboolean u, id<RxSubscription> s) {
  NSObject_init(self);
  self->isUnsubscribed_ = u;
  self->subscription_ = s;
}

RxSubscriptionsMultipleAssignmentSubscription_State *new_RxSubscriptionsMultipleAssignmentSubscription_State_initWithBoolean_withRxSubscription_(jboolean u, id<RxSubscription> s) {
  J2OBJC_NEW_IMPL(RxSubscriptionsMultipleAssignmentSubscription_State, initWithBoolean_withRxSubscription_, u, s)
}

RxSubscriptionsMultipleAssignmentSubscription_State *create_RxSubscriptionsMultipleAssignmentSubscription_State_initWithBoolean_withRxSubscription_(jboolean u, id<RxSubscription> s) {
  J2OBJC_CREATE_IMPL(RxSubscriptionsMultipleAssignmentSubscription_State, initWithBoolean_withRxSubscription_, u, s)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxSubscriptionsMultipleAssignmentSubscription_State)
