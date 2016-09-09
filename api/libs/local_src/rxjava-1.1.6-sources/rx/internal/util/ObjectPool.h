//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/util/ObjectPool.java
//

/*!
 @brief Copyright 2014 Netflix, Inc.
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 http://www.apache.org/licenses/LICENSE-2.0
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 Modified from http://www.javacodegeeks.com/2013/08/simple-and-lightweight-pool-implementation.html
 */
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalUtilObjectPool")
#ifdef RESTRICT_RxInternalUtilObjectPool
#define INCLUDE_ALL_RxInternalUtilObjectPool 0
#else
#define INCLUDE_ALL_RxInternalUtilObjectPool 1
#endif
#undef RESTRICT_RxInternalUtilObjectPool

#if !defined (RxInternalUtilObjectPool_) && (INCLUDE_ALL_RxInternalUtilObjectPool || defined(INCLUDE_RxInternalUtilObjectPool))
#define RxInternalUtilObjectPool_

#define RESTRICT_RxInternalSchedulersSchedulerLifecycle 1
#define INCLUDE_RxInternalSchedulersSchedulerLifecycle 1
#include "rx/internal/schedulers/SchedulerLifecycle.h"

@protocol JavaUtilQueue;

@interface RxInternalUtilObjectPool : NSObject < RxInternalSchedulersSchedulerLifecycle > {
 @public
  id<JavaUtilQueue> pool_;
  jint minSize_;
  jint maxSize_;
}

#pragma mark Public

- (instancetype)init;

/*!
 @brief Gets the next free object from the pool.
 If the pool doesn't contain any objects,
 a new object will be created and given to the caller of this method back.
 @return T borrowed object
 */
- (id)borrowObject;

/*!
 @brief Returns object back to the pool.
 @param object
 object to be returned
 */
- (void)returnObjectWithId:(id)object;

/*!
 @brief Shutdown this pool.
 */
- (void)shutdown;

- (void)start;

#pragma mark Protected

/*!
 @brief Creates a new object.
 @return T new object
 */
- (id)createObject;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalUtilObjectPool)

J2OBJC_FIELD_SETTER(RxInternalUtilObjectPool, pool_, id<JavaUtilQueue>)

FOUNDATION_EXPORT void RxInternalUtilObjectPool_init(RxInternalUtilObjectPool *self);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalUtilObjectPool)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalUtilObjectPool")
