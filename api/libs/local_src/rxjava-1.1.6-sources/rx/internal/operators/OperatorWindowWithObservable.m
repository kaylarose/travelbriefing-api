//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorWindowWithObservable.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Long.h"
#include "java/util/ArrayList.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "rx/Observable.h"
#include "rx/Observer.h"
#include "rx/Subscriber.h"
#include "rx/Subscription.h"
#include "rx/internal/operators/NotificationLite.h"
#include "rx/internal/operators/OperatorWindowWithObservable.h"
#include "rx/observers/SerializedSubscriber.h"
#include "rx/subjects/UnicastSubject.h"

J2OBJC_INITIALIZED_DEFN(RxInternalOperatorsOperatorWindowWithObservable)

id RxInternalOperatorsOperatorWindowWithObservable_NEXT_SUBJECT;
RxInternalOperatorsNotificationLite *RxInternalOperatorsOperatorWindowWithObservable_nl;

@implementation RxInternalOperatorsOperatorWindowWithObservable

+ (id)NEXT_SUBJECT {
  return RxInternalOperatorsOperatorWindowWithObservable_NEXT_SUBJECT;
}

+ (RxInternalOperatorsNotificationLite *)nl {
  return RxInternalOperatorsOperatorWindowWithObservable_nl;
}

- (instancetype)initWithRxObservable:(RxObservable *)other {
  RxInternalOperatorsOperatorWindowWithObservable_initWithRxObservable_(self, other);
  return self;
}

- (RxSubscriber *)callWithId:(RxSubscriber *)child {
  RxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber *sub = new_RxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber_initWithRxSubscriber_(child);
  RxInternalOperatorsOperatorWindowWithObservable_BoundarySubscriber *bs = new_RxInternalOperatorsOperatorWindowWithObservable_BoundarySubscriber_initWithRxSubscriber_withRxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber_(child, sub);
  [((RxSubscriber *) nil_chk(child)) addWithRxSubscription:sub];
  [child addWithRxSubscription:bs];
  [sub replaceWindow];
  (void) [((RxObservable *) nil_chk(other_)) unsafeSubscribeWithRxSubscriber:bs];
  return sub;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxObservable:", NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { "callWithId:", "LRxSubscriber;", 0x1, 2, 3, -1, 4, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "other_", "LRxObservable;", .constantValue.asLong = 0, 0x10, -1, -1, 5, -1 },
    { "NEXT_SUBJECT", "LNSObject;", .constantValue.asLong = 0, 0x18, -1, 6, -1, -1 },
    { "nl", "LRxInternalOperatorsNotificationLite;", .constantValue.asLong = 0, 0x18, -1, 7, 8, -1 },
  };
  static const void *ptrTable[] = { "LRxObservable;", "(Lrx/Observable<TU;>;)V", "call", "LRxSubscriber;", "(Lrx/Subscriber<-Lrx/Observable<TT;>;>;)Lrx/Subscriber<-TT;>;", "Lrx/Observable<TU;>;", &RxInternalOperatorsOperatorWindowWithObservable_NEXT_SUBJECT, &RxInternalOperatorsOperatorWindowWithObservable_nl, "Lrx/internal/operators/NotificationLite<Ljava/lang/Object;>;", "LRxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber;LRxInternalOperatorsOperatorWindowWithObservable_BoundarySubscriber;", "<T:Ljava/lang/Object;U:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$Operator<Lrx/Observable<TT;>;TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorWindowWithObservable = { "OperatorWindowWithObservable", "rx.internal.operators", ptrTable, methods, fields, 7, 0x11, 2, 3, -1, 9, -1, 10, -1 };
  return &_RxInternalOperatorsOperatorWindowWithObservable;
}

+ (void)initialize {
  if (self == [RxInternalOperatorsOperatorWindowWithObservable class]) {
    RxInternalOperatorsOperatorWindowWithObservable_NEXT_SUBJECT = new_NSObject_init();
    RxInternalOperatorsOperatorWindowWithObservable_nl = RxInternalOperatorsNotificationLite_instance();
    J2OBJC_SET_INITIALIZED(RxInternalOperatorsOperatorWindowWithObservable)
  }
}

@end

void RxInternalOperatorsOperatorWindowWithObservable_initWithRxObservable_(RxInternalOperatorsOperatorWindowWithObservable *self, RxObservable *other) {
  NSObject_init(self);
  self->other_ = other;
}

RxInternalOperatorsOperatorWindowWithObservable *new_RxInternalOperatorsOperatorWindowWithObservable_initWithRxObservable_(RxObservable *other) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorWindowWithObservable, initWithRxObservable_, other)
}

RxInternalOperatorsOperatorWindowWithObservable *create_RxInternalOperatorsOperatorWindowWithObservable_initWithRxObservable_(RxObservable *other) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorWindowWithObservable, initWithRxObservable_, other)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorWindowWithObservable)

@implementation RxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber

- (instancetype)initWithRxSubscriber:(RxSubscriber *)child {
  RxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber_initWithRxSubscriber_(self, child);
  return self;
}

- (void)onStart {
  [self requestWithLong:JavaLangLong_MAX_VALUE];
}

- (void)onNextWithId:(id)t {
  id<JavaUtilList> localQueue;
  @synchronized(guard_) {
    if (emitting_) {
      if (queue_ == nil) {
        queue_ = new_JavaUtilArrayList_init();
      }
      [queue_ addWithId:t];
      return;
    }
    localQueue = queue_;
    queue_ = nil;
    emitting_ = true;
  }
  jboolean once = true;
  jboolean skipFinal = false;
  @try {
    do {
      [self drainWithJavaUtilList:localQueue];
      if (once) {
        once = false;
        [self emitValueWithId:t];
      }
      @synchronized(guard_) {
        localQueue = queue_;
        queue_ = nil;
        if (localQueue == nil) {
          emitting_ = false;
          skipFinal = true;
          return;
        }
      }
    }
    while (![((RxSubscriber *) nil_chk(child_)) isUnsubscribed]);
  }
  @finally {
    if (!skipFinal) {
      @synchronized(guard_) {
        emitting_ = false;
      }
    }
  }
}

- (void)drainWithJavaUtilList:(id<JavaUtilList>)queue {
  if (queue == nil) {
    return;
  }
  for (id __strong o in queue) {
    if (o == JreLoadStatic(RxInternalOperatorsOperatorWindowWithObservable, NEXT_SUBJECT)) {
      [self replaceSubject];
    }
    else if ([((RxInternalOperatorsNotificationLite *) nil_chk(JreLoadStatic(RxInternalOperatorsOperatorWindowWithObservable, nl))) isErrorWithId:o]) {
      [self errorWithNSException:[JreLoadStatic(RxInternalOperatorsOperatorWindowWithObservable, nl) getErrorWithId:o]];
      break;
    }
    else if ([JreLoadStatic(RxInternalOperatorsOperatorWindowWithObservable, nl) isCompletedWithId:o]) {
      [self complete];
      break;
    }
    else {
      id t = o;
      [self emitValueWithId:t];
    }
  }
}

- (void)replaceSubject {
  id<RxObserver> s = consumer_;
  if (s != nil) {
    [s onCompleted];
  }
  [self createNewWindow];
  [((RxSubscriber *) nil_chk(child_)) onNextWithId:producer_SourceSubscriber_];
}

- (void)createNewWindow {
  RxSubjectsUnicastSubject *bus = RxSubjectsUnicastSubject_create();
  consumer_ = bus;
  producer_SourceSubscriber_ = bus;
}

- (void)emitValueWithId:(id)t {
  id<RxObserver> s = consumer_;
  if (s != nil) {
    [s onNextWithId:t];
  }
}

- (void)onErrorWithNSException:(NSException *)e {
  @synchronized(guard_) {
    if (emitting_) {
      queue_ = JavaUtilCollections_singletonListWithId_([((RxInternalOperatorsNotificationLite *) nil_chk(JreLoadStatic(RxInternalOperatorsOperatorWindowWithObservable, nl))) errorWithNSException:e]);
      return;
    }
    queue_ = nil;
    emitting_ = true;
  }
  [self errorWithNSException:e];
}

- (void)onCompleted {
  id<JavaUtilList> localQueue;
  @synchronized(guard_) {
    if (emitting_) {
      if (queue_ == nil) {
        queue_ = new_JavaUtilArrayList_init();
      }
      [queue_ addWithId:[((RxInternalOperatorsNotificationLite *) nil_chk(JreLoadStatic(RxInternalOperatorsOperatorWindowWithObservable, nl))) completed]];
      return;
    }
    localQueue = queue_;
    queue_ = nil;
    emitting_ = true;
  }
  @try {
    [self drainWithJavaUtilList:localQueue];
  }
  @catch (NSException *e) {
    [self errorWithNSException:e];
    return;
  }
  [self complete];
}

- (void)replaceWindow {
  id<JavaUtilList> localQueue;
  @synchronized(guard_) {
    if (emitting_) {
      if (queue_ == nil) {
        queue_ = new_JavaUtilArrayList_init();
      }
      [queue_ addWithId:JreLoadStatic(RxInternalOperatorsOperatorWindowWithObservable, NEXT_SUBJECT)];
      return;
    }
    localQueue = queue_;
    queue_ = nil;
    emitting_ = true;
  }
  jboolean once = true;
  jboolean skipFinal = false;
  @try {
    do {
      [self drainWithJavaUtilList:localQueue];
      if (once) {
        once = false;
        [self replaceSubject];
      }
      @synchronized(guard_) {
        localQueue = queue_;
        queue_ = nil;
        if (localQueue == nil) {
          emitting_ = false;
          skipFinal = true;
          return;
        }
      }
    }
    while (![((RxSubscriber *) nil_chk(child_)) isUnsubscribed]);
  }
  @finally {
    if (!skipFinal) {
      @synchronized(guard_) {
        emitting_ = false;
      }
    }
  }
}

- (void)complete {
  id<RxObserver> s = consumer_;
  consumer_ = nil;
  producer_SourceSubscriber_ = nil;
  if (s != nil) {
    [s onCompleted];
  }
  [((RxSubscriber *) nil_chk(child_)) onCompleted];
  [self unsubscribe];
}

- (void)errorWithNSException:(NSException *)e {
  id<RxObserver> s = consumer_;
  consumer_ = nil;
  producer_SourceSubscriber_ = nil;
  if (s != nil) {
    [s onErrorWithNSException:e];
  }
  [((RxSubscriber *) nil_chk(child_)) onErrorWithNSException:e];
  [self unsubscribe];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxSubscriber:", NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { "onStart", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "onNextWithId:", "V", 0x1, 2, 3, -1, 4, -1, -1 },
    { "drainWithJavaUtilList:", "V", 0x0, 5, 6, -1, 7, -1, -1 },
    { "replaceSubject", "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { "createNewWindow", "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { "emitValueWithId:", "V", 0x0, 8, 3, -1, 4, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 9, 10, -1, -1, -1, -1 },
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "replaceWindow", "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { "complete", "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { "errorWithNSException:", "V", 0x0, 11, 10, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "child_", "LRxSubscriber;", .constantValue.asLong = 0, 0x10, -1, -1, 12, -1 },
    { "guard_", "LNSObject;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "consumer_", "LRxObserver;", .constantValue.asLong = 0, 0x0, -1, -1, 13, -1 },
    { "producer_SourceSubscriber_", "LRxObservable;", .constantValue.asLong = 0, 0x0, 14, -1, 15, -1 },
    { "emitting_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "queue_", "LJavaUtilList;", .constantValue.asLong = 0, 0x0, -1, -1, 16, -1 },
  };
  static const void *ptrTable[] = { "LRxSubscriber;", "(Lrx/Subscriber<-Lrx/Observable<TT;>;>;)V", "onNext", "LNSObject;", "(TT;)V", "drain", "LJavaUtilList;", "(Ljava/util/List<Ljava/lang/Object;>;)V", "emitValue", "onError", "LNSException;", "error", "Lrx/Subscriber<-Lrx/Observable<TT;>;>;", "Lrx/Observer<TT;>;", "producer", "Lrx/Observable<TT;>;", "Ljava/util/List<Ljava/lang/Object;>;", "LRxInternalOperatorsOperatorWindowWithObservable;", "<T:Ljava/lang/Object;>Lrx/Subscriber<TT;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber = { "SourceSubscriber", "rx.internal.operators", ptrTable, methods, fields, 7, 0x18, 12, 6, 17, -1, -1, 18, -1 };
  return &_RxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber;
}

@end

void RxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber_initWithRxSubscriber_(RxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber *self, RxSubscriber *child) {
  RxSubscriber_init(self);
  self->child_ = new_RxObserversSerializedSubscriber_initWithRxSubscriber_(child);
  self->guard_ = new_NSObject_init();
}

RxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber *new_RxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber_initWithRxSubscriber_(RxSubscriber *child) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber, initWithRxSubscriber_, child)
}

RxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber *create_RxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber_initWithRxSubscriber_(RxSubscriber *child) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber, initWithRxSubscriber_, child)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber)

@implementation RxInternalOperatorsOperatorWindowWithObservable_BoundarySubscriber

- (instancetype)initWithRxSubscriber:(RxSubscriber *)child
withRxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber:(RxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber *)sub {
  RxInternalOperatorsOperatorWindowWithObservable_BoundarySubscriber_initWithRxSubscriber_withRxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber_(self, child, sub);
  return self;
}

- (void)onStart {
  [self requestWithLong:JavaLangLong_MAX_VALUE];
}

- (void)onNextWithId:(id)t {
  [((RxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber *) nil_chk(sub_)) replaceWindow];
}

- (void)onErrorWithNSException:(NSException *)e {
  [((RxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber *) nil_chk(sub_)) onErrorWithNSException:e];
}

- (void)onCompleted {
  [((RxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber *) nil_chk(sub_)) onCompleted];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxSubscriber:withRxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber:", NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { "onStart", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "onNextWithId:", "V", 0x1, 2, 3, -1, 4, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "sub_", "LRxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber;", .constantValue.asLong = 0, 0x10, -1, -1, 7, -1 },
  };
  static const void *ptrTable[] = { "LRxSubscriber;LRxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber;", "(Lrx/Subscriber<*>;Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber<TT;>;)V", "onNext", "LNSObject;", "(TU;)V", "onError", "LNSException;", "Lrx/internal/operators/OperatorWindowWithObservable$SourceSubscriber<TT;>;", "LRxInternalOperatorsOperatorWindowWithObservable;", "<T:Ljava/lang/Object;U:Ljava/lang/Object;>Lrx/Subscriber<TU;>;" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorWindowWithObservable_BoundarySubscriber = { "BoundarySubscriber", "rx.internal.operators", ptrTable, methods, fields, 7, 0x18, 5, 1, 8, -1, -1, 9, -1 };
  return &_RxInternalOperatorsOperatorWindowWithObservable_BoundarySubscriber;
}

@end

void RxInternalOperatorsOperatorWindowWithObservable_BoundarySubscriber_initWithRxSubscriber_withRxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber_(RxInternalOperatorsOperatorWindowWithObservable_BoundarySubscriber *self, RxSubscriber *child, RxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber *sub) {
  RxSubscriber_init(self);
  self->sub_ = sub;
}

RxInternalOperatorsOperatorWindowWithObservable_BoundarySubscriber *new_RxInternalOperatorsOperatorWindowWithObservable_BoundarySubscriber_initWithRxSubscriber_withRxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber_(RxSubscriber *child, RxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber *sub) {
  J2OBJC_NEW_IMPL(RxInternalOperatorsOperatorWindowWithObservable_BoundarySubscriber, initWithRxSubscriber_withRxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber_, child, sub)
}

RxInternalOperatorsOperatorWindowWithObservable_BoundarySubscriber *create_RxInternalOperatorsOperatorWindowWithObservable_BoundarySubscriber_initWithRxSubscriber_withRxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber_(RxSubscriber *child, RxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber *sub) {
  J2OBJC_CREATE_IMPL(RxInternalOperatorsOperatorWindowWithObservable_BoundarySubscriber, initWithRxSubscriber_withRxInternalOperatorsOperatorWindowWithObservable_SourceSubscriber_, child, sub)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorWindowWithObservable_BoundarySubscriber)