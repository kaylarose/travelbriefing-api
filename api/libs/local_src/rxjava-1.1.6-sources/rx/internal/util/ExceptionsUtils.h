//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/util/ExceptionsUtils.java
//

/*!
 @brief Copyright 2016 Netflix, Inc.
 Licensed under the Apache License, Version 2.0 (the "License"); you may not
 use this file except in compliance with the License. You may obtain a copy of
 the License at
 http://www.apache.org/licenses/LICENSE-2.0
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 License for the specific language governing permissions and limitations under
 the License.
 */
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalUtilExceptionsUtils")
#ifdef RESTRICT_RxInternalUtilExceptionsUtils
#define INCLUDE_ALL_RxInternalUtilExceptionsUtils 0
#else
#define INCLUDE_ALL_RxInternalUtilExceptionsUtils 1
#endif
#undef RESTRICT_RxInternalUtilExceptionsUtils

#if !defined (RxInternalUtilExceptionsUtils_) && (INCLUDE_ALL_RxInternalUtilExceptionsUtils || defined(INCLUDE_RxInternalUtilExceptionsUtils))
#define RxInternalUtilExceptionsUtils_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;
@class JavaUtilConcurrentAtomicAtomicReference;

/*!
 @brief Utility methods for terminal atomics with Throwables.
 @since 1.1.2
 */
@interface RxInternalUtilExceptionsUtils : JavaLangEnum < NSCopying >

#pragma mark Public

/*!
 @brief Atomically sets or combines the error with the contents of the field, wrapping multiple
 errors into CompositeException if necessary.
 @param field the target field
 @param error the error to add
 @return true if successful, false if the target field contains the terminal Throwable.
 */
+ (jboolean)addThrowableWithJavaUtilConcurrentAtomicAtomicReference:(JavaUtilConcurrentAtomicAtomicReference *)field
                                                    withNSException:(NSException *)error;

/*!
 @brief Checks if the given field holds the terminated Throwable instance.
 @param field the target field
 @return true if the given field holds the terminated Throwable instance
 */
+ (jboolean)isTerminatedWithJavaUtilConcurrentAtomicAtomicReference:(JavaUtilConcurrentAtomicAtomicReference *)field;

/*!
 @brief Returns true if the value is the terminated Throwable instance.
 @param error the error to check
 @return true if the value is the terminated Throwable instance
 */
+ (jboolean)isTerminatedWithNSException:(NSException *)error;

/*!
 @brief Atomically swaps in the terminal Throwable and returns the previous
 contents of the field
 @param field the target field
 @return the previous contents of the field before the swap, may be null
 */
+ (NSException *)terminateWithJavaUtilConcurrentAtomicAtomicReference:(JavaUtilConcurrentAtomicAtomicReference *)field;

+ (RxInternalUtilExceptionsUtils *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(RxInternalUtilExceptionsUtils)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT RxInternalUtilExceptionsUtils *RxInternalUtilExceptionsUtils_values_[];

FOUNDATION_EXPORT jboolean RxInternalUtilExceptionsUtils_addThrowableWithJavaUtilConcurrentAtomicAtomicReference_withNSException_(JavaUtilConcurrentAtomicAtomicReference *field, NSException *error);

FOUNDATION_EXPORT NSException *RxInternalUtilExceptionsUtils_terminateWithJavaUtilConcurrentAtomicAtomicReference_(JavaUtilConcurrentAtomicAtomicReference *field);

FOUNDATION_EXPORT jboolean RxInternalUtilExceptionsUtils_isTerminatedWithJavaUtilConcurrentAtomicAtomicReference_(JavaUtilConcurrentAtomicAtomicReference *field);

FOUNDATION_EXPORT jboolean RxInternalUtilExceptionsUtils_isTerminatedWithNSException_(NSException *error);

FOUNDATION_EXPORT IOSObjectArray *RxInternalUtilExceptionsUtils_values();

FOUNDATION_EXPORT RxInternalUtilExceptionsUtils *RxInternalUtilExceptionsUtils_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT RxInternalUtilExceptionsUtils *RxInternalUtilExceptionsUtils_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalUtilExceptionsUtils)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalUtilExceptionsUtils")