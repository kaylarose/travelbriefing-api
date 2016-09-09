//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/observers/SafeSubscriber.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/RuntimeException.h"
#include "java/util/Arrays.h"
#include "java/util/List.h"
#include "rx/Subscriber.h"
#include "rx/exceptions/CompositeException.h"
#include "rx/exceptions/Exceptions.h"
#include "rx/exceptions/OnCompletedFailedException.h"
#include "rx/exceptions/OnErrorFailedException.h"
#include "rx/exceptions/OnErrorNotImplementedException.h"
#include "rx/exceptions/UnsubscribeFailedException.h"
#include "rx/internal/util/RxJavaPluginUtils.h"
#include "rx/observers/SafeSubscriber.h"

@interface RxObserversSafeSubscriber () {
 @public
  RxSubscriber *actual_;
}

@end

J2OBJC_FIELD_SETTER(RxObserversSafeSubscriber, actual_, RxSubscriber *)

@implementation RxObserversSafeSubscriber

- (instancetype)initWithRxSubscriber:(RxSubscriber *)actual {
  RxObserversSafeSubscriber_initWithRxSubscriber_(self, actual);
  return self;
}

- (void)onCompleted {
  if (!done_) {
    done_ = true;
    @try {
      [((RxSubscriber *) nil_chk(actual_)) onCompleted];
    }
    @catch (NSException *e) {
      RxExceptionsExceptions_throwIfFatalWithNSException_(e);
      RxInternalUtilRxJavaPluginUtils_handleExceptionWithNSException_(e);
      @throw new_RxExceptionsOnCompletedFailedException_initWithNSString_withNSException_([((NSException *) nil_chk(e)) getMessage], e);
    }
    @finally {
      @try {
        [self unsubscribe];
      }
      @catch (NSException *e) {
        RxInternalUtilRxJavaPluginUtils_handleExceptionWithNSException_(e);
        @throw new_RxExceptionsUnsubscribeFailedException_initWithNSString_withNSException_([((NSException *) nil_chk(e)) getMessage], e);
      }
    }
  }
}

- (void)onErrorWithNSException:(NSException *)e {
  RxExceptionsExceptions_throwIfFatalWithNSException_(e);
  if (!done_) {
    done_ = true;
    [self _onErrorWithNSException:e];
  }
}

- (void)onNextWithId:(id)args {
  @try {
    if (!done_) {
      [((RxSubscriber *) nil_chk(actual_)) onNextWithId:args];
    }
  }
  @catch (NSException *e) {
    RxExceptionsExceptions_throwOrReportWithNSException_withRxObserver_(e, self);
  }
}

- (void)_onErrorWithNSException:(NSException *)e {
  RxInternalUtilRxJavaPluginUtils_handleExceptionWithNSException_(e);
  @try {
    [((RxSubscriber *) nil_chk(actual_)) onErrorWithNSException:e];
  }
  @catch (NSException *e2) {
    if ([e2 isKindOfClass:[RxExceptionsOnErrorNotImplementedException class]]) {
      @try {
        [self unsubscribe];
      }
      @catch (NSException *unsubscribeException) {
        RxInternalUtilRxJavaPluginUtils_handleExceptionWithNSException_(unsubscribeException);
        @throw new_JavaLangRuntimeException_initWithNSString_withNSException_(@"Observer.onError not implemented and error while unsubscribing.", new_RxExceptionsCompositeException_initWithJavaUtilCollection_(JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray newArrayWithObjects:(id[]){ e, unsubscribeException } count:2 type:NSException_class_()])));
      }
      @throw (RxExceptionsOnErrorNotImplementedException *) cast_chk(e2, [RxExceptionsOnErrorNotImplementedException class]);
    }
    else {
      RxInternalUtilRxJavaPluginUtils_handleExceptionWithNSException_(e2);
      @try {
        [self unsubscribe];
      }
      @catch (NSException *unsubscribeException) {
        RxInternalUtilRxJavaPluginUtils_handleExceptionWithNSException_(unsubscribeException);
        @throw new_RxExceptionsOnErrorFailedException_initWithNSString_withNSException_(@"Error occurred when trying to propagate error to Observer.onError and during unsubscription.", new_RxExceptionsCompositeException_initWithJavaUtilCollection_(JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray newArrayWithObjects:(id[]){ e, e2, unsubscribeException } count:3 type:NSException_class_()])));
      }
      @throw new_RxExceptionsOnErrorFailedException_initWithNSString_withNSException_(@"Error occurred when trying to propagate error to Observer.onError", new_RxExceptionsCompositeException_initWithJavaUtilCollection_(JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray newArrayWithObjects:(id[]){ e, e2 } count:2 type:NSException_class_()])));
    }
  }
  @try {
    [self unsubscribe];
  }
  @catch (JavaLangRuntimeException *unsubscribeException) {
    RxInternalUtilRxJavaPluginUtils_handleExceptionWithNSException_(unsubscribeException);
    @throw new_RxExceptionsOnErrorFailedException_initWithNSException_(unsubscribeException);
  }
}

- (RxSubscriber *)getActual {
  return actual_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxSubscriber:", NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { "onNextWithId:", "V", 0x1, 4, 5, -1, 6, -1, -1 },
    { "_onErrorWithNSException:", "V", 0x4, 7, 3, -1, -1, -1, -1 },
    { "getActual", "LRxSubscriber;", 0x1, -1, -1, -1, 8, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "actual_", "LRxSubscriber;", .constantValue.asLong = 0, 0x12, -1, -1, 9, -1 },
    { "done_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LRxSubscriber;", "(Lrx/Subscriber<-TT;>;)V", "onError", "LNSException;", "onNext", "LNSObject;", "(TT;)V", "_onError", "()Lrx/Subscriber<-TT;>;", "Lrx/Subscriber<-TT;>;", "<T:Ljava/lang/Object;>Lrx/Subscriber<TT;>;" };
  static const J2ObjcClassInfo _RxObserversSafeSubscriber = { "SafeSubscriber", "rx.observers", ptrTable, methods, fields, 7, 0x1, 6, 2, -1, -1, -1, 10, -1 };
  return &_RxObserversSafeSubscriber;
}

@end

void RxObserversSafeSubscriber_initWithRxSubscriber_(RxObserversSafeSubscriber *self, RxSubscriber *actual) {
  RxSubscriber_initWithRxSubscriber_(self, actual);
  self->done_ = false;
  self->actual_ = actual;
}

RxObserversSafeSubscriber *new_RxObserversSafeSubscriber_initWithRxSubscriber_(RxSubscriber *actual) {
  J2OBJC_NEW_IMPL(RxObserversSafeSubscriber, initWithRxSubscriber_, actual)
}

RxObserversSafeSubscriber *create_RxObserversSafeSubscriber_initWithRxSubscriber_(RxSubscriber *actual) {
  J2OBJC_CREATE_IMPL(RxObserversSafeSubscriber, initWithRxSubscriber_, actual)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxObserversSafeSubscriber)
