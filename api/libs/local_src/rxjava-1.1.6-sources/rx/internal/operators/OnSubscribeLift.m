//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OnSubscribeLift.java
//

#include "J2ObjC_source.h"
#include "rx/Observable.h"
#include "rx/Subscriber.h"
#include "rx/exceptions/Exceptions.h"
#include "rx/internal/operators/OnSubscribeLift.h"
#include "rx/plugins/RxJavaObservableExecutionHook.h"
#include "rx/plugins/RxJavaPlugins.h"

J2OBJC_INITIALIZED_DEFN(RxInternalOperatorsOnSubscribeLift)

RxPluginsRxJavaObservableExecutionHook *RxInternalOperatorsOnSubscribeLift_hook;

@implementation RxInternalOperatorsOnSubscribeLift

+ (RxPluginsRxJavaObservableExecutionHook *)hook {
  return RxInternalOperatorsOnSubscribeLift_hook;
}

- (instancetype)initWithRxObservable_OnSubscribe:(id<RxObservable_OnSubscribe>)parent
                       withRxObservable_Operator:(id<RxObservable_Operator>)operator_ {
  RxInternalOperatorsOnSubscribeLift_initWithRxObservable_OnSubscribe_withRxObservable_Operator_(self, parent, operator_);
  return self;
}

- (void)callWithId:(RxSubscriber *)o {
  @try {
    RxSubscriber *st = [((id<RxObservable_Operator>) nil_chk([((RxPluginsRxJavaObservableExecutionHook *) nil_chk(RxInternalOperatorsOnSubscribeLift_hook)) onLiftWithRxObservable_Operator:operator__])) callWithId:o];
    @try {
      [((RxSubscriber *) nil_chk(st)) onStart];
      [((id<RxObservable_OnSubscribe>) nil_chk(parent_)) callWithId:st];
    }
    @catch (NSException *e) {
      RxExceptionsExceptions_throwIfFatalWithNSException_(e);
      [st onErrorWithNSException:e];
    }
  }
  @catch (NSException *e) {
    RxExceptionsExceptions_throwIfFatalWithNSException_(e);
    [((RxSubscriber *) nil_chk(o)) onErrorWithNSException:e];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxObservable_OnSubscribe:withRxObservable_Operator:", NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { "callWithId:", "V", 0x1, 2, 3, -1, 4, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "hook", "LRxPluginsRxJavaObservableExecutionHook;", .constantValue.asLong = 0, 0x18, -1, 5, -1, -1 },
    { "parent_", "LRxObservable_OnSubscribe;", .constantValue.asLong = 0, 0x10, -1, -1, 6, -1 },
    { "operator__", "LRxObservable_Operator;", .constantValue.asLong = 0, 0x10, 7, -1, 8, -1 },
  };
  static const void *ptrTable[] = { "LRxObservable_OnSubscribe;LRxObservable_Operator;", "(Lrx/Observable$OnSubscribe<TT;>;Lrx/Observable$Operator<+TR;-TT;>;)V", "call", "LRxSubscriber;", "(Lrx/Subscriber<-TR;>;)V", &RxInternalOperatorsOnSubscribeLift_hook, "Lrx/Observable$OnSubscribe<TT;>;", "operator", "Lrx/Observable$Operator<+TR;-TT;>;", "<T:Ljava/lang/Object;R:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$OnSubscribe<TR;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOnSubscribeLift = { "OnSubscribeLift", "rx.internal.operators", ptrTable, methods, fields, 7, 0x11, 2, 3, -1, -1, -1, 9, -1 };
  return &_RxInternalOperatorsOnSubscribeLift;
}

+ (void)initialize {
  if (self == [RxInternalOperatorsOnSubscribeLift class]) {
    RxInternalOperatorsOnSubscribeLift_hook = [((RxPluginsRxJavaPlugins *) nil_chk(RxPluginsRxJavaPlugins_getInstance())) getObservableExecutionHook];
    J2OBJC_SET_INITIALIZED(RxInternalOperatorsOnSubscribeLift)
  }
}

@end

void RxInternalOperatorsOnSubscribeLift_initWithRxObservable_OnSubscribe_withRxObservable_Operator_(RxInternalOperatorsOnSubscribeLift *self, id<RxObservable_OnSubscribe> parent, id<RxObservable_Operator> operator_) {
  NSObject_init(self);
  self->parent_ = parent;
  self->operator__ = operator_;
}

RxInternalOperatorsOnSubscribeLift *new_RxInternalOperatorsOnSubscribeLift_initWithRxObservable_OnSubscribe_withRxObservable_Operator_(id<RxObservable_OnSubscribe> parent, id<RxObservable_Operator> operator_) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOnSubscribeLift, initWithRxObservable_OnSubscribe_withRxObservable_Operator_, parent, operator_)
}

RxInternalOperatorsOnSubscribeLift *create_RxInternalOperatorsOnSubscribeLift_initWithRxObservable_OnSubscribe_withRxObservable_Operator_(id<RxObservable_OnSubscribe> parent, id<RxObservable_Operator> operator_) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOnSubscribeLift, initWithRxObservable_OnSubscribe_withRxObservable_Operator_, parent, operator_)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOnSubscribeLift)
