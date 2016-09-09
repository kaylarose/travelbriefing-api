//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/observers/Observers.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "rx/Observer.h"
#include "rx/exceptions/OnErrorNotImplementedException.h"
#include "rx/functions/Action0.h"
#include "rx/functions/Action1.h"
#include "rx/observers/Observers.h"

@interface RxObserversObservers ()

- (instancetype)init;

@end

inline id<RxObserver> RxObserversObservers_get_EMPTY();
static id<RxObserver> RxObserversObservers_EMPTY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxObserversObservers, EMPTY, id<RxObserver>)

__attribute__((unused)) static void RxObserversObservers_init(RxObserversObservers *self);

__attribute__((unused)) static RxObserversObservers *new_RxObserversObservers_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static RxObserversObservers *create_RxObserversObservers_init();

@interface RxObserversObservers_$1 : NSObject < RxObserver >

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)args;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(RxObserversObservers_$1)

__attribute__((unused)) static void RxObserversObservers_$1_init(RxObserversObservers_$1 *self);

__attribute__((unused)) static RxObserversObservers_$1 *new_RxObserversObservers_$1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static RxObserversObservers_$1 *create_RxObserversObservers_$1_init();

J2OBJC_TYPE_LITERAL_HEADER(RxObserversObservers_$1)

@interface RxObserversObservers_$2 : NSObject < RxObserver > {
 @public
  id<RxFunctionsAction1> val$onNext_;
}

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)args;

- (instancetype)initWithRxFunctionsAction1:(id<RxFunctionsAction1>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxObserversObservers_$2)

J2OBJC_FIELD_SETTER(RxObserversObservers_$2, val$onNext_, id<RxFunctionsAction1>)

__attribute__((unused)) static void RxObserversObservers_$2_initWithRxFunctionsAction1_(RxObserversObservers_$2 *self, id<RxFunctionsAction1> capture$0);

__attribute__((unused)) static RxObserversObservers_$2 *new_RxObserversObservers_$2_initWithRxFunctionsAction1_(id<RxFunctionsAction1> capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxObserversObservers_$2 *create_RxObserversObservers_$2_initWithRxFunctionsAction1_(id<RxFunctionsAction1> capture$0);

J2OBJC_TYPE_LITERAL_HEADER(RxObserversObservers_$2)

@interface RxObserversObservers_$3 : NSObject < RxObserver > {
 @public
  id<RxFunctionsAction1> val$onError_;
  id<RxFunctionsAction1> val$onNext_;
}

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)args;

- (instancetype)initWithRxFunctionsAction1:(id<RxFunctionsAction1>)capture$0
                    withRxFunctionsAction1:(id<RxFunctionsAction1>)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(RxObserversObservers_$3)

J2OBJC_FIELD_SETTER(RxObserversObservers_$3, val$onError_, id<RxFunctionsAction1>)
J2OBJC_FIELD_SETTER(RxObserversObservers_$3, val$onNext_, id<RxFunctionsAction1>)

__attribute__((unused)) static void RxObserversObservers_$3_initWithRxFunctionsAction1_withRxFunctionsAction1_(RxObserversObservers_$3 *self, id<RxFunctionsAction1> capture$0, id<RxFunctionsAction1> capture$1);

__attribute__((unused)) static RxObserversObservers_$3 *new_RxObserversObservers_$3_initWithRxFunctionsAction1_withRxFunctionsAction1_(id<RxFunctionsAction1> capture$0, id<RxFunctionsAction1> capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxObserversObservers_$3 *create_RxObserversObservers_$3_initWithRxFunctionsAction1_withRxFunctionsAction1_(id<RxFunctionsAction1> capture$0, id<RxFunctionsAction1> capture$1);

J2OBJC_TYPE_LITERAL_HEADER(RxObserversObservers_$3)

@interface RxObserversObservers_$4 : NSObject < RxObserver > {
 @public
  id<RxFunctionsAction0> val$onComplete_;
  id<RxFunctionsAction1> val$onError_;
  id<RxFunctionsAction1> val$onNext_;
}

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;

- (void)onNextWithId:(id)args;

- (instancetype)initWithRxFunctionsAction0:(id<RxFunctionsAction0>)capture$0
                    withRxFunctionsAction1:(id<RxFunctionsAction1>)capture$1
                    withRxFunctionsAction1:(id<RxFunctionsAction1>)capture$2;

@end

J2OBJC_EMPTY_STATIC_INIT(RxObserversObservers_$4)

J2OBJC_FIELD_SETTER(RxObserversObservers_$4, val$onComplete_, id<RxFunctionsAction0>)
J2OBJC_FIELD_SETTER(RxObserversObservers_$4, val$onError_, id<RxFunctionsAction1>)
J2OBJC_FIELD_SETTER(RxObserversObservers_$4, val$onNext_, id<RxFunctionsAction1>)

__attribute__((unused)) static void RxObserversObservers_$4_initWithRxFunctionsAction0_withRxFunctionsAction1_withRxFunctionsAction1_(RxObserversObservers_$4 *self, id<RxFunctionsAction0> capture$0, id<RxFunctionsAction1> capture$1, id<RxFunctionsAction1> capture$2);

__attribute__((unused)) static RxObserversObservers_$4 *new_RxObserversObservers_$4_initWithRxFunctionsAction0_withRxFunctionsAction1_withRxFunctionsAction1_(id<RxFunctionsAction0> capture$0, id<RxFunctionsAction1> capture$1, id<RxFunctionsAction1> capture$2) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxObserversObservers_$4 *create_RxObserversObservers_$4_initWithRxFunctionsAction0_withRxFunctionsAction1_withRxFunctionsAction1_(id<RxFunctionsAction0> capture$0, id<RxFunctionsAction1> capture$1, id<RxFunctionsAction1> capture$2);

J2OBJC_TYPE_LITERAL_HEADER(RxObserversObservers_$4)

J2OBJC_INITIALIZED_DEFN(RxObserversObservers)

@implementation RxObserversObservers

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  RxObserversObservers_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (id<RxObserver>)empty {
  return RxObserversObservers_empty();
}

+ (id<RxObserver>)createWithRxFunctionsAction1:(id<RxFunctionsAction1>)onNext {
  return RxObserversObservers_createWithRxFunctionsAction1_(onNext);
}

+ (id<RxObserver>)createWithRxFunctionsAction1:(id<RxFunctionsAction1>)onNext
                        withRxFunctionsAction1:(id<RxFunctionsAction1>)onError {
  return RxObserversObservers_createWithRxFunctionsAction1_withRxFunctionsAction1_(onNext, onError);
}

+ (id<RxObserver>)createWithRxFunctionsAction1:(id<RxFunctionsAction1>)onNext
                        withRxFunctionsAction1:(id<RxFunctionsAction1>)onError
                        withRxFunctionsAction0:(id<RxFunctionsAction0>)onComplete {
  return RxObserversObservers_createWithRxFunctionsAction1_withRxFunctionsAction1_withRxFunctionsAction0_(onNext, onError, onComplete);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { "empty", "LRxObserver;", 0x9, -1, -1, -1, 0, -1, -1 },
    { "createWithRxFunctionsAction1:", "LRxObserver;", 0x9, 1, 2, -1, 3, -1, -1 },
    { "createWithRxFunctionsAction1:withRxFunctionsAction1:", "LRxObserver;", 0x9, 1, 4, -1, 5, -1, -1 },
    { "createWithRxFunctionsAction1:withRxFunctionsAction1:withRxFunctionsAction0:", "LRxObserver;", 0x9, 1, 6, -1, 7, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "EMPTY", "LRxObserver;", .constantValue.asLong = 0, 0x1a, -1, 8, 9, -1 },
  };
  static const void *ptrTable[] = { "<T:Ljava/lang/Object;>()Lrx/Observer<TT;>;", "create", "LRxFunctionsAction1;", "<T:Ljava/lang/Object;>(Lrx/functions/Action1<-TT;>;)Lrx/Observer<TT;>;", "LRxFunctionsAction1;LRxFunctionsAction1;", "<T:Ljava/lang/Object;>(Lrx/functions/Action1<-TT;>;Lrx/functions/Action1<Ljava/lang/Throwable;>;)Lrx/Observer<TT;>;", "LRxFunctionsAction1;LRxFunctionsAction1;LRxFunctionsAction0;", "<T:Ljava/lang/Object;>(Lrx/functions/Action1<-TT;>;Lrx/functions/Action1<Ljava/lang/Throwable;>;Lrx/functions/Action0;)Lrx/Observer<TT;>;", &RxObserversObservers_EMPTY, "Lrx/Observer<Ljava/lang/Object;>;" };
  static const J2ObjcClassInfo _RxObserversObservers = { "Observers", "rx.observers", ptrTable, methods, fields, 7, 0x11, 5, 1, -1, -1, -1, -1, -1 };
  return &_RxObserversObservers;
}

+ (void)initialize {
  if (self == [RxObserversObservers class]) {
    RxObserversObservers_EMPTY = new_RxObserversObservers_$1_init();
    J2OBJC_SET_INITIALIZED(RxObserversObservers)
  }
}

@end

void RxObserversObservers_init(RxObserversObservers *self) {
  NSObject_init(self);
  @throw new_JavaLangIllegalStateException_initWithNSString_(@"No instances!");
}

RxObserversObservers *new_RxObserversObservers_init() {
  J2OBJC_NEW_IMPL(RxObserversObservers, init)
}

RxObserversObservers *create_RxObserversObservers_init() {
  J2OBJC_CREATE_IMPL(RxObserversObservers, init)
}

id<RxObserver> RxObserversObservers_empty() {
  RxObserversObservers_initialize();
  return RxObserversObservers_EMPTY;
}

id<RxObserver> RxObserversObservers_createWithRxFunctionsAction1_(id<RxFunctionsAction1> onNext) {
  RxObserversObservers_initialize();
  if (onNext == nil) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"onNext can not be null");
  }
  return new_RxObserversObservers_$2_initWithRxFunctionsAction1_(onNext);
}

id<RxObserver> RxObserversObservers_createWithRxFunctionsAction1_withRxFunctionsAction1_(id<RxFunctionsAction1> onNext, id<RxFunctionsAction1> onError) {
  RxObserversObservers_initialize();
  if (onNext == nil) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"onNext can not be null");
  }
  if (onError == nil) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"onError can not be null");
  }
  return new_RxObserversObservers_$3_initWithRxFunctionsAction1_withRxFunctionsAction1_(onError, onNext);
}

id<RxObserver> RxObserversObservers_createWithRxFunctionsAction1_withRxFunctionsAction1_withRxFunctionsAction0_(id<RxFunctionsAction1> onNext, id<RxFunctionsAction1> onError, id<RxFunctionsAction0> onComplete) {
  RxObserversObservers_initialize();
  if (onNext == nil) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"onNext can not be null");
  }
  if (onError == nil) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"onError can not be null");
  }
  if (onComplete == nil) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"onComplete can not be null");
  }
  return new_RxObserversObservers_$4_initWithRxFunctionsAction0_withRxFunctionsAction1_withRxFunctionsAction1_(onComplete, onError, onNext);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxObserversObservers)

@implementation RxObserversObservers_$1

- (void)onCompleted {
}

- (void)onErrorWithNSException:(NSException *)e {
  @throw new_RxExceptionsOnErrorNotImplementedException_initWithNSException_(e);
}

- (void)onNextWithId:(id)args {
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  RxObserversObservers_$1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onCompleted", "V", 0x11, -1, -1, -1, -1, -1, -1 },
    { "onErrorWithNSException:", "V", 0x11, 0, 1, -1, -1, -1, -1 },
    { "onNextWithId:", "V", 0x11, 2, 3, -1, -1, -1, -1 },
    { "init", NULL, 0x0, -1, -1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "onError", "LNSException;", "onNext", "LNSObject;", "LRxObserversObservers;", "Ljava/lang/Object;Lrx/Observer<Ljava/lang/Object;>;" };
  static const J2ObjcClassInfo _RxObserversObservers_$1 = { "", "rx.observers", ptrTable, methods, NULL, 7, 0x8008, 4, 0, 4, -1, -1, 5, -1 };
  return &_RxObserversObservers_$1;
}

@end

void RxObserversObservers_$1_init(RxObserversObservers_$1 *self) {
  NSObject_init(self);
}

RxObserversObservers_$1 *new_RxObserversObservers_$1_init() {
  J2OBJC_NEW_IMPL(RxObserversObservers_$1, init)
}

RxObserversObservers_$1 *create_RxObserversObservers_$1_init() {
  J2OBJC_CREATE_IMPL(RxObserversObservers_$1, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxObserversObservers_$1)

@implementation RxObserversObservers_$2

- (void)onCompleted {
}

- (void)onErrorWithNSException:(NSException *)e {
  @throw new_RxExceptionsOnErrorNotImplementedException_initWithNSException_(e);
}

- (void)onNextWithId:(id)args {
  [((id<RxFunctionsAction1>) nil_chk(val$onNext_)) callWithId:args];
}

- (instancetype)initWithRxFunctionsAction1:(id<RxFunctionsAction1>)capture$0 {
  RxObserversObservers_$2_initWithRxFunctionsAction1_(self, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onCompleted", "V", 0x11, -1, -1, -1, -1, -1, -1 },
    { "onErrorWithNSException:", "V", 0x11, 0, 1, -1, -1, -1, -1 },
    { "onNextWithId:", "V", 0x11, 2, 3, -1, 4, -1, -1 },
    { "initWithRxFunctionsAction1:", NULL, 0x0, -1, 5, -1, 6, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$onNext_", "LRxFunctionsAction1;", .constantValue.asLong = 0, 0x1012, -1, -1, 7, -1 },
  };
  static const void *ptrTable[] = { "onError", "LNSException;", "onNext", "LNSObject;", "(TT;)V", "LRxFunctionsAction1;", "(Lrx/functions/Action1<-TT;>;)V", "Lrx/functions/Action1<-TT;>;", "LRxObserversObservers;", "createWithRxFunctionsAction1:", "Ljava/lang/Object;Lrx/Observer<TT;>;" };
  static const J2ObjcClassInfo _RxObserversObservers_$2 = { "", "rx.observers", ptrTable, methods, fields, 7, 0x8008, 4, 1, 8, -1, 9, 10, -1 };
  return &_RxObserversObservers_$2;
}

@end

void RxObserversObservers_$2_initWithRxFunctionsAction1_(RxObserversObservers_$2 *self, id<RxFunctionsAction1> capture$0) {
  self->val$onNext_ = capture$0;
  NSObject_init(self);
}

RxObserversObservers_$2 *new_RxObserversObservers_$2_initWithRxFunctionsAction1_(id<RxFunctionsAction1> capture$0) {
  J2OBJC_NEW_IMPL(RxObserversObservers_$2, initWithRxFunctionsAction1_, capture$0)
}

RxObserversObservers_$2 *create_RxObserversObservers_$2_initWithRxFunctionsAction1_(id<RxFunctionsAction1> capture$0) {
  J2OBJC_CREATE_IMPL(RxObserversObservers_$2, initWithRxFunctionsAction1_, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxObserversObservers_$2)

@implementation RxObserversObservers_$3

- (void)onCompleted {
}

- (void)onErrorWithNSException:(NSException *)e {
  [((id<RxFunctionsAction1>) nil_chk(val$onError_)) callWithId:e];
}

- (void)onNextWithId:(id)args {
  [((id<RxFunctionsAction1>) nil_chk(val$onNext_)) callWithId:args];
}

- (instancetype)initWithRxFunctionsAction1:(id<RxFunctionsAction1>)capture$0
                    withRxFunctionsAction1:(id<RxFunctionsAction1>)capture$1 {
  RxObserversObservers_$3_initWithRxFunctionsAction1_withRxFunctionsAction1_(self, capture$0, capture$1);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onCompleted", "V", 0x11, -1, -1, -1, -1, -1, -1 },
    { "onErrorWithNSException:", "V", 0x11, 0, 1, -1, -1, -1, -1 },
    { "onNextWithId:", "V", 0x11, 2, 3, -1, 4, -1, -1 },
    { "initWithRxFunctionsAction1:withRxFunctionsAction1:", NULL, 0x0, -1, 5, -1, 6, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$onError_", "LRxFunctionsAction1;", .constantValue.asLong = 0, 0x1012, -1, -1, 7, -1 },
    { "val$onNext_", "LRxFunctionsAction1;", .constantValue.asLong = 0, 0x1012, -1, -1, 8, -1 },
  };
  static const void *ptrTable[] = { "onError", "LNSException;", "onNext", "LNSObject;", "(TT;)V", "LRxFunctionsAction1;LRxFunctionsAction1;", "(Lrx/functions/Action1<Ljava/lang/Throwable;>;Lrx/functions/Action1<-TT;>;)V", "Lrx/functions/Action1<Ljava/lang/Throwable;>;", "Lrx/functions/Action1<-TT;>;", "LRxObserversObservers;", "createWithRxFunctionsAction1:withRxFunctionsAction1:", "Ljava/lang/Object;Lrx/Observer<TT;>;" };
  static const J2ObjcClassInfo _RxObserversObservers_$3 = { "", "rx.observers", ptrTable, methods, fields, 7, 0x8008, 4, 2, 9, -1, 10, 11, -1 };
  return &_RxObserversObservers_$3;
}

@end

void RxObserversObservers_$3_initWithRxFunctionsAction1_withRxFunctionsAction1_(RxObserversObservers_$3 *self, id<RxFunctionsAction1> capture$0, id<RxFunctionsAction1> capture$1) {
  self->val$onError_ = capture$0;
  self->val$onNext_ = capture$1;
  NSObject_init(self);
}

RxObserversObservers_$3 *new_RxObserversObservers_$3_initWithRxFunctionsAction1_withRxFunctionsAction1_(id<RxFunctionsAction1> capture$0, id<RxFunctionsAction1> capture$1) {
  J2OBJC_NEW_IMPL(RxObserversObservers_$3, initWithRxFunctionsAction1_withRxFunctionsAction1_, capture$0, capture$1)
}

RxObserversObservers_$3 *create_RxObserversObservers_$3_initWithRxFunctionsAction1_withRxFunctionsAction1_(id<RxFunctionsAction1> capture$0, id<RxFunctionsAction1> capture$1) {
  J2OBJC_CREATE_IMPL(RxObserversObservers_$3, initWithRxFunctionsAction1_withRxFunctionsAction1_, capture$0, capture$1)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxObserversObservers_$3)

@implementation RxObserversObservers_$4

- (void)onCompleted {
  [((id<RxFunctionsAction0>) nil_chk(val$onComplete_)) call];
}

- (void)onErrorWithNSException:(NSException *)e {
  [((id<RxFunctionsAction1>) nil_chk(val$onError_)) callWithId:e];
}

- (void)onNextWithId:(id)args {
  [((id<RxFunctionsAction1>) nil_chk(val$onNext_)) callWithId:args];
}

- (instancetype)initWithRxFunctionsAction0:(id<RxFunctionsAction0>)capture$0
                    withRxFunctionsAction1:(id<RxFunctionsAction1>)capture$1
                    withRxFunctionsAction1:(id<RxFunctionsAction1>)capture$2 {
  RxObserversObservers_$4_initWithRxFunctionsAction0_withRxFunctionsAction1_withRxFunctionsAction1_(self, capture$0, capture$1, capture$2);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onCompleted", "V", 0x11, -1, -1, -1, -1, -1, -1 },
    { "onErrorWithNSException:", "V", 0x11, 0, 1, -1, -1, -1, -1 },
    { "onNextWithId:", "V", 0x11, 2, 3, -1, 4, -1, -1 },
    { "initWithRxFunctionsAction0:withRxFunctionsAction1:withRxFunctionsAction1:", NULL, 0x0, -1, 5, -1, 6, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$onComplete_", "LRxFunctionsAction0;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$onError_", "LRxFunctionsAction1;", .constantValue.asLong = 0, 0x1012, -1, -1, 7, -1 },
    { "val$onNext_", "LRxFunctionsAction1;", .constantValue.asLong = 0, 0x1012, -1, -1, 8, -1 },
  };
  static const void *ptrTable[] = { "onError", "LNSException;", "onNext", "LNSObject;", "(TT;)V", "LRxFunctionsAction0;LRxFunctionsAction1;LRxFunctionsAction1;", "(Lrx/functions/Action0;Lrx/functions/Action1<Ljava/lang/Throwable;>;Lrx/functions/Action1<-TT;>;)V", "Lrx/functions/Action1<Ljava/lang/Throwable;>;", "Lrx/functions/Action1<-TT;>;", "LRxObserversObservers;", "createWithRxFunctionsAction1:withRxFunctionsAction1:withRxFunctionsAction0:", "Ljava/lang/Object;Lrx/Observer<TT;>;" };
  static const J2ObjcClassInfo _RxObserversObservers_$4 = { "", "rx.observers", ptrTable, methods, fields, 7, 0x8008, 4, 3, 9, -1, 10, 11, -1 };
  return &_RxObserversObservers_$4;
}

@end

void RxObserversObservers_$4_initWithRxFunctionsAction0_withRxFunctionsAction1_withRxFunctionsAction1_(RxObserversObservers_$4 *self, id<RxFunctionsAction0> capture$0, id<RxFunctionsAction1> capture$1, id<RxFunctionsAction1> capture$2) {
  self->val$onComplete_ = capture$0;
  self->val$onError_ = capture$1;
  self->val$onNext_ = capture$2;
  NSObject_init(self);
}

RxObserversObservers_$4 *new_RxObserversObservers_$4_initWithRxFunctionsAction0_withRxFunctionsAction1_withRxFunctionsAction1_(id<RxFunctionsAction0> capture$0, id<RxFunctionsAction1> capture$1, id<RxFunctionsAction1> capture$2) {
  J2OBJC_NEW_IMPL(RxObserversObservers_$4, initWithRxFunctionsAction0_withRxFunctionsAction1_withRxFunctionsAction1_, capture$0, capture$1, capture$2)
}

RxObserversObservers_$4 *create_RxObserversObservers_$4_initWithRxFunctionsAction0_withRxFunctionsAction1_withRxFunctionsAction1_(id<RxFunctionsAction0> capture$0, id<RxFunctionsAction1> capture$1, id<RxFunctionsAction1> capture$2) {
  J2OBJC_CREATE_IMPL(RxObserversObservers_$4, initWithRxFunctionsAction0_withRxFunctionsAction1_withRxFunctionsAction1_, capture$0, capture$1, capture$2)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxObserversObservers_$4)
