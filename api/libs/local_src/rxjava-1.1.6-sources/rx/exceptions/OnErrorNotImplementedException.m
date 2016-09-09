//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/exceptions/OnErrorNotImplementedException.java
//

#include "J2ObjC_source.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/RuntimeException.h"
#include "rx/exceptions/OnErrorNotImplementedException.h"

inline jlong RxExceptionsOnErrorNotImplementedException_get_serialVersionUID();
#define RxExceptionsOnErrorNotImplementedException_serialVersionUID -6298857009889503852LL
J2OBJC_STATIC_FIELD_CONSTANT(RxExceptionsOnErrorNotImplementedException, serialVersionUID, jlong)

@implementation RxExceptionsOnErrorNotImplementedException

- (instancetype)initWithNSString:(NSString *)message
                 withNSException:(NSException *)e {
  RxExceptionsOnErrorNotImplementedException_initWithNSString_withNSException_(self, message, e);
  return self;
}

- (instancetype)initWithNSException:(NSException *)e {
  RxExceptionsOnErrorNotImplementedException_initWithNSException_(self, e);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withNSException:", NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { "initWithNSException:", NULL, 0x1, -1, 1, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = RxExceptionsOnErrorNotImplementedException_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LNSException;", "LNSException;" };
  static const J2ObjcClassInfo _RxExceptionsOnErrorNotImplementedException = { "OnErrorNotImplementedException", "rx.exceptions", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, -1, -1 };
  return &_RxExceptionsOnErrorNotImplementedException;
}

@end

void RxExceptionsOnErrorNotImplementedException_initWithNSString_withNSException_(RxExceptionsOnErrorNotImplementedException *self, NSString *message, NSException *e) {
  JavaLangRuntimeException_initWithNSString_withNSException_(self, message, e != nil ? e : new_JavaLangNullPointerException_init());
}

RxExceptionsOnErrorNotImplementedException *new_RxExceptionsOnErrorNotImplementedException_initWithNSString_withNSException_(NSString *message, NSException *e) {
  J2OBJC_NEW_IMPL(RxExceptionsOnErrorNotImplementedException, initWithNSString_withNSException_, message, e)
}

RxExceptionsOnErrorNotImplementedException *create_RxExceptionsOnErrorNotImplementedException_initWithNSString_withNSException_(NSString *message, NSException *e) {
  J2OBJC_CREATE_IMPL(RxExceptionsOnErrorNotImplementedException, initWithNSString_withNSException_, message, e)
}

void RxExceptionsOnErrorNotImplementedException_initWithNSException_(RxExceptionsOnErrorNotImplementedException *self, NSException *e) {
  JavaLangRuntimeException_initWithNSString_withNSException_(self, e != nil ? [e getMessage] : nil, e != nil ? e : new_JavaLangNullPointerException_init());
}

RxExceptionsOnErrorNotImplementedException *new_RxExceptionsOnErrorNotImplementedException_initWithNSException_(NSException *e) {
  J2OBJC_NEW_IMPL(RxExceptionsOnErrorNotImplementedException, initWithNSException_, e)
}

RxExceptionsOnErrorNotImplementedException *create_RxExceptionsOnErrorNotImplementedException_initWithNSException_(NSException *e) {
  J2OBJC_CREATE_IMPL(RxExceptionsOnErrorNotImplementedException, initWithNSException_, e)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxExceptionsOnErrorNotImplementedException)