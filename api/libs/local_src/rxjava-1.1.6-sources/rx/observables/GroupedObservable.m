//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/observables/GroupedObservable.java
//

#include "J2ObjC_source.h"
#include "rx/Observable.h"
#include "rx/Subscriber.h"
#include "rx/Subscription.h"
#include "rx/observables/GroupedObservable.h"

@interface RxObservablesGroupedObservable () {
 @public
  id key_;
}

@end

J2OBJC_FIELD_SETTER(RxObservablesGroupedObservable, key_, id)

@interface RxObservablesGroupedObservable_$1 : NSObject < RxObservable_OnSubscribe > {
 @public
  RxObservable *val$o_;
}

- (void)callWithId:(RxSubscriber *)s;

- (instancetype)initWithRxObservable:(RxObservable *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxObservablesGroupedObservable_$1)

J2OBJC_FIELD_SETTER(RxObservablesGroupedObservable_$1, val$o_, RxObservable *)

__attribute__((unused)) static void RxObservablesGroupedObservable_$1_initWithRxObservable_(RxObservablesGroupedObservable_$1 *self, RxObservable *capture$0);

__attribute__((unused)) static RxObservablesGroupedObservable_$1 *new_RxObservablesGroupedObservable_$1_initWithRxObservable_(RxObservable *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxObservablesGroupedObservable_$1 *create_RxObservablesGroupedObservable_$1_initWithRxObservable_(RxObservable *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(RxObservablesGroupedObservable_$1)

@implementation RxObservablesGroupedObservable

+ (RxObservablesGroupedObservable *)fromWithId:(id)key
                              withRxObservable:(RxObservable *)o {
  return RxObservablesGroupedObservable_fromWithId_withRxObservable_(key, o);
}

+ (RxObservablesGroupedObservable *)createWithId:(id)key
                    withRxObservable_OnSubscribe:(id<RxObservable_OnSubscribe>)f {
  return RxObservablesGroupedObservable_createWithId_withRxObservable_OnSubscribe_(key, f);
}

- (instancetype)initWithId:(id)key
withRxObservable_OnSubscribe:(id<RxObservable_OnSubscribe>)onSubscribe {
  RxObservablesGroupedObservable_initWithId_withRxObservable_OnSubscribe_(self, key, onSubscribe);
  return self;
}

- (id)getKey {
  return key_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromWithId:withRxObservable:", "LRxObservablesGroupedObservable;", 0x9, 0, 1, -1, 2, -1, -1 },
    { "createWithId:withRxObservable_OnSubscribe:", "LRxObservablesGroupedObservable;", 0x9, 3, 4, -1, 5, -1, -1 },
    { "initWithId:withRxObservable_OnSubscribe:", NULL, 0x4, -1, 4, -1, 6, -1, -1 },
    { "getKey", "LNSObject;", 0x1, -1, -1, -1, 7, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "key_", "LNSObject;", .constantValue.asLong = 0, 0x12, -1, -1, 8, -1 },
  };
  static const void *ptrTable[] = { "from", "LNSObject;LRxObservable;", "<K:Ljava/lang/Object;T:Ljava/lang/Object;>(TK;Lrx/Observable<TT;>;)Lrx/observables/GroupedObservable<TK;TT;>;", "create", "LNSObject;LRxObservable_OnSubscribe;", "<K:Ljava/lang/Object;T:Ljava/lang/Object;>(TK;Lrx/Observable$OnSubscribe<TT;>;)Lrx/observables/GroupedObservable<TK;TT;>;", "(TK;Lrx/Observable$OnSubscribe<TT;>;)V", "()TK;", "TK;", "<K:Ljava/lang/Object;T:Ljava/lang/Object;>Lrx/Observable<TT;>;" };
  static const J2ObjcClassInfo _RxObservablesGroupedObservable = { "GroupedObservable", "rx.observables", ptrTable, methods, fields, 7, 0x1, 4, 1, -1, -1, -1, 9, -1 };
  return &_RxObservablesGroupedObservable;
}

@end

RxObservablesGroupedObservable *RxObservablesGroupedObservable_fromWithId_withRxObservable_(id key, RxObservable *o) {
  RxObservablesGroupedObservable_initialize();
  return new_RxObservablesGroupedObservable_initWithId_withRxObservable_OnSubscribe_(key, new_RxObservablesGroupedObservable_$1_initWithRxObservable_(o));
}

RxObservablesGroupedObservable *RxObservablesGroupedObservable_createWithId_withRxObservable_OnSubscribe_(id key, id<RxObservable_OnSubscribe> f) {
  RxObservablesGroupedObservable_initialize();
  return new_RxObservablesGroupedObservable_initWithId_withRxObservable_OnSubscribe_(key, f);
}

void RxObservablesGroupedObservable_initWithId_withRxObservable_OnSubscribe_(RxObservablesGroupedObservable *self, id key, id<RxObservable_OnSubscribe> onSubscribe) {
  RxObservable_initWithRxObservable_OnSubscribe_(self, onSubscribe);
  self->key_ = key;
}

RxObservablesGroupedObservable *new_RxObservablesGroupedObservable_initWithId_withRxObservable_OnSubscribe_(id key, id<RxObservable_OnSubscribe> onSubscribe) {
  J2OBJC_NEW_IMPL(RxObservablesGroupedObservable, initWithId_withRxObservable_OnSubscribe_, key, onSubscribe)
}

RxObservablesGroupedObservable *create_RxObservablesGroupedObservable_initWithId_withRxObservable_OnSubscribe_(id key, id<RxObservable_OnSubscribe> onSubscribe) {
  J2OBJC_CREATE_IMPL(RxObservablesGroupedObservable, initWithId_withRxObservable_OnSubscribe_, key, onSubscribe)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxObservablesGroupedObservable)

@implementation RxObservablesGroupedObservable_$1

- (void)callWithId:(RxSubscriber *)s {
  (void) [((RxObservable *) nil_chk(val$o_)) unsafeSubscribeWithRxSubscriber:s];
}

- (instancetype)initWithRxObservable:(RxObservable *)capture$0 {
  RxObservablesGroupedObservable_$1_initWithRxObservable_(self, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "callWithId:", "V", 0x1, 0, 1, -1, 2, -1, -1 },
    { "initWithRxObservable:", NULL, 0x0, -1, 3, -1, 4, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$o_", "LRxObservable;", .constantValue.asLong = 0, 0x1012, -1, -1, 5, -1 },
  };
  static const void *ptrTable[] = { "call", "LRxSubscriber;", "(Lrx/Subscriber<-TT;>;)V", "LRxObservable;", "(Lrx/Observable<TT;>;)V", "Lrx/Observable<TT;>;", "LRxObservablesGroupedObservable;", "fromWithId:withRxObservable:", "Ljava/lang/Object;Lrx/Observable$OnSubscribe<TT;>;" };
  static const J2ObjcClassInfo _RxObservablesGroupedObservable_$1 = { "", "rx.observables", ptrTable, methods, fields, 7, 0x8008, 2, 1, 6, -1, 7, 8, -1 };
  return &_RxObservablesGroupedObservable_$1;
}

@end

void RxObservablesGroupedObservable_$1_initWithRxObservable_(RxObservablesGroupedObservable_$1 *self, RxObservable *capture$0) {
  self->val$o_ = capture$0;
  NSObject_init(self);
}

RxObservablesGroupedObservable_$1 *new_RxObservablesGroupedObservable_$1_initWithRxObservable_(RxObservable *capture$0) {
  J2OBJC_NEW_IMPL(RxObservablesGroupedObservable_$1, initWithRxObservable_, capture$0)
}

RxObservablesGroupedObservable_$1 *create_RxObservablesGroupedObservable_$1_initWithRxObservable_(RxObservable *capture$0) {
  J2OBJC_CREATE_IMPL(RxObservablesGroupedObservable_$1, initWithRxObservable_, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxObservablesGroupedObservable_$1)
