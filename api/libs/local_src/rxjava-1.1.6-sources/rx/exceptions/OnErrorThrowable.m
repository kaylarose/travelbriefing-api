//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/exceptions/OnErrorThrowable.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Boolean.h"
#include "java/lang/Byte.h"
#include "java/lang/Character.h"
#include "java/lang/Double.h"
#include "java/lang/Enum.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/Short.h"
#include "java/util/HashSet.h"
#include "java/util/Set.h"
#include "rx/exceptions/Exceptions.h"
#include "rx/exceptions/OnErrorThrowable.h"
#include "rx/plugins/RxJavaErrorHandler.h"
#include "rx/plugins/RxJavaPlugins.h"

@interface RxExceptionsOnErrorThrowable () {
 @public
  jboolean hasValue_;
  id value_;
}

- (instancetype)initWithNSException:(NSException *)exception;

- (instancetype)initWithNSException:(NSException *)exception
                             withId:(id)value;

@end

J2OBJC_FIELD_SETTER(RxExceptionsOnErrorThrowable, value_, id)

inline jlong RxExceptionsOnErrorThrowable_get_serialVersionUID();
#define RxExceptionsOnErrorThrowable_serialVersionUID -569558213262703934LL
J2OBJC_STATIC_FIELD_CONSTANT(RxExceptionsOnErrorThrowable, serialVersionUID, jlong)

__attribute__((unused)) static void RxExceptionsOnErrorThrowable_initWithNSException_(RxExceptionsOnErrorThrowable *self, NSException *exception);

__attribute__((unused)) static RxExceptionsOnErrorThrowable *new_RxExceptionsOnErrorThrowable_initWithNSException_(NSException *exception) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxExceptionsOnErrorThrowable *create_RxExceptionsOnErrorThrowable_initWithNSException_(NSException *exception);

__attribute__((unused)) static void RxExceptionsOnErrorThrowable_initWithNSException_withId_(RxExceptionsOnErrorThrowable *self, NSException *exception, id value);

__attribute__((unused)) static RxExceptionsOnErrorThrowable *new_RxExceptionsOnErrorThrowable_initWithNSException_withId_(NSException *exception, id value) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxExceptionsOnErrorThrowable *create_RxExceptionsOnErrorThrowable_initWithNSException_withId_(NSException *exception, id value);

@interface RxExceptionsOnErrorThrowable_OnNextValue () {
 @public
  id value_;
}

@end

J2OBJC_FIELD_SETTER(RxExceptionsOnErrorThrowable_OnNextValue, value_, id)

inline jlong RxExceptionsOnErrorThrowable_OnNextValue_get_serialVersionUID();
#define RxExceptionsOnErrorThrowable_OnNextValue_serialVersionUID -3454462756050397899LL
J2OBJC_STATIC_FIELD_CONSTANT(RxExceptionsOnErrorThrowable_OnNextValue, serialVersionUID, jlong)

@interface RxExceptionsOnErrorThrowable_OnNextValue_Primitives : NSObject

+ (id<JavaUtilSet>)create;

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(RxExceptionsOnErrorThrowable_OnNextValue_Primitives)

inline id<JavaUtilSet> RxExceptionsOnErrorThrowable_OnNextValue_Primitives_get_INSTANCE();
static id<JavaUtilSet> RxExceptionsOnErrorThrowable_OnNextValue_Primitives_INSTANCE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxExceptionsOnErrorThrowable_OnNextValue_Primitives, INSTANCE, id<JavaUtilSet>)

__attribute__((unused)) static id<JavaUtilSet> RxExceptionsOnErrorThrowable_OnNextValue_Primitives_create();

__attribute__((unused)) static void RxExceptionsOnErrorThrowable_OnNextValue_Primitives_init(RxExceptionsOnErrorThrowable_OnNextValue_Primitives *self);

__attribute__((unused)) static RxExceptionsOnErrorThrowable_OnNextValue_Primitives *new_RxExceptionsOnErrorThrowable_OnNextValue_Primitives_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static RxExceptionsOnErrorThrowable_OnNextValue_Primitives *create_RxExceptionsOnErrorThrowable_OnNextValue_Primitives_init();

J2OBJC_TYPE_LITERAL_HEADER(RxExceptionsOnErrorThrowable_OnNextValue_Primitives)

@implementation RxExceptionsOnErrorThrowable

- (instancetype)initWithNSException:(NSException *)exception {
  RxExceptionsOnErrorThrowable_initWithNSException_(self, exception);
  return self;
}

- (instancetype)initWithNSException:(NSException *)exception
                             withId:(id)value {
  RxExceptionsOnErrorThrowable_initWithNSException_withId_(self, exception, value);
  return self;
}

- (id)getValue {
  return value_;
}

- (jboolean)isValueNull {
  return hasValue_;
}

+ (RxExceptionsOnErrorThrowable *)fromWithNSException:(NSException *)t {
  return RxExceptionsOnErrorThrowable_fromWithNSException_(t);
}

+ (NSException *)addValueAsLastCauseWithNSException:(NSException *)e
                                             withId:(id)value {
  return RxExceptionsOnErrorThrowable_addValueAsLastCauseWithNSException_withId_(e, value);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSException:", NULL, 0x2, -1, 0, -1, -1, -1, -1 },
    { "initWithNSException:withId:", NULL, 0x2, -1, 1, -1, -1, -1, -1 },
    { "getValue", "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { "isValueNull", "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { "fromWithNSException:", "LRxExceptionsOnErrorThrowable;", 0x9, 2, 0, -1, -1, -1, -1 },
    { "addValueAsLastCauseWithNSException:withId:", "LNSException;", 0x9, 3, 1, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = RxExceptionsOnErrorThrowable_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "hasValue_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "value_", "LNSObject;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSException;", "LNSException;LNSObject;", "from", "addValueAsLastCause", "LRxExceptionsOnErrorThrowable_OnNextValue;" };
  static const J2ObjcClassInfo _RxExceptionsOnErrorThrowable = { "OnErrorThrowable", "rx.exceptions", ptrTable, methods, fields, 7, 0x11, 6, 3, -1, 4, -1, -1, -1 };
  return &_RxExceptionsOnErrorThrowable;
}

@end

void RxExceptionsOnErrorThrowable_initWithNSException_(RxExceptionsOnErrorThrowable *self, NSException *exception) {
  JavaLangRuntimeException_initWithNSException_(self, exception);
  self->hasValue_ = false;
  self->value_ = nil;
}

RxExceptionsOnErrorThrowable *new_RxExceptionsOnErrorThrowable_initWithNSException_(NSException *exception) {
  J2OBJC_NEW_IMPL(RxExceptionsOnErrorThrowable, initWithNSException_, exception)
}

RxExceptionsOnErrorThrowable *create_RxExceptionsOnErrorThrowable_initWithNSException_(NSException *exception) {
  J2OBJC_CREATE_IMPL(RxExceptionsOnErrorThrowable, initWithNSException_, exception)
}

void RxExceptionsOnErrorThrowable_initWithNSException_withId_(RxExceptionsOnErrorThrowable *self, NSException *exception, id value) {
  JavaLangRuntimeException_initWithNSException_(self, exception);
  self->hasValue_ = true;
  self->value_ = value;
}

RxExceptionsOnErrorThrowable *new_RxExceptionsOnErrorThrowable_initWithNSException_withId_(NSException *exception, id value) {
  J2OBJC_NEW_IMPL(RxExceptionsOnErrorThrowable, initWithNSException_withId_, exception, value)
}

RxExceptionsOnErrorThrowable *create_RxExceptionsOnErrorThrowable_initWithNSException_withId_(NSException *exception, id value) {
  J2OBJC_CREATE_IMPL(RxExceptionsOnErrorThrowable, initWithNSException_withId_, exception, value)
}

RxExceptionsOnErrorThrowable *RxExceptionsOnErrorThrowable_fromWithNSException_(NSException *t) {
  RxExceptionsOnErrorThrowable_initialize();
  if (t == nil) {
    t = new_JavaLangNullPointerException_init();
  }
  NSException *cause = RxExceptionsExceptions_getFinalCauseWithNSException_(t);
  if ([cause isKindOfClass:[RxExceptionsOnErrorThrowable_OnNextValue class]]) {
    return new_RxExceptionsOnErrorThrowable_initWithNSException_withId_(t, [((RxExceptionsOnErrorThrowable_OnNextValue *) nil_chk(((RxExceptionsOnErrorThrowable_OnNextValue *) cast_chk(cause, [RxExceptionsOnErrorThrowable_OnNextValue class])))) getValue]);
  }
  return new_RxExceptionsOnErrorThrowable_initWithNSException_(t);
}

NSException *RxExceptionsOnErrorThrowable_addValueAsLastCauseWithNSException_withId_(NSException *e, id value) {
  RxExceptionsOnErrorThrowable_initialize();
  if (e == nil) {
    e = new_JavaLangNullPointerException_init();
  }
  NSException *lastCause = RxExceptionsExceptions_getFinalCauseWithNSException_(e);
  if (lastCause != nil && [lastCause isKindOfClass:[RxExceptionsOnErrorThrowable_OnNextValue class]]) {
    if ([((RxExceptionsOnErrorThrowable_OnNextValue *) cast_chk(lastCause, [RxExceptionsOnErrorThrowable_OnNextValue class])) getValue] == value) {
      return e;
    }
  }
  RxExceptionsExceptions_addCauseWithNSException_withNSException_(e, new_RxExceptionsOnErrorThrowable_OnNextValue_initWithId_(value));
  return e;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxExceptionsOnErrorThrowable)

@implementation RxExceptionsOnErrorThrowable_OnNextValue

- (instancetype)initWithId:(id)value {
  RxExceptionsOnErrorThrowable_OnNextValue_initWithId_(self, value);
  return self;
}

- (id)getValue {
  return value_;
}

+ (NSString *)renderValueWithId:(id)value {
  return RxExceptionsOnErrorThrowable_OnNextValue_renderValueWithId_(value);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithId:", NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { "getValue", "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { "renderValueWithId:", "LNSString;", 0x8, 1, 0, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = RxExceptionsOnErrorThrowable_OnNextValue_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "value_", "LNSObject;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSObject;", "renderValue", "LRxExceptionsOnErrorThrowable;", "LRxExceptionsOnErrorThrowable_OnNextValue_Primitives;" };
  static const J2ObjcClassInfo _RxExceptionsOnErrorThrowable_OnNextValue = { "OnNextValue", "rx.exceptions", ptrTable, methods, fields, 7, 0x9, 3, 2, 2, 3, -1, -1, -1 };
  return &_RxExceptionsOnErrorThrowable_OnNextValue;
}

@end

void RxExceptionsOnErrorThrowable_OnNextValue_initWithId_(RxExceptionsOnErrorThrowable_OnNextValue *self, id value) {
  JavaLangRuntimeException_initWithNSString_(self, JreStrcat("$$", @"OnError while emitting onNext value: ", RxExceptionsOnErrorThrowable_OnNextValue_renderValueWithId_(value)));
  self->value_ = value;
}

RxExceptionsOnErrorThrowable_OnNextValue *new_RxExceptionsOnErrorThrowable_OnNextValue_initWithId_(id value) {
  J2OBJC_NEW_IMPL(RxExceptionsOnErrorThrowable_OnNextValue, initWithId_, value)
}

RxExceptionsOnErrorThrowable_OnNextValue *create_RxExceptionsOnErrorThrowable_OnNextValue_initWithId_(id value) {
  J2OBJC_CREATE_IMPL(RxExceptionsOnErrorThrowable_OnNextValue, initWithId_, value)
}

NSString *RxExceptionsOnErrorThrowable_OnNextValue_renderValueWithId_(id value) {
  RxExceptionsOnErrorThrowable_OnNextValue_initialize();
  if (value == nil) {
    return @"null";
  }
  if ([((id<JavaUtilSet>) nil_chk(JreLoadStatic(RxExceptionsOnErrorThrowable_OnNextValue_Primitives, INSTANCE))) containsWithId:[value getClass]]) {
    return [value description];
  }
  if ([value isKindOfClass:[NSString class]]) {
    return (NSString *) cast_chk(value, [NSString class]);
  }
  if ([value isKindOfClass:[JavaLangEnum class]]) {
    return [((JavaLangEnum *) cast_chk(value, [JavaLangEnum class])) name];
  }
  NSString *pluggedRendering = [((RxPluginsRxJavaErrorHandler *) nil_chk([((RxPluginsRxJavaPlugins *) nil_chk(RxPluginsRxJavaPlugins_getInstance())) getErrorHandler])) handleOnNextValueRenderingWithId:value];
  if (pluggedRendering != nil) {
    return pluggedRendering;
  }
  return JreStrcat("$$", [[value getClass] getName], @".class");
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxExceptionsOnErrorThrowable_OnNextValue)

J2OBJC_INITIALIZED_DEFN(RxExceptionsOnErrorThrowable_OnNextValue_Primitives)

@implementation RxExceptionsOnErrorThrowable_OnNextValue_Primitives

+ (id<JavaUtilSet>)create {
  return RxExceptionsOnErrorThrowable_OnNextValue_Primitives_create();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  RxExceptionsOnErrorThrowable_OnNextValue_Primitives_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "create", "LJavaUtilSet;", 0xa, -1, -1, -1, 0, -1, -1 },
    { "init", NULL, 0x2, -1, -1, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE", "LJavaUtilSet;", .constantValue.asLong = 0, 0x18, -1, 1, 2, -1 },
  };
  static const void *ptrTable[] = { "()Ljava/util/Set<Ljava/lang/Class<*>;>;", &RxExceptionsOnErrorThrowable_OnNextValue_Primitives_INSTANCE, "Ljava/util/Set<Ljava/lang/Class<*>;>;", "LRxExceptionsOnErrorThrowable_OnNextValue;" };
  static const J2ObjcClassInfo _RxExceptionsOnErrorThrowable_OnNextValue_Primitives = { "Primitives", "rx.exceptions", ptrTable, methods, fields, 7, 0x1a, 2, 1, 3, -1, -1, -1, -1 };
  return &_RxExceptionsOnErrorThrowable_OnNextValue_Primitives;
}

+ (void)initialize {
  if (self == [RxExceptionsOnErrorThrowable_OnNextValue_Primitives class]) {
    RxExceptionsOnErrorThrowable_OnNextValue_Primitives_INSTANCE = RxExceptionsOnErrorThrowable_OnNextValue_Primitives_create();
    J2OBJC_SET_INITIALIZED(RxExceptionsOnErrorThrowable_OnNextValue_Primitives)
  }
}

@end

id<JavaUtilSet> RxExceptionsOnErrorThrowable_OnNextValue_Primitives_create() {
  RxExceptionsOnErrorThrowable_OnNextValue_Primitives_initialize();
  id<JavaUtilSet> set = new_JavaUtilHashSet_init();
  [set addWithId:JavaLangBoolean_class_()];
  [set addWithId:JavaLangCharacter_class_()];
  [set addWithId:JavaLangByte_class_()];
  [set addWithId:JavaLangShort_class_()];
  [set addWithId:JavaLangInteger_class_()];
  [set addWithId:JavaLangLong_class_()];
  [set addWithId:JavaLangFloat_class_()];
  [set addWithId:JavaLangDouble_class_()];
  return set;
}

void RxExceptionsOnErrorThrowable_OnNextValue_Primitives_init(RxExceptionsOnErrorThrowable_OnNextValue_Primitives *self) {
  NSObject_init(self);
}

RxExceptionsOnErrorThrowable_OnNextValue_Primitives *new_RxExceptionsOnErrorThrowable_OnNextValue_Primitives_init() {
  J2OBJC_NEW_IMPL(RxExceptionsOnErrorThrowable_OnNextValue_Primitives, init)
}

RxExceptionsOnErrorThrowable_OnNextValue_Primitives *create_RxExceptionsOnErrorThrowable_OnNextValue_Primitives_init() {
  J2OBJC_CREATE_IMPL(RxExceptionsOnErrorThrowable_OnNextValue_Primitives, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxExceptionsOnErrorThrowable_OnNextValue_Primitives)
