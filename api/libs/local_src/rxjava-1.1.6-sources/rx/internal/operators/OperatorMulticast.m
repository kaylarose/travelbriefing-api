//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorMulticast.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "java/util/concurrent/atomic/AtomicReference.h"
#include "rx/Observable.h"
#include "rx/Subscriber.h"
#include "rx/Subscription.h"
#include "rx/functions/Action0.h"
#include "rx/functions/Action1.h"
#include "rx/functions/Func0.h"
#include "rx/internal/operators/OperatorMulticast.h"
#include "rx/observables/ConnectableObservable.h"
#include "rx/observers/Subscribers.h"
#include "rx/subjects/Subject.h"
#include "rx/subscriptions/Subscriptions.h"

@interface RxInternalOperatorsOperatorMulticast ()

- (instancetype)initWithId:(id)guard
withJavaUtilConcurrentAtomicAtomicReference:(JavaUtilConcurrentAtomicAtomicReference *)connectedSubject
          withJavaUtilList:(id<JavaUtilList>)waitingForConnect
          withRxObservable:(RxObservable *)source
      withRxFunctionsFunc0:(id<RxFunctionsFunc0>)subjectFactory;

@end

__attribute__((unused)) static void RxInternalOperatorsOperatorMulticast_initWithId_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilList_withRxObservable_withRxFunctionsFunc0_(RxInternalOperatorsOperatorMulticast *self, id guard, JavaUtilConcurrentAtomicAtomicReference *connectedSubject, id<JavaUtilList> waitingForConnect, RxObservable *source, id<RxFunctionsFunc0> subjectFactory);

__attribute__((unused)) static RxInternalOperatorsOperatorMulticast *new_RxInternalOperatorsOperatorMulticast_initWithId_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilList_withRxObservable_withRxFunctionsFunc0_(id guard, JavaUtilConcurrentAtomicAtomicReference *connectedSubject, id<JavaUtilList> waitingForConnect, RxObservable *source, id<RxFunctionsFunc0> subjectFactory) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorMulticast *create_RxInternalOperatorsOperatorMulticast_initWithId_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilList_withRxObservable_withRxFunctionsFunc0_(id guard, JavaUtilConcurrentAtomicAtomicReference *connectedSubject, id<JavaUtilList> waitingForConnect, RxObservable *source, id<RxFunctionsFunc0> subjectFactory);

@interface RxInternalOperatorsOperatorMulticast_$1 : NSObject < RxObservable_OnSubscribe > {
 @public
  id val$guard_;
  JavaUtilConcurrentAtomicAtomicReference *val$connectedSubject_;
  id<JavaUtilList> val$waitingForConnect_;
}

- (void)callWithId:(RxSubscriber *)subscriber;

- (instancetype)initWithId:(id)capture$0
withJavaUtilConcurrentAtomicAtomicReference:(JavaUtilConcurrentAtomicAtomicReference *)capture$1
          withJavaUtilList:(id<JavaUtilList>)capture$2;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorMulticast_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorMulticast_$1, val$guard_, id)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorMulticast_$1, val$connectedSubject_, JavaUtilConcurrentAtomicAtomicReference *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorMulticast_$1, val$waitingForConnect_, id<JavaUtilList>)

__attribute__((unused)) static void RxInternalOperatorsOperatorMulticast_$1_initWithId_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilList_(RxInternalOperatorsOperatorMulticast_$1 *self, id capture$0, JavaUtilConcurrentAtomicAtomicReference *capture$1, id<JavaUtilList> capture$2);

__attribute__((unused)) static RxInternalOperatorsOperatorMulticast_$1 *new_RxInternalOperatorsOperatorMulticast_$1_initWithId_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilList_(id capture$0, JavaUtilConcurrentAtomicAtomicReference *capture$1, id<JavaUtilList> capture$2) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorMulticast_$1 *create_RxInternalOperatorsOperatorMulticast_$1_initWithId_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilList_(id capture$0, JavaUtilConcurrentAtomicAtomicReference *capture$1, id<JavaUtilList> capture$2);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorMulticast_$1)

@interface RxInternalOperatorsOperatorMulticast_$2 : NSObject < RxFunctionsAction0 > {
 @public
  RxInternalOperatorsOperatorMulticast *this$0_;
  JavaUtilConcurrentAtomicAtomicReference *val$gs_;
}

- (void)call;

- (instancetype)initWithRxInternalOperatorsOperatorMulticast:(RxInternalOperatorsOperatorMulticast *)outer$
                 withJavaUtilConcurrentAtomicAtomicReference:(JavaUtilConcurrentAtomicAtomicReference *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorMulticast_$2)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorMulticast_$2, this$0_, RxInternalOperatorsOperatorMulticast *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorMulticast_$2, val$gs_, JavaUtilConcurrentAtomicAtomicReference *)

__attribute__((unused)) static void RxInternalOperatorsOperatorMulticast_$2_initWithRxInternalOperatorsOperatorMulticast_withJavaUtilConcurrentAtomicAtomicReference_(RxInternalOperatorsOperatorMulticast_$2 *self, RxInternalOperatorsOperatorMulticast *outer$, JavaUtilConcurrentAtomicAtomicReference *capture$0);

__attribute__((unused)) static RxInternalOperatorsOperatorMulticast_$2 *new_RxInternalOperatorsOperatorMulticast_$2_initWithRxInternalOperatorsOperatorMulticast_withJavaUtilConcurrentAtomicAtomicReference_(RxInternalOperatorsOperatorMulticast *outer$, JavaUtilConcurrentAtomicAtomicReference *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorMulticast_$2 *create_RxInternalOperatorsOperatorMulticast_$2_initWithRxInternalOperatorsOperatorMulticast_withJavaUtilConcurrentAtomicAtomicReference_(RxInternalOperatorsOperatorMulticast *outer$, JavaUtilConcurrentAtomicAtomicReference *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorMulticast_$2)

@interface RxInternalOperatorsOperatorMulticast_$3 : RxSubscriber {
 @public
  RxSubscriber *val$s_;
}

- (void)onNextWithId:(id)t;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onCompleted;

- (instancetype)initWithRxSubscriber:(RxSubscriber *)capture$0
                    withRxSubscriber:(RxSubscriber *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorMulticast_$3)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorMulticast_$3, val$s_, RxSubscriber *)

__attribute__((unused)) static void RxInternalOperatorsOperatorMulticast_$3_initWithRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorMulticast_$3 *self, RxSubscriber *capture$0, RxSubscriber *arg$0);

__attribute__((unused)) static RxInternalOperatorsOperatorMulticast_$3 *new_RxInternalOperatorsOperatorMulticast_$3_initWithRxSubscriber_withRxSubscriber_(RxSubscriber *capture$0, RxSubscriber *arg$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorMulticast_$3 *create_RxInternalOperatorsOperatorMulticast_$3_initWithRxSubscriber_withRxSubscriber_(RxSubscriber *capture$0, RxSubscriber *arg$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorMulticast_$3)

@implementation RxInternalOperatorsOperatorMulticast

- (instancetype)initWithRxObservable:(RxObservable *)source
                withRxFunctionsFunc0:(id<RxFunctionsFunc0>)subjectFactory {
  RxInternalOperatorsOperatorMulticast_initWithRxObservable_withRxFunctionsFunc0_(self, source, subjectFactory);
  return self;
}

- (instancetype)initWithId:(id)guard
withJavaUtilConcurrentAtomicAtomicReference:(JavaUtilConcurrentAtomicAtomicReference *)connectedSubject
          withJavaUtilList:(id<JavaUtilList>)waitingForConnect
          withRxObservable:(RxObservable *)source
      withRxFunctionsFunc0:(id<RxFunctionsFunc0>)subjectFactory {
  RxInternalOperatorsOperatorMulticast_initWithId_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilList_withRxObservable_withRxFunctionsFunc0_(self, guard, connectedSubject, waitingForConnect, source, subjectFactory);
  return self;
}

- (void)connectWithRxFunctionsAction1:(id<RxFunctionsAction1>)connection {
  @synchronized(guard_) {
    if (subscription_ != nil) {
      [((id<RxFunctionsAction1>) nil_chk(connection)) callWithId:guardedSubscription_];
      return;
    }
    else {
      RxSubjectsSubject *subject = [((id<RxFunctionsFunc0>) nil_chk(subjectFactory_)) call];
      subscription_ = RxObserversSubscribers_fromWithRxObserver_(subject);
      JavaUtilConcurrentAtomicAtomicReference *gs = new_JavaUtilConcurrentAtomicAtomicReference_init();
      [gs setWithId:RxSubscriptionsSubscriptions_createWithRxFunctionsAction0_(new_RxInternalOperatorsOperatorMulticast_$2_initWithRxInternalOperatorsOperatorMulticast_withJavaUtilConcurrentAtomicAtomicReference_(self, gs))];
      guardedSubscription_ = [gs get];
      for (RxSubscriber * __strong s in nil_chk(waitingForConnect_)) {
        (void) [((RxSubjectsSubject *) nil_chk(subject)) unsafeSubscribeWithRxSubscriber:new_RxInternalOperatorsOperatorMulticast_$3_initWithRxSubscriber_withRxSubscriber_(s, s)];
      }
      [waitingForConnect_ clear];
      [((JavaUtilConcurrentAtomicAtomicReference *) nil_chk(connectedSubject_)) setWithId:subject];
    }
  }
  [((id<RxFunctionsAction1>) nil_chk(connection)) callWithId:guardedSubscription_];
  RxSubscriber *sub;
  @synchronized(guard_) {
    sub = subscription_;
  }
  if (sub != nil) (void) [((RxObservable *) nil_chk((source_))) subscribeWithRxSubscriber:sub];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxObservable:withRxFunctionsFunc0:", NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { "initWithId:withJavaUtilConcurrentAtomicAtomicReference:withJavaUtilList:withRxObservable:withRxFunctionsFunc0:", NULL, 0x2, -1, 2, -1, 3, -1, -1 },
    { "connectWithRxFunctionsAction1:", "V", 0x1, 4, 5, -1, 6, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "source_", "LRxObservable;", .constantValue.asLong = 0, 0x10, -1, -1, 7, -1 },
    { "guard_", "LNSObject;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "subjectFactory_", "LRxFunctionsFunc0;", .constantValue.asLong = 0, 0x10, -1, -1, 8, -1 },
    { "connectedSubject_", "LJavaUtilConcurrentAtomicAtomicReference;", .constantValue.asLong = 0, 0x10, -1, -1, 9, -1 },
    { "waitingForConnect_", "LJavaUtilList;", .constantValue.asLong = 0, 0x10, -1, -1, 10, -1 },
    { "subscription_", "LRxSubscriber;", .constantValue.asLong = 0, 0x0, -1, -1, 11, -1 },
    { "guardedSubscription_", "LRxSubscription;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LRxObservable;LRxFunctionsFunc0;", "(Lrx/Observable<+TT;>;Lrx/functions/Func0<+Lrx/subjects/Subject<-TT;+TR;>;>;)V", "LNSObject;LJavaUtilConcurrentAtomicAtomicReference;LJavaUtilList;LRxObservable;LRxFunctionsFunc0;", "(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference<Lrx/subjects/Subject<-TT;+TR;>;>;Ljava/util/List<Lrx/Subscriber<-TR;>;>;Lrx/Observable<+TT;>;Lrx/functions/Func0<+Lrx/subjects/Subject<-TT;+TR;>;>;)V", "connect", "LRxFunctionsAction1;", "(Lrx/functions/Action1<-Lrx/Subscription;>;)V", "Lrx/Observable<+TT;>;", "Lrx/functions/Func0<+Lrx/subjects/Subject<-TT;+TR;>;>;", "Ljava/util/concurrent/atomic/AtomicReference<Lrx/subjects/Subject<-TT;+TR;>;>;", "Ljava/util/List<Lrx/Subscriber<-TR;>;>;", "Lrx/Subscriber<TT;>;", "<T:Ljava/lang/Object;R:Ljava/lang/Object;>Lrx/observables/ConnectableObservable<TR;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorMulticast = { "OperatorMulticast", "rx.internal.operators", ptrTable, methods, fields, 7, 0x11, 3, 7, -1, -1, -1, 12, -1 };
  return &_RxInternalOperatorsOperatorMulticast;
}

@end

void RxInternalOperatorsOperatorMulticast_initWithRxObservable_withRxFunctionsFunc0_(RxInternalOperatorsOperatorMulticast *self, RxObservable *source, id<RxFunctionsFunc0> subjectFactory) {
  RxInternalOperatorsOperatorMulticast_initWithId_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilList_withRxObservable_withRxFunctionsFunc0_(self, new_NSObject_init(), new_JavaUtilConcurrentAtomicAtomicReference_init(), new_JavaUtilArrayList_init(), source, subjectFactory);
}

RxInternalOperatorsOperatorMulticast *new_RxInternalOperatorsOperatorMulticast_initWithRxObservable_withRxFunctionsFunc0_(RxObservable *source, id<RxFunctionsFunc0> subjectFactory) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorMulticast, initWithRxObservable_withRxFunctionsFunc0_, source, subjectFactory)
}

RxInternalOperatorsOperatorMulticast *create_RxInternalOperatorsOperatorMulticast_initWithRxObservable_withRxFunctionsFunc0_(RxObservable *source, id<RxFunctionsFunc0> subjectFactory) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorMulticast, initWithRxObservable_withRxFunctionsFunc0_, source, subjectFactory)
}

void RxInternalOperatorsOperatorMulticast_initWithId_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilList_withRxObservable_withRxFunctionsFunc0_(RxInternalOperatorsOperatorMulticast *self, id guard, JavaUtilConcurrentAtomicAtomicReference *connectedSubject, id<JavaUtilList> waitingForConnect, RxObservable *source, id<RxFunctionsFunc0> subjectFactory) {
  RxObservablesConnectableObservable_initWithRxObservable_OnSubscribe_(self, new_RxInternalOperatorsOperatorMulticast_$1_initWithId_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilList_(guard, connectedSubject, waitingForConnect));
  self->guard_ = guard;
  self->connectedSubject_ = connectedSubject;
  self->waitingForConnect_ = waitingForConnect;
  self->source_ = source;
  self->subjectFactory_ = subjectFactory;
}

RxInternalOperatorsOperatorMulticast *new_RxInternalOperatorsOperatorMulticast_initWithId_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilList_withRxObservable_withRxFunctionsFunc0_(id guard, JavaUtilConcurrentAtomicAtomicReference *connectedSubject, id<JavaUtilList> waitingForConnect, RxObservable *source, id<RxFunctionsFunc0> subjectFactory) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorMulticast, initWithId_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilList_withRxObservable_withRxFunctionsFunc0_, guard, connectedSubject, waitingForConnect, source, subjectFactory)
}

RxInternalOperatorsOperatorMulticast *create_RxInternalOperatorsOperatorMulticast_initWithId_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilList_withRxObservable_withRxFunctionsFunc0_(id guard, JavaUtilConcurrentAtomicAtomicReference *connectedSubject, id<JavaUtilList> waitingForConnect, RxObservable *source, id<RxFunctionsFunc0> subjectFactory) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorMulticast, initWithId_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilList_withRxObservable_withRxFunctionsFunc0_, guard, connectedSubject, waitingForConnect, source, subjectFactory)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorMulticast)

@implementation RxInternalOperatorsOperatorMulticast_$1

- (void)callWithId:(RxSubscriber *)subscriber {
  @synchronized(val$guard_) {
    if ([((JavaUtilConcurrentAtomicAtomicReference *) nil_chk(val$connectedSubject_)) get] == nil) {
      [((id<JavaUtilList>) nil_chk(val$waitingForConnect_)) addWithId:subscriber];
    }
    else {
      (void) [((RxSubjectsSubject *) nil_chk([val$connectedSubject_ get])) unsafeSubscribeWithRxSubscriber:subscriber];
    }
  }
}

- (instancetype)initWithId:(id)capture$0
withJavaUtilConcurrentAtomicAtomicReference:(JavaUtilConcurrentAtomicAtomicReference *)capture$1
          withJavaUtilList:(id<JavaUtilList>)capture$2 {
  RxInternalOperatorsOperatorMulticast_$1_initWithId_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilList_(self, capture$0, capture$1, capture$2);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "callWithId:", "V", 0x1, 0, 1, -1, 2, -1, -1 },
    { "initWithId:withJavaUtilConcurrentAtomicAtomicReference:withJavaUtilList:", NULL, 0x0, -1, 3, -1, 4, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$guard_", "LNSObject;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$connectedSubject_", "LJavaUtilConcurrentAtomicAtomicReference;", .constantValue.asLong = 0, 0x1012, -1, -1, 5, -1 },
    { "val$waitingForConnect_", "LJavaUtilList;", .constantValue.asLong = 0, 0x1012, -1, -1, 6, -1 },
  };
  static const void *ptrTable[] = { "call", "LRxSubscriber;", "(Lrx/Subscriber<-TR;>;)V", "LNSObject;LJavaUtilConcurrentAtomicAtomicReference;LJavaUtilList;", "(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference<Lrx/subjects/Subject<-TT;+TR;>;>;Ljava/util/List<Lrx/Subscriber<-TR;>;>;)V", "Ljava/util/concurrent/atomic/AtomicReference<Lrx/subjects/Subject<-TT;+TR;>;>;", "Ljava/util/List<Lrx/Subscriber<-TR;>;>;", "LRxInternalOperatorsOperatorMulticast;", "initWithId:withJavaUtilConcurrentAtomicAtomicReference:withJavaUtilList:withRxObservable:withRxFunctionsFunc0:", "Ljava/lang/Object;Lrx/Observable$OnSubscribe<TR;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorMulticast_$1 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 2, 3, 7, -1, 8, 9, -1 };
  return &_RxInternalOperatorsOperatorMulticast_$1;
}

@end

void RxInternalOperatorsOperatorMulticast_$1_initWithId_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilList_(RxInternalOperatorsOperatorMulticast_$1 *self, id capture$0, JavaUtilConcurrentAtomicAtomicReference *capture$1, id<JavaUtilList> capture$2) {
  self->val$guard_ = capture$0;
  self->val$connectedSubject_ = capture$1;
  self->val$waitingForConnect_ = capture$2;
  NSObject_init(self);
}

RxInternalOperatorsOperatorMulticast_$1 *new_RxInternalOperatorsOperatorMulticast_$1_initWithId_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilList_(id capture$0, JavaUtilConcurrentAtomicAtomicReference *capture$1, id<JavaUtilList> capture$2) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorMulticast_$1, initWithId_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilList_, capture$0, capture$1, capture$2)
}

RxInternalOperatorsOperatorMulticast_$1 *create_RxInternalOperatorsOperatorMulticast_$1_initWithId_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilList_(id capture$0, JavaUtilConcurrentAtomicAtomicReference *capture$1, id<JavaUtilList> capture$2) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorMulticast_$1, initWithId_withJavaUtilConcurrentAtomicAtomicReference_withJavaUtilList_, capture$0, capture$1, capture$2)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorMulticast_$1)

@implementation RxInternalOperatorsOperatorMulticast_$2

- (void)call {
  id<RxSubscription> s;
  @synchronized(this$0_->guard_) {
    if (this$0_->guardedSubscription_ == [((JavaUtilConcurrentAtomicAtomicReference *) nil_chk(val$gs_)) get]) {
      s = this$0_->subscription_;
      this$0_->subscription_ = nil;
      this$0_->guardedSubscription_ = nil;
      [((JavaUtilConcurrentAtomicAtomicReference *) nil_chk(this$0_->connectedSubject_)) setWithId:nil];
    }
    else return;
  }
  if (s != nil) {
    [s unsubscribe];
  }
}

- (instancetype)initWithRxInternalOperatorsOperatorMulticast:(RxInternalOperatorsOperatorMulticast *)outer$
                 withJavaUtilConcurrentAtomicAtomicReference:(JavaUtilConcurrentAtomicAtomicReference *)capture$0 {
  RxInternalOperatorsOperatorMulticast_$2_initWithRxInternalOperatorsOperatorMulticast_withJavaUtilConcurrentAtomicAtomicReference_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "call", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "initWithRxInternalOperatorsOperatorMulticast:withJavaUtilConcurrentAtomicAtomicReference:", NULL, 0x0, -1, 0, -1, 1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LRxInternalOperatorsOperatorMulticast;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$gs_", "LJavaUtilConcurrentAtomicAtomicReference;", .constantValue.asLong = 0, 0x1012, -1, -1, 2, -1 },
  };
  static const void *ptrTable[] = { "LRxInternalOperatorsOperatorMulticast;LJavaUtilConcurrentAtomicAtomicReference;", "(Lrx/internal/operators/OperatorMulticast;Ljava/util/concurrent/atomic/AtomicReference<Lrx/Subscription;>;)V", "Ljava/util/concurrent/atomic/AtomicReference<Lrx/Subscription;>;", "LRxInternalOperatorsOperatorMulticast;", "connectWithRxFunctionsAction1:" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorMulticast_$2 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 2, 2, 3, -1, 4, -1, -1 };
  return &_RxInternalOperatorsOperatorMulticast_$2;
}

@end

void RxInternalOperatorsOperatorMulticast_$2_initWithRxInternalOperatorsOperatorMulticast_withJavaUtilConcurrentAtomicAtomicReference_(RxInternalOperatorsOperatorMulticast_$2 *self, RxInternalOperatorsOperatorMulticast *outer$, JavaUtilConcurrentAtomicAtomicReference *capture$0) {
  self->this$0_ = outer$;
  self->val$gs_ = capture$0;
  NSObject_init(self);
}

RxInternalOperatorsOperatorMulticast_$2 *new_RxInternalOperatorsOperatorMulticast_$2_initWithRxInternalOperatorsOperatorMulticast_withJavaUtilConcurrentAtomicAtomicReference_(RxInternalOperatorsOperatorMulticast *outer$, JavaUtilConcurrentAtomicAtomicReference *capture$0) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorMulticast_$2, initWithRxInternalOperatorsOperatorMulticast_withJavaUtilConcurrentAtomicAtomicReference_, outer$, capture$0)
}

RxInternalOperatorsOperatorMulticast_$2 *create_RxInternalOperatorsOperatorMulticast_$2_initWithRxInternalOperatorsOperatorMulticast_withJavaUtilConcurrentAtomicAtomicReference_(RxInternalOperatorsOperatorMulticast *outer$, JavaUtilConcurrentAtomicAtomicReference *capture$0) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorMulticast_$2, initWithRxInternalOperatorsOperatorMulticast_withJavaUtilConcurrentAtomicAtomicReference_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorMulticast_$2)

@implementation RxInternalOperatorsOperatorMulticast_$3

- (void)onNextWithId:(id)t {
  [((RxSubscriber *) nil_chk(val$s_)) onNextWithId:t];
}

- (void)onErrorWithNSException:(NSException *)e {
  [((RxSubscriber *) nil_chk(val$s_)) onErrorWithNSException:e];
}

- (void)onCompleted {
  [((RxSubscriber *) nil_chk(val$s_)) onCompleted];
}

- (instancetype)initWithRxSubscriber:(RxSubscriber *)capture$0
                    withRxSubscriber:(RxSubscriber *)arg$0 {
  RxInternalOperatorsOperatorMulticast_$3_initWithRxSubscriber_withRxSubscriber_(self, capture$0, arg$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onNextWithId:", "V", 0x1, 0, 1, -1, 2, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "initWithRxSubscriber:withRxSubscriber:", NULL, 0x0, -1, 5, -1, 6, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$s_", "LRxSubscriber;", .constantValue.asLong = 0, 0x1012, -1, -1, 7, -1 },
  };
  static const void *ptrTable[] = { "onNext", "LNSObject;", "(TR;)V", "onError", "LNSException;", "LRxSubscriber;LRxSubscriber;", "(Lrx/Subscriber<-TR;>;Lrx/Subscriber<*>;)V", "Lrx/Subscriber<-TR;>;", "LRxInternalOperatorsOperatorMulticast;", "connectWithRxFunctionsAction1:", "Lrx/Subscriber<TR;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorMulticast_$3 = { "", "rx.internal.operators", ptrTable, methods, fields, 7, 0x8008, 4, 1, 8, -1, 9, 10, -1 };
  return &_RxInternalOperatorsOperatorMulticast_$3;
}

@end

void RxInternalOperatorsOperatorMulticast_$3_initWithRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorMulticast_$3 *self, RxSubscriber *capture$0, RxSubscriber *arg$0) {
  self->val$s_ = capture$0;
  RxSubscriber_initWithRxSubscriber_(self, arg$0);
}

RxInternalOperatorsOperatorMulticast_$3 *new_RxInternalOperatorsOperatorMulticast_$3_initWithRxSubscriber_withRxSubscriber_(RxSubscriber *capture$0, RxSubscriber *arg$0) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorMulticast_$3, initWithRxSubscriber_withRxSubscriber_, capture$0, arg$0)
}

RxInternalOperatorsOperatorMulticast_$3 *create_RxInternalOperatorsOperatorMulticast_$3_initWithRxSubscriber_withRxSubscriber_(RxSubscriber *capture$0, RxSubscriber *arg$0) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorMulticast_$3, initWithRxSubscriber_withRxSubscriber_, capture$0, arg$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorMulticast_$3)
