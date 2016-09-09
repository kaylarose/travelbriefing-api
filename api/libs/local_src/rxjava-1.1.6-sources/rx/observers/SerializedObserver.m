//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/observers/SerializedObserver.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "rx/Observer.h"
#include "rx/exceptions/Exceptions.h"
#include "rx/exceptions/OnErrorThrowable.h"
#include "rx/internal/operators/NotificationLite.h"
#include "rx/observers/SerializedObserver.h"

@interface RxObserversSerializedObserver () {
 @public
  id<RxObserver> actual_;
  jboolean emitting_;
  /*!
   @brief Set to true if a terminal event was received.
   */
  volatile_jboolean terminated_;
  /*!
   @brief If not null, it indicates more work.
   */
  RxObserversSerializedObserver_FastList *queue_;
  RxInternalOperatorsNotificationLite *nl_;
}

@end

J2OBJC_FIELD_SETTER(RxObserversSerializedObserver, actual_, id<RxObserver>)
J2OBJC_FIELD_SETTER(RxObserversSerializedObserver, queue_, RxObserversSerializedObserver_FastList *)
J2OBJC_FIELD_SETTER(RxObserversSerializedObserver, nl_, RxInternalOperatorsNotificationLite *)

/*!
 @brief Number of iterations without additional safepoint poll in the drain loop.
 */
inline jint RxObserversSerializedObserver_get_MAX_DRAIN_ITERATION();
#define RxObserversSerializedObserver_MAX_DRAIN_ITERATION 1024
J2OBJC_STATIC_FIELD_CONSTANT(RxObserversSerializedObserver, MAX_DRAIN_ITERATION, jint)

@implementation RxObserversSerializedObserver

- (instancetype)initWithRxObserver:(id<RxObserver>)s {
  RxObserversSerializedObserver_initWithRxObserver_(self, s);
  return self;
}

- (void)onNextWithId:(id)t {
  if (JreLoadVolatileBoolean(&terminated_)) {
    return;
  }
  @synchronized(self) {
    if (JreLoadVolatileBoolean(&terminated_)) {
      return;
    }
    if (emitting_) {
      RxObserversSerializedObserver_FastList *list = queue_;
      if (list == nil) {
        list = new_RxObserversSerializedObserver_FastList_init();
        queue_ = list;
      }
      [list addWithId:[((RxInternalOperatorsNotificationLite *) nil_chk(nl_)) nextWithId:t]];
      return;
    }
    emitting_ = true;
  }
  @try {
    [((id<RxObserver>) nil_chk(actual_)) onNextWithId:t];
  }
  @catch (NSException *e) {
    JreAssignVolatileBoolean(&terminated_, true);
    RxExceptionsExceptions_throwOrReportWithNSException_withRxObserver_withId_(e, actual_, t);
    return;
  }
  for (; ; ) {
    for (jint i = 0; i < RxObserversSerializedObserver_MAX_DRAIN_ITERATION; i++) {
      RxObserversSerializedObserver_FastList *list;
      @synchronized(self) {
        list = queue_;
        if (list == nil) {
          emitting_ = false;
          return;
        }
        queue_ = nil;
      }
      {
        IOSObjectArray *a__ = list->array_;
        id const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
        id const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          id o = *b__++;
          if (o == nil) {
            break;
          }
          @try {
            if ([((RxInternalOperatorsNotificationLite *) nil_chk(nl_)) acceptWithRxObserver:actual_ withId:o]) {
              JreAssignVolatileBoolean(&terminated_, true);
              return;
            }
          }
          @catch (NSException *e) {
            JreAssignVolatileBoolean(&terminated_, true);
            RxExceptionsExceptions_throwIfFatalWithNSException_(e);
            [actual_ onErrorWithNSException:RxExceptionsOnErrorThrowable_addValueAsLastCauseWithNSException_withId_(e, t)];
            return;
          }
        }
      }
    }
  }
}

- (void)onErrorWithNSException:(NSException *)e {
  RxExceptionsExceptions_throwIfFatalWithNSException_(e);
  if (JreLoadVolatileBoolean(&terminated_)) {
    return;
  }
  @synchronized(self) {
    if (JreLoadVolatileBoolean(&terminated_)) {
      return;
    }
    JreAssignVolatileBoolean(&terminated_, true);
    if (emitting_) {
      RxObserversSerializedObserver_FastList *list = queue_;
      if (list == nil) {
        list = new_RxObserversSerializedObserver_FastList_init();
        queue_ = list;
      }
      [list addWithId:[((RxInternalOperatorsNotificationLite *) nil_chk(nl_)) errorWithNSException:e]];
      return;
    }
    emitting_ = true;
  }
  [((id<RxObserver>) nil_chk(actual_)) onErrorWithNSException:e];
}

- (void)onCompleted {
  if (JreLoadVolatileBoolean(&terminated_)) {
    return;
  }
  @synchronized(self) {
    if (JreLoadVolatileBoolean(&terminated_)) {
      return;
    }
    JreAssignVolatileBoolean(&terminated_, true);
    if (emitting_) {
      RxObserversSerializedObserver_FastList *list = queue_;
      if (list == nil) {
        list = new_RxObserversSerializedObserver_FastList_init();
        queue_ = list;
      }
      [list addWithId:[((RxInternalOperatorsNotificationLite *) nil_chk(nl_)) completed]];
      return;
    }
    emitting_ = true;
  }
  [((id<RxObserver>) nil_chk(actual_)) onCompleted];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxObserver:", NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { "onNextWithId:", "V", 0x1, 2, 3, -1, 4, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "actual_", "LRxObserver;", .constantValue.asLong = 0, 0x12, -1, -1, 7, -1 },
    { "emitting_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "terminated_", "Z", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "queue_", "LRxObserversSerializedObserver_FastList;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "nl_", "LRxInternalOperatorsNotificationLite;", .constantValue.asLong = 0, 0x12, -1, -1, 8, -1 },
    { "MAX_DRAIN_ITERATION", "I", .constantValue.asInt = RxObserversSerializedObserver_MAX_DRAIN_ITERATION, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LRxObserver;", "(Lrx/Observer<-TT;>;)V", "onNext", "LNSObject;", "(TT;)V", "onError", "LNSException;", "Lrx/Observer<-TT;>;", "Lrx/internal/operators/NotificationLite<TT;>;", "LRxObserversSerializedObserver_FastList;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observer<TT;>;" };
  static const J2ObjcClassInfo _RxObserversSerializedObserver = { "SerializedObserver", "rx.observers", ptrTable, methods, fields, 7, 0x1, 4, 6, -1, 9, -1, 10, -1 };
  return &_RxObserversSerializedObserver;
}

@end

void RxObserversSerializedObserver_initWithRxObserver_(RxObserversSerializedObserver *self, id<RxObserver> s) {
  NSObject_init(self);
  self->nl_ = RxInternalOperatorsNotificationLite_instance();
  self->actual_ = s;
}

RxObserversSerializedObserver *new_RxObserversSerializedObserver_initWithRxObserver_(id<RxObserver> s) {
  J2OBJC_NEW_IMPL(RxObserversSerializedObserver, initWithRxObserver_, s)
}

RxObserversSerializedObserver *create_RxObserversSerializedObserver_initWithRxObserver_(id<RxObserver> s) {
  J2OBJC_CREATE_IMPL(RxObserversSerializedObserver, initWithRxObserver_, s)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxObserversSerializedObserver)

@implementation RxObserversSerializedObserver_FastList

- (void)addWithId:(id)o {
  jint s = size_;
  IOSObjectArray *a = array_;
  if (a == nil) {
    a = [IOSObjectArray newArrayWithLength:16 type:NSObject_class_()];
    array_ = a;
  }
  else if (s == a->size_) {
    IOSObjectArray *array2 = [IOSObjectArray newArrayWithLength:s + (JreRShift32(s, 2)) type:NSObject_class_()];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(a, 0, array2, 0, s);
    a = array2;
    array_ = a;
  }
  (void) IOSObjectArray_Set(a, s, o);
  size_ = s + 1;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  RxObserversSerializedObserver_FastList_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "addWithId:", "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { "init", NULL, 0x0, -1, -1, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "array_", "[LNSObject;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "size_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "add", "LNSObject;", "LRxObserversSerializedObserver;" };
  static const J2ObjcClassInfo _RxObserversSerializedObserver_FastList = { "FastList", "rx.observers", ptrTable, methods, fields, 7, 0x18, 2, 2, 2, -1, -1, -1, -1 };
  return &_RxObserversSerializedObserver_FastList;
}

@end

void RxObserversSerializedObserver_FastList_init(RxObserversSerializedObserver_FastList *self) {
  NSObject_init(self);
}

RxObserversSerializedObserver_FastList *new_RxObserversSerializedObserver_FastList_init() {
  J2OBJC_NEW_IMPL(RxObserversSerializedObserver_FastList, init)
}

RxObserversSerializedObserver_FastList *create_RxObserversSerializedObserver_FastList_init() {
  J2OBJC_CREATE_IMPL(RxObserversSerializedObserver_FastList, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxObserversSerializedObserver_FastList)
