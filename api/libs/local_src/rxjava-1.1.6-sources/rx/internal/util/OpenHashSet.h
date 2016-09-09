//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/util/OpenHashSet.java
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

#pragma push_macro("INCLUDE_ALL_RxInternalUtilOpenHashSet")
#ifdef RESTRICT_RxInternalUtilOpenHashSet
#define INCLUDE_ALL_RxInternalUtilOpenHashSet 0
#else
#define INCLUDE_ALL_RxInternalUtilOpenHashSet 1
#endif
#undef RESTRICT_RxInternalUtilOpenHashSet

#if !defined (RxInternalUtilOpenHashSet_) && (INCLUDE_ALL_RxInternalUtilOpenHashSet || defined(INCLUDE_RxInternalUtilOpenHashSet))
#define RxInternalUtilOpenHashSet_

@class IOSObjectArray;
@protocol RxFunctionsAction1;

/*!
 @brief A simple open hash set with add, remove and clear capabilities only.
 <p>Doesn't support nor checks for <code>null</code>s.
 */
@interface RxInternalUtilOpenHashSet : NSObject {
 @public
  jfloat loadFactor_;
  jint mask_;
  jint size_;
  jint maxSize_;
  IOSObjectArray *keys_;
}

#pragma mark Public

- (instancetype)init;

/*!
 @brief Creates an OpenHashSet with the initial capacity and load factor of 0.75f.
 @param capacity the initial capacity
 */
- (instancetype)initWithInt:(jint)capacity;

- (instancetype)initWithInt:(jint)capacity
                  withFloat:(jfloat)loadFactor;

- (jboolean)addWithId:(id)value;

- (void)clearWithRxFunctionsAction1:(id<RxFunctionsAction1>)clearAction;

- (jboolean)isEmpty;

- (jboolean)removeWithId:(id)value;

- (void)terminate;

/*!
 @brief Returns the raw array of values of this set, watch out for null entires.
 @return the raw array of values of this set
 */
- (IOSObjectArray *)values;

#pragma mark Package-Private

+ (jint)mixWithInt:(jint)x;

- (void)rehash;

- (jboolean)removeEntryWithInt:(jint)pos
             withNSObjectArray:(IOSObjectArray *)a
                       withInt:(jint)m;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalUtilOpenHashSet)

J2OBJC_FIELD_SETTER(RxInternalUtilOpenHashSet, keys_, IOSObjectArray *)

FOUNDATION_EXPORT void RxInternalUtilOpenHashSet_init(RxInternalUtilOpenHashSet *self);

FOUNDATION_EXPORT RxInternalUtilOpenHashSet *new_RxInternalUtilOpenHashSet_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalUtilOpenHashSet *create_RxInternalUtilOpenHashSet_init();

FOUNDATION_EXPORT void RxInternalUtilOpenHashSet_initWithInt_(RxInternalUtilOpenHashSet *self, jint capacity);

FOUNDATION_EXPORT RxInternalUtilOpenHashSet *new_RxInternalUtilOpenHashSet_initWithInt_(jint capacity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalUtilOpenHashSet *create_RxInternalUtilOpenHashSet_initWithInt_(jint capacity);

FOUNDATION_EXPORT void RxInternalUtilOpenHashSet_initWithInt_withFloat_(RxInternalUtilOpenHashSet *self, jint capacity, jfloat loadFactor);

FOUNDATION_EXPORT RxInternalUtilOpenHashSet *new_RxInternalUtilOpenHashSet_initWithInt_withFloat_(jint capacity, jfloat loadFactor) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalUtilOpenHashSet *create_RxInternalUtilOpenHashSet_initWithInt_withFloat_(jint capacity, jfloat loadFactor);

FOUNDATION_EXPORT jint RxInternalUtilOpenHashSet_mixWithInt_(jint x);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalUtilOpenHashSet)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalUtilOpenHashSet")
