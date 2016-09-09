//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/functions/Action3.java
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

#pragma push_macro("INCLUDE_ALL_RxFunctionsAction3")
#ifdef RESTRICT_RxFunctionsAction3
#define INCLUDE_ALL_RxFunctionsAction3 0
#else
#define INCLUDE_ALL_RxFunctionsAction3 1
#endif
#undef RESTRICT_RxFunctionsAction3

#if !defined (RxFunctionsAction3_) && (INCLUDE_ALL_RxFunctionsAction3 || defined(INCLUDE_RxFunctionsAction3))
#define RxFunctionsAction3_

#define RESTRICT_RxFunctionsAction 1
#define INCLUDE_RxFunctionsAction 1
#include "rx/functions/Action.h"

/*!
 @brief A three-argument action.
 */
@protocol RxFunctionsAction3 < RxFunctionsAction, JavaObject >

- (void)callWithId:(id)t1
            withId:(id)t2
            withId:(id)t3;

@end

J2OBJC_EMPTY_STATIC_INIT(RxFunctionsAction3)

J2OBJC_TYPE_LITERAL_HEADER(RxFunctionsAction3)

#endif

#pragma pop_macro("INCLUDE_ALL_RxFunctionsAction3")
