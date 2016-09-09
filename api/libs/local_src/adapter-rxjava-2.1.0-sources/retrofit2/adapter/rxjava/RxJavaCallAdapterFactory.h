//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/adapter-rxjava-2.1.0-sources/retrofit2/adapter/rxjava/RxJavaCallAdapterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory")
#ifdef RESTRICT_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory
#define INCLUDE_ALL_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory 0
#else
#define INCLUDE_ALL_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory 1
#endif
#undef RESTRICT_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory

#if !defined (Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_) && (INCLUDE_ALL_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory || defined(INCLUDE_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory))
#define Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_

#define RESTRICT_Retrofit2CallAdapter 1
#define INCLUDE_Retrofit2CallAdapter_Factory 1
#include "retrofit2/CallAdapter.h"

@class IOSObjectArray;
@class Retrofit2Retrofit;
@class RxScheduler;
@protocol JavaLangReflectType;
@protocol Retrofit2CallAdapter;

/*!
 @brief A call adapter which uses RxJava for creating observables.
 <p>
 Adding this class to <code>Retrofit</code> allows you to return <code>Observable</code> from service
 methods.
 @code
<code>
  interface MyService {
   &#64;GET("user/me")
   Observable&lt;User&gt; getUser()
  }
  
@endcode
 There are three configurations supported for the <code>Observable</code> type parameter:
 <ul>
 <li>Direct body (e.g., <code>Observable<User></code>) calls <code>onNext</code> with the deserialized body
 for 2XX responses and calls <code>onError</code> with <code>HttpException</code> for non-2XX responses and
 <code>IOException</code> for network errors.</li>
 <li>Response wrapped body (e.g., <code>Observable<Response<User>></code>) calls <code>onNext</code>
 with a <code>Response</code> object for all HTTP responses and calls <code>onError</code> with
 <code>IOException</code> for network errors</li>
 <li>Result wrapped body (e.g., <code>Observable<Result<User>></code>) calls <code>onNext</code> with a
 <code>Result</code> object for all HTTP responses and errors.</li>
 </ul>
 */
@interface Retrofit2AdapterRxjavaRxJavaCallAdapterFactory : Retrofit2CallAdapter_Factory

#pragma mark Public

/*!
 @brief Returns an instance which creates synchronous observables that do not operate on any scheduler
 by default.
 */
+ (Retrofit2AdapterRxjavaRxJavaCallAdapterFactory *)create;

/*!
 @brief Returns an instance which creates synchronous observables that
 subscribe on <code>scheduler</code> by default.
 */
+ (Retrofit2AdapterRxjavaRxJavaCallAdapterFactory *)createWithSchedulerWithRxScheduler:(RxScheduler *)scheduler;

- (id<Retrofit2CallAdapter>)getWithJavaLangReflectType:(id<JavaLangReflectType>)returnType
                 withJavaLangAnnotationAnnotationArray:(IOSObjectArray *)annotations
                                 withRetrofit2Retrofit:(Retrofit2Retrofit *)retrofit;

@end

J2OBJC_EMPTY_STATIC_INIT(Retrofit2AdapterRxjavaRxJavaCallAdapterFactory)

FOUNDATION_EXPORT Retrofit2AdapterRxjavaRxJavaCallAdapterFactory *Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_create();

FOUNDATION_EXPORT Retrofit2AdapterRxjavaRxJavaCallAdapterFactory *Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_createWithSchedulerWithRxScheduler_(RxScheduler *scheduler);

J2OBJC_TYPE_LITERAL_HEADER(Retrofit2AdapterRxjavaRxJavaCallAdapterFactory)

#endif

#if !defined (Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_CallOnSubscribe_) && (INCLUDE_ALL_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory || defined(INCLUDE_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_CallOnSubscribe))
#define Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_CallOnSubscribe_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_OnSubscribe 1
#include "rx/Observable.h"

@class RxSubscriber;
@protocol Retrofit2Call;

@interface Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_CallOnSubscribe : NSObject < RxObservable_OnSubscribe >

#pragma mark Public

- (void)callWithId:(RxSubscriber *)subscriber;

#pragma mark Package-Private

- (instancetype)initWithRetrofit2Call:(id<Retrofit2Call>)originalCall;

@end

J2OBJC_EMPTY_STATIC_INIT(Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_CallOnSubscribe)

FOUNDATION_EXPORT void Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_CallOnSubscribe_initWithRetrofit2Call_(Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_CallOnSubscribe *self, id<Retrofit2Call> originalCall);

FOUNDATION_EXPORT Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_CallOnSubscribe *new_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_CallOnSubscribe_initWithRetrofit2Call_(id<Retrofit2Call> originalCall) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_CallOnSubscribe *create_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_CallOnSubscribe_initWithRetrofit2Call_(id<Retrofit2Call> originalCall);

J2OBJC_TYPE_LITERAL_HEADER(Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_CallOnSubscribe)

#endif

#if !defined (Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_RequestArbiter_) && (INCLUDE_ALL_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory || defined(INCLUDE_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_RequestArbiter))
#define Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_RequestArbiter_

#define RESTRICT_JavaUtilConcurrentAtomicAtomicBoolean 1
#define INCLUDE_JavaUtilConcurrentAtomicAtomicBoolean 1
#include "java/util/concurrent/atomic/AtomicBoolean.h"

#define RESTRICT_RxSubscription 1
#define INCLUDE_RxSubscription 1
#include "rx/Subscription.h"

#define RESTRICT_RxProducer 1
#define INCLUDE_RxProducer 1
#include "rx/Producer.h"

@class RxSubscriber;
@protocol Retrofit2Call;

@interface Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_RequestArbiter : JavaUtilConcurrentAtomicAtomicBoolean < RxSubscription, RxProducer >

#pragma mark Public

- (jboolean)isUnsubscribed;

- (void)requestWithLong:(jlong)n;

- (void)unsubscribe;

#pragma mark Package-Private

- (instancetype)initWithRetrofit2Call:(id<Retrofit2Call>)call
                     withRxSubscriber:(RxSubscriber *)subscriber;

@end

J2OBJC_EMPTY_STATIC_INIT(Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_RequestArbiter)

FOUNDATION_EXPORT void Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_RequestArbiter_initWithRetrofit2Call_withRxSubscriber_(Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_RequestArbiter *self, id<Retrofit2Call> call, RxSubscriber *subscriber);

FOUNDATION_EXPORT Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_RequestArbiter *new_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_RequestArbiter_initWithRetrofit2Call_withRxSubscriber_(id<Retrofit2Call> call, RxSubscriber *subscriber) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_RequestArbiter *create_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_RequestArbiter_initWithRetrofit2Call_withRxSubscriber_(id<Retrofit2Call> call, RxSubscriber *subscriber);

J2OBJC_TYPE_LITERAL_HEADER(Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_RequestArbiter)

#endif

#if !defined (Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_ResponseCallAdapter_) && (INCLUDE_ALL_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory || defined(INCLUDE_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_ResponseCallAdapter))
#define Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_ResponseCallAdapter_

#define RESTRICT_Retrofit2CallAdapter 1
#define INCLUDE_Retrofit2CallAdapter 1
#include "retrofit2/CallAdapter.h"

@class RxObservable;
@class RxScheduler;
@protocol JavaLangReflectType;
@protocol Retrofit2Call;

@interface Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_ResponseCallAdapter : NSObject < Retrofit2CallAdapter >

#pragma mark Public

- (RxObservable *)adaptWithRetrofit2Call:(id<Retrofit2Call>)call;

- (id<JavaLangReflectType>)responseType;

#pragma mark Package-Private

- (instancetype)initWithJavaLangReflectType:(id<JavaLangReflectType>)responseType
                            withRxScheduler:(RxScheduler *)scheduler;

@end

J2OBJC_EMPTY_STATIC_INIT(Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_ResponseCallAdapter)

FOUNDATION_EXPORT void Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_ResponseCallAdapter_initWithJavaLangReflectType_withRxScheduler_(Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_ResponseCallAdapter *self, id<JavaLangReflectType> responseType, RxScheduler *scheduler);

FOUNDATION_EXPORT Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_ResponseCallAdapter *new_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_ResponseCallAdapter_initWithJavaLangReflectType_withRxScheduler_(id<JavaLangReflectType> responseType, RxScheduler *scheduler) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_ResponseCallAdapter *create_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_ResponseCallAdapter_initWithJavaLangReflectType_withRxScheduler_(id<JavaLangReflectType> responseType, RxScheduler *scheduler);

J2OBJC_TYPE_LITERAL_HEADER(Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_ResponseCallAdapter)

#endif

#if !defined (Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_SimpleCallAdapter_) && (INCLUDE_ALL_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory || defined(INCLUDE_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_SimpleCallAdapter))
#define Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_SimpleCallAdapter_

#define RESTRICT_Retrofit2CallAdapter 1
#define INCLUDE_Retrofit2CallAdapter 1
#include "retrofit2/CallAdapter.h"

@class RxObservable;
@class RxScheduler;
@protocol JavaLangReflectType;
@protocol Retrofit2Call;

@interface Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_SimpleCallAdapter : NSObject < Retrofit2CallAdapter >

#pragma mark Public

- (RxObservable *)adaptWithRetrofit2Call:(id<Retrofit2Call>)call;

- (id<JavaLangReflectType>)responseType;

#pragma mark Package-Private

- (instancetype)initWithJavaLangReflectType:(id<JavaLangReflectType>)responseType
                            withRxScheduler:(RxScheduler *)scheduler;

@end

J2OBJC_EMPTY_STATIC_INIT(Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_SimpleCallAdapter)

FOUNDATION_EXPORT void Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_SimpleCallAdapter_initWithJavaLangReflectType_withRxScheduler_(Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_SimpleCallAdapter *self, id<JavaLangReflectType> responseType, RxScheduler *scheduler);

FOUNDATION_EXPORT Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_SimpleCallAdapter *new_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_SimpleCallAdapter_initWithJavaLangReflectType_withRxScheduler_(id<JavaLangReflectType> responseType, RxScheduler *scheduler) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_SimpleCallAdapter *create_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_SimpleCallAdapter_initWithJavaLangReflectType_withRxScheduler_(id<JavaLangReflectType> responseType, RxScheduler *scheduler);

J2OBJC_TYPE_LITERAL_HEADER(Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_SimpleCallAdapter)

#endif

#if !defined (Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_ResultCallAdapter_) && (INCLUDE_ALL_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory || defined(INCLUDE_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_ResultCallAdapter))
#define Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_ResultCallAdapter_

#define RESTRICT_Retrofit2CallAdapter 1
#define INCLUDE_Retrofit2CallAdapter 1
#include "retrofit2/CallAdapter.h"

@class RxObservable;
@class RxScheduler;
@protocol JavaLangReflectType;
@protocol Retrofit2Call;

@interface Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_ResultCallAdapter : NSObject < Retrofit2CallAdapter >

#pragma mark Public

- (RxObservable *)adaptWithRetrofit2Call:(id<Retrofit2Call>)call;

- (id<JavaLangReflectType>)responseType;

#pragma mark Package-Private

- (instancetype)initWithJavaLangReflectType:(id<JavaLangReflectType>)responseType
                            withRxScheduler:(RxScheduler *)scheduler;

@end

J2OBJC_EMPTY_STATIC_INIT(Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_ResultCallAdapter)

FOUNDATION_EXPORT void Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_ResultCallAdapter_initWithJavaLangReflectType_withRxScheduler_(Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_ResultCallAdapter *self, id<JavaLangReflectType> responseType, RxScheduler *scheduler);

FOUNDATION_EXPORT Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_ResultCallAdapter *new_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_ResultCallAdapter_initWithJavaLangReflectType_withRxScheduler_(id<JavaLangReflectType> responseType, RxScheduler *scheduler) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_ResultCallAdapter *create_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_ResultCallAdapter_initWithJavaLangReflectType_withRxScheduler_(id<JavaLangReflectType> responseType, RxScheduler *scheduler);

J2OBJC_TYPE_LITERAL_HEADER(Retrofit2AdapterRxjavaRxJavaCallAdapterFactory_ResultCallAdapter)

#endif

#pragma pop_macro("INCLUDE_ALL_Retrofit2AdapterRxjavaRxJavaCallAdapterFactory")