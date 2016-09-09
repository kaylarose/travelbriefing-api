//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/functions/FuncN.java
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

#pragma push_macro("INCLUDE_ALL_RxFunctionsFuncN")
#ifdef RESTRICT_RxFunctionsFuncN
#define INCLUDE_ALL_RxFunctionsFuncN 0
#else
#define INCLUDE_ALL_RxFunctionsFuncN 1
#endif
#undef RESTRICT_RxFunctionsFuncN

#if !defined (RxFunctionsFuncN_) && (INCLUDE_ALL_RxFunctionsFuncN || defined(INCLUDE_RxFunctionsFuncN))
#define RxFunctionsFuncN_

#define RESTRICT_RxFunctionsFunction 1
#define INCLUDE_RxFunctionsFunction 1
#include "rx/functions/Function.h"

@class IOSObjectArray;

/*!
 @brief Represents a vector-argument function.
 */
@protocol RxFunctionsFuncN < RxFunctionsFunction, JavaObject >

- (id)callWithNSObjectArray:(IOSObjectArray *)args;

@end

J2OBJC_EMPTY_STATIC_INIT(RxFunctionsFuncN)

J2OBJC_TYPE_LITERAL_HEADER(RxFunctionsFuncN)

#endif

#pragma pop_macro("INCLUDE_ALL_RxFunctionsFuncN")