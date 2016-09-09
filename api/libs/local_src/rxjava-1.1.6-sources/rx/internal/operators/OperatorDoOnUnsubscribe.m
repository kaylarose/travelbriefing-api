//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorDoOnUnsubscribe.java
//

#include "J2ObjC_source.h"
#include "rx/Subscriber.h"
#include "rx/Subscription.h"
#include "rx/functions/Action0.h"
#include "rx/internal/operators/OperatorDoOnUnsubscribe.h"
#include "rx/observers/Subscribers.h"
#include "rx/subscriptions/Subscriptions.h"

@interface RxInternalOperatorsOperatorDoOnUnsubscribe () {
 @public
  id<RxFunctionsAction0> unsubscribe_;
}

@end

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorDoOnUnsubscribe, unsubscribe_, id<RxFunctionsAction0>)

@implementation RxInternalOperatorsOperatorDoOnUnsubscribe

- (instancetype)initWithRxFunctionsAction0:(id<RxFunctionsAction0>)unsubscribe {
  RxInternalOperatorsOperatorDoOnUnsubscribe_initWithRxFunctionsAction0_(self, unsubscribe);
  return self;
}

- (RxSubscriber *)callWithId:(RxSubscriber *)child {
  [((RxSubscriber *) nil_chk(child)) addWithRxSubscription:RxSubscriptionsSubscriptions_createWithRxFunctionsAction0_(unsubscribe_)];
  return RxObserversSubscribers_wrapWithRxSubscriber_(child);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxFunctionsAction0:", NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { "callWithId:", "LRxSubscriber;", 0x1, 1, 2, -1, 3, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "unsubscribe_", "LRxFunctionsAction0;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LRxFunctionsAction0;", "call", "LRxSubscriber;", "(Lrx/Subscriber<-TT;>;)Lrx/Subscriber<-TT;>;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$Operator<TT;TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorDoOnUnsubscribe = { "OperatorDoOnUnsubscribe", "rx.internal.operators", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, 4, -1 };
  return &_RxInternalOperatorsOperatorDoOnUnsubscribe;
}

@end

void RxInternalOperatorsOperatorDoOnUnsubscribe_initWithRxFunctionsAction0_(RxInternalOperatorsOperatorDoOnUnsubscribe *self, id<RxFunctionsAction0> unsubscribe) {
  NSObject_init(self);
  self->unsubscribe_ = unsubscribe;
}

RxInternalOperatorsOperatorDoOnUnsubscribe *new_RxInternalOperatorsOperatorDoOnUnsubscribe_initWithRxFunctionsAction0_(id<RxFunctionsAction0> unsubscribe) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorDoOnUnsubscribe, initWithRxFunctionsAction0_, unsubscribe)
}

RxInternalOperatorsOperatorDoOnUnsubscribe *create_RxInternalOperatorsOperatorDoOnUnsubscribe_initWithRxFunctionsAction0_(id<RxFunctionsAction0> unsubscribe) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorDoOnUnsubscribe, initWithRxFunctionsAction0_, unsubscribe)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorDoOnUnsubscribe)
