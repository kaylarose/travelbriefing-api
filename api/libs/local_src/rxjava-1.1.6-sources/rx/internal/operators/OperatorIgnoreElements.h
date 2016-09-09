//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/operators/OperatorIgnoreElements.java
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

#pragma push_macro("INCLUDE_ALL_RxInternalOperatorsOperatorIgnoreElements")
#ifdef RESTRICT_RxInternalOperatorsOperatorIgnoreElements
#define INCLUDE_ALL_RxInternalOperatorsOperatorIgnoreElements 0
#else
#define INCLUDE_ALL_RxInternalOperatorsOperatorIgnoreElements 1
#endif
#undef RESTRICT_RxInternalOperatorsOperatorIgnoreElements

#if !defined (RxInternalOperatorsOperatorIgnoreElements_) && (INCLUDE_ALL_RxInternalOperatorsOperatorIgnoreElements || defined(INCLUDE_RxInternalOperatorsOperatorIgnoreElements))
#define RxInternalOperatorsOperatorIgnoreElements_

#define RESTRICT_RxObservable 1
#define INCLUDE_RxObservable_Operator 1
#include "rx/Observable.h"

@class RxSubscriber;

@interface RxInternalOperatorsOperatorIgnoreElements : NSObject < RxObservable_Operator >

#pragma mark Public

- (RxSubscriber *)callWithId:(RxSubscriber *)child;

+ (RxInternalOperatorsOperatorIgnoreElements *)instance;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorIgnoreElements)

FOUNDATION_EXPORT RxInternalOperatorsOperatorIgnoreElements *RxInternalOperatorsOperatorIgnoreElements_instance();

FOUNDATION_EXPORT void RxInternalOperatorsOperatorIgnoreElements_init(RxInternalOperatorsOperatorIgnoreElements *self);

FOUNDATION_EXPORT RxInternalOperatorsOperatorIgnoreElements *new_RxInternalOperatorsOperatorIgnoreElements_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorIgnoreElements *create_RxInternalOperatorsOperatorIgnoreElements_init();

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorIgnoreElements)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalOperatorsOperatorIgnoreElements")