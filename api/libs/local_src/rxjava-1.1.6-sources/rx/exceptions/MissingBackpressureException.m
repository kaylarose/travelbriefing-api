//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/exceptions/MissingBackpressureException.java
//

#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "rx/exceptions/MissingBackpressureException.h"

inline jlong RxExceptionsMissingBackpressureException_get_serialVersionUID();
#define RxExceptionsMissingBackpressureException_serialVersionUID 7250870679677032194LL
J2OBJC_STATIC_FIELD_CONSTANT(RxExceptionsMissingBackpressureException, serialVersionUID, jlong)

@implementation RxExceptionsMissingBackpressureException

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  RxExceptionsMissingBackpressureException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)message {
  RxExceptionsMissingBackpressureException_initWithNSString_(self, message);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { "initWithNSString:", NULL, 0x1, -1, 0, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = RxExceptionsMissingBackpressureException_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;" };
  static const J2ObjcClassInfo _RxExceptionsMissingBackpressureException = { "MissingBackpressureException", "rx.exceptions", ptrTable, methods, fields, 7, 0x1, 2, 1, -1, -1, -1, -1, -1 };
  return &_RxExceptionsMissingBackpressureException;
}

@end

void RxExceptionsMissingBackpressureException_init(RxExceptionsMissingBackpressureException *self) {
  JavaLangException_init(self);
}

RxExceptionsMissingBackpressureException *new_RxExceptionsMissingBackpressureException_init() {
  J2OBJC_NEW_IMPL(RxExceptionsMissingBackpressureException, init)
}

RxExceptionsMissingBackpressureException *create_RxExceptionsMissingBackpressureException_init() {
  J2OBJC_CREATE_IMPL(RxExceptionsMissingBackpressureException, init)
}

void RxExceptionsMissingBackpressureException_initWithNSString_(RxExceptionsMissingBackpressureException *self, NSString *message) {
  JavaLangException_initWithNSString_(self, message);
}

RxExceptionsMissingBackpressureException *new_RxExceptionsMissingBackpressureException_initWithNSString_(NSString *message) {
  J2OBJC_NEW_IMPL(RxExceptionsMissingBackpressureException, initWithNSString_, message)
}

RxExceptionsMissingBackpressureException *create_RxExceptionsMissingBackpressureException_initWithNSString_(NSString *message) {
  J2OBJC_CREATE_IMPL(RxExceptionsMissingBackpressureException, initWithNSString_, message)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxExceptionsMissingBackpressureException)