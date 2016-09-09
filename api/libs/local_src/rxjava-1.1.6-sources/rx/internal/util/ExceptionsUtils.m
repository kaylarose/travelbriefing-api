//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/util/ExceptionsUtils.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "java/util/concurrent/atomic/AtomicReference.h"
#include "rx/exceptions/CompositeException.h"
#include "rx/internal/util/ExceptionsUtils.h"

/*!
 @brief The single instance of a Throwable indicating a terminal state.
 */
inline NSException *RxInternalUtilExceptionsUtils_get_TERMINATED();
static NSException *RxInternalUtilExceptionsUtils_TERMINATED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxInternalUtilExceptionsUtils, TERMINATED, NSException *)

__attribute__((unused)) static void RxInternalUtilExceptionsUtils_initWithNSString_withInt_(RxInternalUtilExceptionsUtils *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static RxInternalUtilExceptionsUtils *new_RxInternalUtilExceptionsUtils_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(RxInternalUtilExceptionsUtils)

RxInternalUtilExceptionsUtils *RxInternalUtilExceptionsUtils_values_[0];

@implementation RxInternalUtilExceptionsUtils

+ (jboolean)addThrowableWithJavaUtilConcurrentAtomicAtomicReference:(JavaUtilConcurrentAtomicAtomicReference *)field
                                                    withNSException:(NSException *)error {
  return RxInternalUtilExceptionsUtils_addThrowableWithJavaUtilConcurrentAtomicAtomicReference_withNSException_(field, error);
}

+ (NSException *)terminateWithJavaUtilConcurrentAtomicAtomicReference:(JavaUtilConcurrentAtomicAtomicReference *)field {
  return RxInternalUtilExceptionsUtils_terminateWithJavaUtilConcurrentAtomicAtomicReference_(field);
}

+ (jboolean)isTerminatedWithJavaUtilConcurrentAtomicAtomicReference:(JavaUtilConcurrentAtomicAtomicReference *)field {
  return RxInternalUtilExceptionsUtils_isTerminatedWithJavaUtilConcurrentAtomicAtomicReference_(field);
}

+ (jboolean)isTerminatedWithNSException:(NSException *)error {
  return RxInternalUtilExceptionsUtils_isTerminatedWithNSException_(error);
}

+ (IOSObjectArray *)values {
  return RxInternalUtilExceptionsUtils_values();
}

+ (RxInternalUtilExceptionsUtils *)valueOfWithNSString:(NSString *)name {
  return RxInternalUtilExceptionsUtils_valueOfWithNSString_(name);
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "addThrowableWithJavaUtilConcurrentAtomicAtomicReference:withNSException:", "Z", 0x9, 0, 1, -1, 2, -1, -1 },
    { "terminateWithJavaUtilConcurrentAtomicAtomicReference:", "LNSException;", 0x9, 3, 4, -1, 5, -1, -1 },
    { "isTerminatedWithJavaUtilConcurrentAtomicAtomicReference:", "Z", 0x9, 6, 4, -1, 7, -1, -1 },
    { "isTerminatedWithNSException:", "Z", 0x9, 6, 8, -1, -1, -1, -1 },
    { "values", "[LRxInternalUtilExceptionsUtils;", 0x9, -1, -1, -1, -1, -1, -1 },
    { "valueOfWithNSString:", "LRxInternalUtilExceptionsUtils;", 0x9, 9, 10, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TERMINATED", "LNSException;", .constantValue.asLong = 0, 0x1a, -1, 11, -1, -1 },
  };
  static const void *ptrTable[] = { "addThrowable", "LJavaUtilConcurrentAtomicAtomicReference;LNSException;", "(Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;Ljava/lang/Throwable;)Z", "terminate", "LJavaUtilConcurrentAtomicAtomicReference;", "(Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;)Ljava/lang/Throwable;", "isTerminated", "(Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;)Z", "LNSException;", "valueOf", "LNSString;", &RxInternalUtilExceptionsUtils_TERMINATED, "Ljava/lang/Enum<Lrx/internal/util/ExceptionsUtils;>;" };
  static const J2ObjcClassInfo _RxInternalUtilExceptionsUtils = { "ExceptionsUtils", "rx.internal.util", ptrTable, methods, fields, 7, 0x4011, 6, 1, -1, -1, -1, 12, -1 };
  return &_RxInternalUtilExceptionsUtils;
}

+ (void)initialize {
  if (self == [RxInternalUtilExceptionsUtils class]) {
    RxInternalUtilExceptionsUtils_TERMINATED = new_NSException_initWithNSString_(@"Terminated");
    J2OBJC_SET_INITIALIZED(RxInternalUtilExceptionsUtils)
  }
}

@end

jboolean RxInternalUtilExceptionsUtils_addThrowableWithJavaUtilConcurrentAtomicAtomicReference_withNSException_(JavaUtilConcurrentAtomicAtomicReference *field, NSException *error) {
  RxInternalUtilExceptionsUtils_initialize();
  for (; ; ) {
    NSException *current = [((JavaUtilConcurrentAtomicAtomicReference *) nil_chk(field)) get];
    if (current == RxInternalUtilExceptionsUtils_TERMINATED) {
      return false;
    }
    NSException *next;
    if (current == nil) {
      next = error;
    }
    else if ([current isKindOfClass:[RxExceptionsCompositeException class]]) {
      id<JavaUtilList> list = new_JavaUtilArrayList_initWithJavaUtilCollection_([((RxExceptionsCompositeException *) cast_chk(current, [RxExceptionsCompositeException class])) getExceptions]);
      [list addWithId:error];
      next = new_RxExceptionsCompositeException_initWithJavaUtilCollection_(list);
    }
    else {
      next = new_RxExceptionsCompositeException_initWithNSExceptionArray_([IOSObjectArray newArrayWithObjects:(id[]){ current, error } count:2 type:NSException_class_()]);
    }
    if ([field compareAndSetWithId:current withId:next]) {
      return true;
    }
  }
}

NSException *RxInternalUtilExceptionsUtils_terminateWithJavaUtilConcurrentAtomicAtomicReference_(JavaUtilConcurrentAtomicAtomicReference *field) {
  RxInternalUtilExceptionsUtils_initialize();
  NSException *current = [((JavaUtilConcurrentAtomicAtomicReference *) nil_chk(field)) get];
  if (current != RxInternalUtilExceptionsUtils_TERMINATED) {
    current = [field getAndSetWithId:RxInternalUtilExceptionsUtils_TERMINATED];
  }
  return current;
}

jboolean RxInternalUtilExceptionsUtils_isTerminatedWithJavaUtilConcurrentAtomicAtomicReference_(JavaUtilConcurrentAtomicAtomicReference *field) {
  RxInternalUtilExceptionsUtils_initialize();
  return RxInternalUtilExceptionsUtils_isTerminatedWithNSException_([((JavaUtilConcurrentAtomicAtomicReference *) nil_chk(field)) get]);
}

jboolean RxInternalUtilExceptionsUtils_isTerminatedWithNSException_(NSException *error) {
  RxInternalUtilExceptionsUtils_initialize();
  return error == RxInternalUtilExceptionsUtils_TERMINATED;
}

void RxInternalUtilExceptionsUtils_initWithNSString_withInt_(RxInternalUtilExceptionsUtils *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

RxInternalUtilExceptionsUtils *new_RxInternalUtilExceptionsUtils_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  J2OBJC_NEW_IMPL(RxInternalUtilExceptionsUtils, initWithNSString_withInt_, __name, __ordinal)
}

IOSObjectArray *RxInternalUtilExceptionsUtils_values() {
  RxInternalUtilExceptionsUtils_initialize();
  return [IOSObjectArray arrayWithObjects:RxInternalUtilExceptionsUtils_values_ count:0 type:RxInternalUtilExceptionsUtils_class_()];
}

RxInternalUtilExceptionsUtils *RxInternalUtilExceptionsUtils_valueOfWithNSString_(NSString *name) {
  RxInternalUtilExceptionsUtils_initialize();
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

RxInternalUtilExceptionsUtils *RxInternalUtilExceptionsUtils_fromOrdinal(NSUInteger ordinal) {
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalUtilExceptionsUtils)
