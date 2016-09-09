//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/schedulers/ImmediateScheduler.java
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

#pragma push_macro("INCLUDE_ALL_RxInternalSchedulersImmediateScheduler")
#ifdef RESTRICT_RxInternalSchedulersImmediateScheduler
#define INCLUDE_ALL_RxInternalSchedulersImmediateScheduler 0
#else
#define INCLUDE_ALL_RxInternalSchedulersImmediateScheduler 1
#endif
#undef RESTRICT_RxInternalSchedulersImmediateScheduler

#if !defined (RxInternalSchedulersImmediateScheduler_) && (INCLUDE_ALL_RxInternalSchedulersImmediateScheduler || defined(INCLUDE_RxInternalSchedulersImmediateScheduler))
#define RxInternalSchedulersImmediateScheduler_

#define RESTRICT_RxScheduler 1
#define INCLUDE_RxScheduler 1
#include "rx/Scheduler.h"

@class RxScheduler_Worker;

/*!
 @brief Executes work immediately on the current thread.
 */
@interface RxInternalSchedulersImmediateScheduler : RxScheduler

+ (RxInternalSchedulersImmediateScheduler *)INSTANCE;

#pragma mark Public

- (RxScheduler_Worker *)createWorker;

@end

J2OBJC_STATIC_INIT(RxInternalSchedulersImmediateScheduler)

inline RxInternalSchedulersImmediateScheduler *RxInternalSchedulersImmediateScheduler_get_INSTANCE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT RxInternalSchedulersImmediateScheduler *RxInternalSchedulersImmediateScheduler_INSTANCE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxInternalSchedulersImmediateScheduler, INSTANCE, RxInternalSchedulersImmediateScheduler *)

J2OBJC_TYPE_LITERAL_HEADER(RxInternalSchedulersImmediateScheduler)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalSchedulersImmediateScheduler")
