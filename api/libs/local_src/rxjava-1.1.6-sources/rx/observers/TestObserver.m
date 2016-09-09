//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/observers/TestObserver.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/AssertionError.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "rx/Notification.h"
#include "rx/Observer.h"
#include "rx/exceptions/CompositeException.h"
#include "rx/observers/TestObserver.h"

@interface RxObserversTestObserver () {
 @public
  id<RxObserver> delegate_;
  JavaUtilArrayList *onNextEvents_;
  JavaUtilArrayList *onErrorEvents_;
  JavaUtilArrayList *onCompletedEvents_;
}

@end

J2OBJC_FIELD_SETTER(RxObserversTestObserver, delegate_, id<RxObserver>)
J2OBJC_FIELD_SETTER(RxObserversTestObserver, onNextEvents_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(RxObserversTestObserver, onErrorEvents_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(RxObserversTestObserver, onCompletedEvents_, JavaUtilArrayList *)

inline id<RxObserver> RxObserversTestObserver_get_INERT();
inline id<RxObserver> RxObserversTestObserver_set_INERT(id<RxObserver> value);
static id<RxObserver> RxObserversTestObserver_INERT;
J2OBJC_STATIC_FIELD_OBJ(RxObserversTestObserver, INERT, id<RxObserver>)

__attribute__((unused)) static void RxObserversTestObserver_assertionErrorWithNSString_(RxObserversTestObserver *self, NSString *message);

@interface RxObserversTestObserver_$1 : NSObject < RxObserver >

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)t;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(RxObserversTestObserver_$1)

__attribute__((unused)) static void RxObserversTestObserver_$1_init(RxObserversTestObserver_$1 *self);

__attribute__((unused)) static RxObserversTestObserver_$1 *new_RxObserversTestObserver_$1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static RxObserversTestObserver_$1 *create_RxObserversTestObserver_$1_init();

J2OBJC_TYPE_LITERAL_HEADER(RxObserversTestObserver_$1)

J2OBJC_INITIALIZED_DEFN(RxObserversTestObserver)

@implementation RxObserversTestObserver

- (instancetype)initWithRxObserver:(id<RxObserver>)delegate {
  RxObserversTestObserver_initWithRxObserver_(self, delegate);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  RxObserversTestObserver_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)onCompleted {
  [((JavaUtilArrayList *) nil_chk(onCompletedEvents_)) addWithId:RxNotification_createOnCompleted()];
  [((id<RxObserver>) nil_chk(delegate_)) onCompleted];
}

- (id<JavaUtilList>)getOnCompletedEvents {
  return JavaUtilCollections_unmodifiableListWithJavaUtilList_(onCompletedEvents_);
}

- (void)onErrorWithNSException:(NSException *)e {
  [((JavaUtilArrayList *) nil_chk(onErrorEvents_)) addWithId:e];
  [((id<RxObserver>) nil_chk(delegate_)) onErrorWithNSException:e];
}

- (id<JavaUtilList>)getOnErrorEvents {
  return JavaUtilCollections_unmodifiableListWithJavaUtilList_(onErrorEvents_);
}

- (void)onNextWithId:(id)t {
  [((JavaUtilArrayList *) nil_chk(onNextEvents_)) addWithId:t];
  [((id<RxObserver>) nil_chk(delegate_)) onNextWithId:t];
}

- (id<JavaUtilList>)getOnNextEvents {
  return JavaUtilCollections_unmodifiableListWithJavaUtilList_(onNextEvents_);
}

- (id<JavaUtilList>)getEvents {
  JavaUtilArrayList *events = new_JavaUtilArrayList_init();
  [events addWithId:onNextEvents_];
  [events addWithId:onErrorEvents_];
  [events addWithId:onCompletedEvents_];
  return JavaUtilCollections_unmodifiableListWithJavaUtilList_(events);
}

- (void)assertReceivedOnNextWithJavaUtilList:(id<JavaUtilList>)items {
  if ([((JavaUtilArrayList *) nil_chk(onNextEvents_)) size] != [((id<JavaUtilList>) nil_chk(items)) size]) {
    RxObserversTestObserver_assertionErrorWithNSString_(self, JreStrcat("$I$I$@$@C", @"Number of items does not match. Provided: ", [items size], @"  Actual: ", [onNextEvents_ size], @".\nProvided values: ", items, @"\nActual values: ", onNextEvents_, 0x000a));
  }
  for (jint i = 0; i < [items size]; i++) {
    id expected = [items getWithInt:i];
    id actual = [onNextEvents_ getWithInt:i];
    if (expected == nil) {
      if (actual != nil) {
        RxObserversTestObserver_assertionErrorWithNSString_(self, JreStrcat("$I$@$", @"Value at index: ", i, @" expected to be [null] but was: [", actual, @"]\n"));
      }
    }
    else if (![expected isEqual:actual]) {
      RxObserversTestObserver_assertionErrorWithNSString_(self, JreStrcat("$I$@$$$@$$$", @"Value at index: ", i, @" expected to be [", expected, @"] (", [[expected getClass] getSimpleName], @") but was: [", actual, @"] (", (actual != nil ? [[actual getClass] getSimpleName] : @"null"), @")\n"));
    }
  }
}

- (void)assertTerminalEvent {
  if ([((JavaUtilArrayList *) nil_chk(onErrorEvents_)) size] > 1) {
    RxObserversTestObserver_assertionErrorWithNSString_(self, JreStrcat("$I", @"Too many onError events: ", [onErrorEvents_ size]));
  }
  if ([((JavaUtilArrayList *) nil_chk(onCompletedEvents_)) size] > 1) {
    RxObserversTestObserver_assertionErrorWithNSString_(self, JreStrcat("$I", @"Too many onCompleted events: ", [onCompletedEvents_ size]));
  }
  if ([onCompletedEvents_ size] == 1 && [onErrorEvents_ size] == 1) {
    RxObserversTestObserver_assertionErrorWithNSString_(self, @"Received both an onError and onCompleted. Should be one or the other.");
  }
  if ([onCompletedEvents_ size] == 0 && [onErrorEvents_ size] == 0) {
    RxObserversTestObserver_assertionErrorWithNSString_(self, @"No terminal events received.");
  }
}

- (void)assertionErrorWithNSString:(NSString *)message {
  RxObserversTestObserver_assertionErrorWithNSString_(self, message);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxObserver:", NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { "init", NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "getOnCompletedEvents", "LJavaUtilList;", 0x1, -1, -1, -1, 2, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { "getOnErrorEvents", "LJavaUtilList;", 0x1, -1, -1, -1, 5, -1, -1 },
    { "onNextWithId:", "V", 0x1, 6, 7, -1, 8, -1, -1 },
    { "getOnNextEvents", "LJavaUtilList;", 0x1, -1, -1, -1, 9, -1, -1 },
    { "getEvents", "LJavaUtilList;", 0x1, -1, -1, -1, 10, -1, -1 },
    { "assertReceivedOnNextWithJavaUtilList:", "V", 0x1, 11, 12, -1, 13, -1, -1 },
    { "assertTerminalEvent", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "assertionErrorWithNSString:", "V", 0x10, 14, 15, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "delegate_", "LRxObserver;", .constantValue.asLong = 0, 0x12, -1, -1, 16, -1 },
    { "onNextEvents_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x12, -1, -1, 17, -1 },
    { "onErrorEvents_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x12, -1, -1, 18, -1 },
    { "onCompletedEvents_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x12, -1, -1, 19, -1 },
    { "INERT", "LRxObserver;", .constantValue.asLong = 0, 0xa, -1, 20, 21, -1 },
  };
  static const void *ptrTable[] = { "LRxObserver;", "(Lrx/Observer<TT;>;)V", "()Ljava/util/List<Lrx/Notification<TT;>;>;", "onError", "LNSException;", "()Ljava/util/List<Ljava/lang/Throwable;>;", "onNext", "LNSObject;", "(TT;)V", "()Ljava/util/List<TT;>;", "()Ljava/util/List<Ljava/lang/Object;>;", "assertReceivedOnNext", "LJavaUtilList;", "(Ljava/util/List<TT;>;)V", "assertionError", "LNSString;", "Lrx/Observer<TT;>;", "Ljava/util/ArrayList<TT;>;", "Ljava/util/ArrayList<Ljava/lang/Throwable;>;", "Ljava/util/ArrayList<Lrx/Notification<TT;>;>;", &RxObserversTestObserver_INERT, "Lrx/Observer<Ljava/lang/Object;>;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observer<TT;>;" };
  static const J2ObjcClassInfo _RxObserversTestObserver = { "TestObserver", "rx.observers", ptrTable, methods, fields, 7, 0x1, 12, 5, -1, -1, -1, 22, -1 };
  return &_RxObserversTestObserver;
}

+ (void)initialize {
  if (self == [RxObserversTestObserver class]) {
    RxObserversTestObserver_INERT = new_RxObserversTestObserver_$1_init();
    J2OBJC_SET_INITIALIZED(RxObserversTestObserver)
  }
}

@end

void RxObserversTestObserver_initWithRxObserver_(RxObserversTestObserver *self, id<RxObserver> delegate) {
  NSObject_init(self);
  self->onNextEvents_ = new_JavaUtilArrayList_init();
  self->onErrorEvents_ = new_JavaUtilArrayList_init();
  self->onCompletedEvents_ = new_JavaUtilArrayList_init();
  self->delegate_ = delegate;
}

RxObserversTestObserver *new_RxObserversTestObserver_initWithRxObserver_(id<RxObserver> delegate) {
  J2OBJC_NEW_IMPL(RxObserversTestObserver, initWithRxObserver_, delegate)
}

RxObserversTestObserver *create_RxObserversTestObserver_initWithRxObserver_(id<RxObserver> delegate) {
  J2OBJC_CREATE_IMPL(RxObserversTestObserver, initWithRxObserver_, delegate)
}

void RxObserversTestObserver_init(RxObserversTestObserver *self) {
  NSObject_init(self);
  self->onNextEvents_ = new_JavaUtilArrayList_init();
  self->onErrorEvents_ = new_JavaUtilArrayList_init();
  self->onCompletedEvents_ = new_JavaUtilArrayList_init();
  self->delegate_ = RxObserversTestObserver_INERT;
}

RxObserversTestObserver *new_RxObserversTestObserver_init() {
  J2OBJC_NEW_IMPL(RxObserversTestObserver, init)
}

RxObserversTestObserver *create_RxObserversTestObserver_init() {
  J2OBJC_CREATE_IMPL(RxObserversTestObserver, init)
}

void RxObserversTestObserver_assertionErrorWithNSString_(RxObserversTestObserver *self, NSString *message) {
  JavaLangStringBuilder *b = new_JavaLangStringBuilder_initWithInt_(((jint) [((NSString *) nil_chk(message)) length]) + 32);
  (void) [b appendWithNSString:message];
  (void) [b appendWithNSString:@" ("];
  jint c = [((JavaUtilArrayList *) nil_chk(self->onCompletedEvents_)) size];
  (void) [b appendWithInt:c];
  (void) [b appendWithNSString:@" completion"];
  if (c != 1) {
    (void) [b appendWithNSString:@"s"];
  }
  (void) [b appendWithNSString:@")"];
  if (![((JavaUtilArrayList *) nil_chk(self->onErrorEvents_)) isEmpty]) {
    jint size = [self->onErrorEvents_ size];
    (void) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([b appendWithNSString:@" (+"])) appendWithInt:size])) appendWithNSString:@" error"];
    if (size != 1) {
      (void) [b appendWithNSString:@"s"];
    }
    (void) [b appendWithNSString:@")"];
  }
  JavaLangAssertionError *ae = new_JavaLangAssertionError_initWithId_([b description]);
  if (![self->onErrorEvents_ isEmpty]) {
    if ([self->onErrorEvents_ size] == 1) {
      (void) [ae initCauseWithNSException:[self->onErrorEvents_ getWithInt:0]];
    }
    else {
      (void) [ae initCauseWithNSException:new_RxExceptionsCompositeException_initWithJavaUtilCollection_(self->onErrorEvents_)];
    }
  }
  @throw ae;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxObserversTestObserver)

@implementation RxObserversTestObserver_$1

- (void)onCompleted {
}

- (void)onErrorWithNSException:(NSException *)e {
}

- (void)onNextWithId:(id)t {
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  RxObserversTestObserver_$1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onCompleted", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "onErrorWithNSException:", "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { "onNextWithId:", "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { "init", NULL, 0x0, -1, -1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "onError", "LNSException;", "onNext", "LNSObject;", "LRxObserversTestObserver;", "Ljava/lang/Object;Lrx/Observer<Ljava/lang/Object;>;" };
  static const J2ObjcClassInfo _RxObserversTestObserver_$1 = { "", "rx.observers", ptrTable, methods, NULL, 7, 0x8008, 4, 0, 4, -1, -1, 5, -1 };
  return &_RxObserversTestObserver_$1;
}

@end

void RxObserversTestObserver_$1_init(RxObserversTestObserver_$1 *self) {
  NSObject_init(self);
}

RxObserversTestObserver_$1 *new_RxObserversTestObserver_$1_init() {
  J2OBJC_NEW_IMPL(RxObserversTestObserver_$1, init)
}

RxObserversTestObserver_$1 *create_RxObserversTestObserver_$1_init() {
  J2OBJC_CREATE_IMPL(RxObserversTestObserver_$1, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxObserversTestObserver_$1)