//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/adapter-rxjava-2.1.0-sources/retrofit2/adapter/rxjava/SingleHelper.java
//

#include "J2ObjC_source.h"
#include "java/lang/reflect/Type.h"
#include "retrofit2/Call.h"
#include "retrofit2/CallAdapter.h"
#include "retrofit2/adapter/rxjava/SingleHelper.h"
#include "rx/Observable.h"
#include "rx/Single.h"

@interface Retrofit2AdapterRxjavaSingleHelper_$1 : NSObject < Retrofit2CallAdapter > {
 @public
  id<Retrofit2CallAdapter> val$callAdapter_;
}

- (id<JavaLangReflectType>)responseType;

- (RxSingle *)adaptWithRetrofit2Call:(id<Retrofit2Call>)call;

- (instancetype)initWithRetrofit2CallAdapter:(id<Retrofit2CallAdapter>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(Retrofit2AdapterRxjavaSingleHelper_$1)

J2OBJC_FIELD_SETTER(Retrofit2AdapterRxjavaSingleHelper_$1, val$callAdapter_, id<Retrofit2CallAdapter>)

__attribute__((unused)) static void Retrofit2AdapterRxjavaSingleHelper_$1_initWithRetrofit2CallAdapter_(Retrofit2AdapterRxjavaSingleHelper_$1 *self, id<Retrofit2CallAdapter> capture$0);

__attribute__((unused)) static Retrofit2AdapterRxjavaSingleHelper_$1 *new_Retrofit2AdapterRxjavaSingleHelper_$1_initWithRetrofit2CallAdapter_(id<Retrofit2CallAdapter> capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static Retrofit2AdapterRxjavaSingleHelper_$1 *create_Retrofit2AdapterRxjavaSingleHelper_$1_initWithRetrofit2CallAdapter_(id<Retrofit2CallAdapter> capture$0);

J2OBJC_TYPE_LITERAL_HEADER(Retrofit2AdapterRxjavaSingleHelper_$1)

@implementation Retrofit2AdapterRxjavaSingleHelper

+ (id<Retrofit2CallAdapter>)makeSingleWithRetrofit2CallAdapter:(id<Retrofit2CallAdapter>)callAdapter {
  return Retrofit2AdapterRxjavaSingleHelper_makeSingleWithRetrofit2CallAdapter_(callAdapter);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  Retrofit2AdapterRxjavaSingleHelper_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "makeSingleWithRetrofit2CallAdapter:", "LRetrofit2CallAdapter;", 0x8, 0, 1, -1, 2, -1, -1 },
    { "init", NULL, 0x0, -1, -1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "makeSingle", "LRetrofit2CallAdapter;", "(Lretrofit2/CallAdapter<Lrx/Observable<*>;>;)Lretrofit2/CallAdapter<Lrx/Single<*>;>;" };
  static const J2ObjcClassInfo _Retrofit2AdapterRxjavaSingleHelper = { "SingleHelper", "retrofit2.adapter.rxjava", ptrTable, methods, NULL, 7, 0x10, 2, 0, -1, -1, -1, -1, -1 };
  return &_Retrofit2AdapterRxjavaSingleHelper;
}

@end

id<Retrofit2CallAdapter> Retrofit2AdapterRxjavaSingleHelper_makeSingleWithRetrofit2CallAdapter_(id<Retrofit2CallAdapter> callAdapter) {
  Retrofit2AdapterRxjavaSingleHelper_initialize();
  return new_Retrofit2AdapterRxjavaSingleHelper_$1_initWithRetrofit2CallAdapter_(callAdapter);
}

void Retrofit2AdapterRxjavaSingleHelper_init(Retrofit2AdapterRxjavaSingleHelper *self) {
  NSObject_init(self);
}

Retrofit2AdapterRxjavaSingleHelper *new_Retrofit2AdapterRxjavaSingleHelper_init() {
  J2OBJC_NEW_IMPL(Retrofit2AdapterRxjavaSingleHelper, init)
}

Retrofit2AdapterRxjavaSingleHelper *create_Retrofit2AdapterRxjavaSingleHelper_init() {
  J2OBJC_CREATE_IMPL(Retrofit2AdapterRxjavaSingleHelper, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(Retrofit2AdapterRxjavaSingleHelper)

@implementation Retrofit2AdapterRxjavaSingleHelper_$1

- (id<JavaLangReflectType>)responseType {
  return [((id<Retrofit2CallAdapter>) nil_chk(val$callAdapter_)) responseType];
}

- (RxSingle *)adaptWithRetrofit2Call:(id<Retrofit2Call>)call {
  RxObservable *observable = [((id<Retrofit2CallAdapter>) nil_chk(val$callAdapter_)) adaptWithRetrofit2Call:call];
  return [((RxObservable *) nil_chk(observable)) toSingle];
}

- (instancetype)initWithRetrofit2CallAdapter:(id<Retrofit2CallAdapter>)capture$0 {
  Retrofit2AdapterRxjavaSingleHelper_$1_initWithRetrofit2CallAdapter_(self, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "responseType", "LJavaLangReflectType;", 0x1, -1, -1, -1, -1, -1, -1 },
    { "adaptWithRetrofit2Call:", "LRxSingle;", 0x1, 0, 1, -1, 2, -1, -1 },
    { "initWithRetrofit2CallAdapter:", NULL, 0x0, -1, 3, -1, 4, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$callAdapter_", "LRetrofit2CallAdapter;", .constantValue.asLong = 0, 0x1012, -1, -1, 5, -1 },
  };
  static const void *ptrTable[] = { "adapt", "LRetrofit2Call;", "<R:Ljava/lang/Object;>(Lretrofit2/Call<TR;>;)Lrx/Single<*>;", "LRetrofit2CallAdapter;", "(Lretrofit2/CallAdapter<Lrx/Observable<*>;>;)V", "Lretrofit2/CallAdapter<Lrx/Observable<*>;>;", "LRetrofit2AdapterRxjavaSingleHelper;", "makeSingleWithRetrofit2CallAdapter:", "Ljava/lang/Object;Lretrofit2/CallAdapter<Lrx/Single<*>;>;" };
  static const J2ObjcClassInfo _Retrofit2AdapterRxjavaSingleHelper_$1 = { "", "retrofit2.adapter.rxjava", ptrTable, methods, fields, 7, 0x8008, 3, 1, 6, -1, 7, 8, -1 };
  return &_Retrofit2AdapterRxjavaSingleHelper_$1;
}

@end

void Retrofit2AdapterRxjavaSingleHelper_$1_initWithRetrofit2CallAdapter_(Retrofit2AdapterRxjavaSingleHelper_$1 *self, id<Retrofit2CallAdapter> capture$0) {
  self->val$callAdapter_ = capture$0;
  NSObject_init(self);
}

Retrofit2AdapterRxjavaSingleHelper_$1 *new_Retrofit2AdapterRxjavaSingleHelper_$1_initWithRetrofit2CallAdapter_(id<Retrofit2CallAdapter> capture$0) {
  J2OBJC_NEW_IMPL(Retrofit2AdapterRxjavaSingleHelper_$1, initWithRetrofit2CallAdapter_, capture$0)
}

Retrofit2AdapterRxjavaSingleHelper_$1 *create_Retrofit2AdapterRxjavaSingleHelper_$1_initWithRetrofit2CallAdapter_(id<Retrofit2CallAdapter> capture$0) {
  J2OBJC_CREATE_IMPL(Retrofit2AdapterRxjavaSingleHelper_$1, initWithRetrofit2CallAdapter_, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(Retrofit2AdapterRxjavaSingleHelper_$1)