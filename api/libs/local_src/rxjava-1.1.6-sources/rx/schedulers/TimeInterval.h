//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/schedulers/TimeInterval.java
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

#pragma push_macro("INCLUDE_ALL_RxSchedulersTimeInterval")
#ifdef RESTRICT_RxSchedulersTimeInterval
#define INCLUDE_ALL_RxSchedulersTimeInterval 0
#else
#define INCLUDE_ALL_RxSchedulersTimeInterval 1
#endif
#undef RESTRICT_RxSchedulersTimeInterval

#if !defined (RxSchedulersTimeInterval_) && (INCLUDE_ALL_RxSchedulersTimeInterval || defined(INCLUDE_RxSchedulersTimeInterval))
#define RxSchedulersTimeInterval_

/*!
 @brief A <code>TimeInterval</code> represents an item emitted by an <code>Observable</code> along with the amount of time that
 elapsed either since the emission of the previous item or (if there was no previous item) since the
 <code>Observable</code> was first subscribed to.
 */
@interface RxSchedulersTimeInterval : NSObject

#pragma mark Public

/*!
 @brief Creates a <code>TimeInterval</code> object.
 @param intervalInMilliseconds
 the number of milliseconds between the time when <code>value</code> was emitted and the item that
 was emitted immediately prior to <code>value</code>, or, if there was no such prior item, since the
 initial subscription to the <code>Observable</code>
 @param value
 the item emitted by the Observable
 */
- (instancetype)initWithLong:(jlong)intervalInMilliseconds
                      withId:(id)value;

- (jboolean)isEqual:(id)obj;

/*!
 @brief Returns the time interval, expressed in milliseconds.
 @return the time interval in milliseconds
 */
- (jlong)getIntervalInMilliseconds;

/*!
 @brief Returns the item that was emitted by the Observable after this time interval.
 @return the item that was emitted by the Observable
 */
- (id)getValue;

- (NSUInteger)hash;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(RxSchedulersTimeInterval)

FOUNDATION_EXPORT void RxSchedulersTimeInterval_initWithLong_withId_(RxSchedulersTimeInterval *self, jlong intervalInMilliseconds, id value);

FOUNDATION_EXPORT RxSchedulersTimeInterval *new_RxSchedulersTimeInterval_initWithLong_withId_(jlong intervalInMilliseconds, id value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxSchedulersTimeInterval *create_RxSchedulersTimeInterval_initWithLong_withId_(jlong intervalInMilliseconds, id value);

J2OBJC_TYPE_LITERAL_HEADER(RxSchedulersTimeInterval)

#endif

#pragma pop_macro("INCLUDE_ALL_RxSchedulersTimeInterval")