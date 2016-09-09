//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/CompletableOnSubscribeMergeDelayErrorArray.java
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
 */
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray")
#ifdef RESTRICT_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray
#define INCLUDE_ALL_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray 0
#else
#define INCLUDE_ALL_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray 1
#endif
#undef RESTRICT_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray

#if !defined (RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_) && (INCLUDE_ALL_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray || defined(INCLUDE_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray))
#define RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_

#define RESTRICT_RxCompletable 1
#define INCLUDE_RxCompletable_CompletableOnSubscribe 1
#include "rx/Completable.h"

@class IOSObjectArray;
@protocol RxCompletable_CompletableSubscriber;

@interface RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray : NSObject < RxCompletable_CompletableOnSubscribe > {
 @public
  IOSObjectArray *sources_;
}

#pragma mark Public

- (instancetype)initWithRxCompletableArray:(IOSObjectArray *)sources;

- (void)callWithId:(id<RxCompletable_CompletableSubscriber>)s;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray)

J2OBJC_FIELD_SETTER(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray, sources_, IOSObjectArray *)

FOUNDATION_EXPORT void RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_initWithRxCompletableArray_(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray *self, IOSObjectArray *sources);

FOUNDATION_EXPORT RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray *new_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_initWithRxCompletableArray_(IOSObjectArray *sources) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray *create_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray_initWithRxCompletableArray_(IOSObjectArray *sources);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsCompletableOnSubscribeMergeDelayErrorArray")
