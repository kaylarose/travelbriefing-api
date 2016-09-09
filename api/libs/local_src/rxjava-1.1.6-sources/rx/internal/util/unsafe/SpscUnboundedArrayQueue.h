//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/util/unsafe/SpscUnboundedArrayQueue.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalUtilUnsafeSpscUnboundedArrayQueue")
#ifdef RESTRICT_RxInternalUtilUnsafeSpscUnboundedArrayQueue
#define INCLUDE_ALL_RxInternalUtilUnsafeSpscUnboundedArrayQueue 0
#else
#define INCLUDE_ALL_RxInternalUtilUnsafeSpscUnboundedArrayQueue 1
#endif
#undef RESTRICT_RxInternalUtilUnsafeSpscUnboundedArrayQueue
#ifdef INCLUDE_RxInternalUtilUnsafeSpscUnboundedArrayQueue
#define INCLUDE_RxInternalUtilUnsafeSpscUnboundedArrayQueueConsumerField 1
#endif
#ifdef INCLUDE_RxInternalUtilUnsafeSpscUnboundedArrayQueueConsumerField
#define INCLUDE_RxInternalUtilUnsafeSpscUnboundedArrayQueueConsumerColdField 1
#endif
#ifdef INCLUDE_RxInternalUtilUnsafeSpscUnboundedArrayQueueConsumerColdField
#define INCLUDE_RxInternalUtilUnsafeSpscUnboundedArrayQueueL2Pad 1
#endif
#ifdef INCLUDE_RxInternalUtilUnsafeSpscUnboundedArrayQueueL2Pad
#define INCLUDE_RxInternalUtilUnsafeSpscUnboundedArrayQueueProducerColdFields 1
#endif
#ifdef INCLUDE_RxInternalUtilUnsafeSpscUnboundedArrayQueueProducerColdFields
#define INCLUDE_RxInternalUtilUnsafeSpscUnboundedArrayQueueProducerFields 1
#endif

#if !defined (RxInternalUtilUnsafeSpscUnboundedArrayQueueProducerFields_) && (INCLUDE_ALL_RxInternalUtilUnsafeSpscUnboundedArrayQueue || defined(INCLUDE_RxInternalUtilUnsafeSpscUnboundedArrayQueueProducerFields))
#define RxInternalUtilUnsafeSpscUnboundedArrayQueueProducerFields_

#define RESTRICT_JavaUtilAbstractQueue 1
#define INCLUDE_JavaUtilAbstractQueue 1
#include "java/util/AbstractQueue.h"

@interface RxInternalUtilUnsafeSpscUnboundedArrayQueueProducerFields : JavaUtilAbstractQueue {
 @public
  jlong producerIndex_;
}

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalUtilUnsafeSpscUnboundedArrayQueueProducerFields)

FOUNDATION_EXPORT void RxInternalUtilUnsafeSpscUnboundedArrayQueueProducerFields_init(RxInternalUtilUnsafeSpscUnboundedArrayQueueProducerFields *self);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalUtilUnsafeSpscUnboundedArrayQueueProducerFields)

#endif

#if !defined (RxInternalUtilUnsafeSpscUnboundedArrayQueueProducerColdFields_) && (INCLUDE_ALL_RxInternalUtilUnsafeSpscUnboundedArrayQueue || defined(INCLUDE_RxInternalUtilUnsafeSpscUnboundedArrayQueueProducerColdFields))
#define RxInternalUtilUnsafeSpscUnboundedArrayQueueProducerColdFields_

@class IOSObjectArray;

@interface RxInternalUtilUnsafeSpscUnboundedArrayQueueProducerColdFields : RxInternalUtilUnsafeSpscUnboundedArrayQueueProducerFields {
 @public
  jint producerLookAheadStep_;
  jlong producerLookAhead_;
  jlong producerMask_;
  IOSObjectArray *producerBuffer_;
}

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalUtilUnsafeSpscUnboundedArrayQueueProducerColdFields)

J2OBJC_FIELD_SETTER(RxInternalUtilUnsafeSpscUnboundedArrayQueueProducerColdFields, producerBuffer_, IOSObjectArray *)

FOUNDATION_EXPORT void RxInternalUtilUnsafeSpscUnboundedArrayQueueProducerColdFields_init(RxInternalUtilUnsafeSpscUnboundedArrayQueueProducerColdFields *self);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalUtilUnsafeSpscUnboundedArrayQueueProducerColdFields)

#endif

#if !defined (RxInternalUtilUnsafeSpscUnboundedArrayQueueL2Pad_) && (INCLUDE_ALL_RxInternalUtilUnsafeSpscUnboundedArrayQueue || defined(INCLUDE_RxInternalUtilUnsafeSpscUnboundedArrayQueueL2Pad))
#define RxInternalUtilUnsafeSpscUnboundedArrayQueueL2Pad_

@interface RxInternalUtilUnsafeSpscUnboundedArrayQueueL2Pad : RxInternalUtilUnsafeSpscUnboundedArrayQueueProducerColdFields {
 @public
  jlong p0_, p1_, p2_, p3_, p4_, p5_, p6_, p7_, p8_, p9_, p10_, p11_, p12_;
}

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalUtilUnsafeSpscUnboundedArrayQueueL2Pad)

FOUNDATION_EXPORT void RxInternalUtilUnsafeSpscUnboundedArrayQueueL2Pad_init(RxInternalUtilUnsafeSpscUnboundedArrayQueueL2Pad *self);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalUtilUnsafeSpscUnboundedArrayQueueL2Pad)

#endif

#if !defined (RxInternalUtilUnsafeSpscUnboundedArrayQueueConsumerColdField_) && (INCLUDE_ALL_RxInternalUtilUnsafeSpscUnboundedArrayQueue || defined(INCLUDE_RxInternalUtilUnsafeSpscUnboundedArrayQueueConsumerColdField))
#define RxInternalUtilUnsafeSpscUnboundedArrayQueueConsumerColdField_

@class IOSObjectArray;

@interface RxInternalUtilUnsafeSpscUnboundedArrayQueueConsumerColdField : RxInternalUtilUnsafeSpscUnboundedArrayQueueL2Pad {
 @public
  jlong consumerMask_;
  IOSObjectArray *consumerBuffer_;
}

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalUtilUnsafeSpscUnboundedArrayQueueConsumerColdField)

J2OBJC_FIELD_SETTER(RxInternalUtilUnsafeSpscUnboundedArrayQueueConsumerColdField, consumerBuffer_, IOSObjectArray *)

FOUNDATION_EXPORT void RxInternalUtilUnsafeSpscUnboundedArrayQueueConsumerColdField_init(RxInternalUtilUnsafeSpscUnboundedArrayQueueConsumerColdField *self);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalUtilUnsafeSpscUnboundedArrayQueueConsumerColdField)

#endif

#if !defined (RxInternalUtilUnsafeSpscUnboundedArrayQueueConsumerField_) && (INCLUDE_ALL_RxInternalUtilUnsafeSpscUnboundedArrayQueue || defined(INCLUDE_RxInternalUtilUnsafeSpscUnboundedArrayQueueConsumerField))
#define RxInternalUtilUnsafeSpscUnboundedArrayQueueConsumerField_

@interface RxInternalUtilUnsafeSpscUnboundedArrayQueueConsumerField : RxInternalUtilUnsafeSpscUnboundedArrayQueueConsumerColdField {
 @public
  jlong consumerIndex_;
}

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalUtilUnsafeSpscUnboundedArrayQueueConsumerField)

FOUNDATION_EXPORT void RxInternalUtilUnsafeSpscUnboundedArrayQueueConsumerField_init(RxInternalUtilUnsafeSpscUnboundedArrayQueueConsumerField *self);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalUtilUnsafeSpscUnboundedArrayQueueConsumerField)

#endif

#if !defined (RxInternalUtilUnsafeSpscUnboundedArrayQueue_) && (INCLUDE_ALL_RxInternalUtilUnsafeSpscUnboundedArrayQueue || defined(INCLUDE_RxInternalUtilUnsafeSpscUnboundedArrayQueue))
#define RxInternalUtilUnsafeSpscUnboundedArrayQueue_

#define RESTRICT_RxInternalUtilUnsafeQueueProgressIndicators 1
#define INCLUDE_RxInternalUtilUnsafeQueueProgressIndicators 1
#include "rx/internal/util/unsafe/QueueProgressIndicators.h"

@protocol JavaUtilIterator;

@interface RxInternalUtilUnsafeSpscUnboundedArrayQueue : RxInternalUtilUnsafeSpscUnboundedArrayQueueConsumerField < RxInternalUtilUnsafeQueueProgressIndicators >

+ (jint)MAX_LOOK_AHEAD_STEP;

#pragma mark Public

- (instancetype)initWithInt:(jint)bufferSize;

- (jlong)currentConsumerIndex;

- (jlong)currentProducerIndex;

- (id<JavaUtilIterator>)iterator;

/*!
 @brief 
 <p>
 This implementation is correct for single producer thread use only.
 */
- (jboolean)offerWithId:(id)e;

/*!
 @brief 
 <p>
 This implementation is correct for single consumer thread use only.
 */
- (id)peek;

/*!
 @brief 
 <p>
 This implementation is correct for single consumer thread use only.
 */
- (id)poll;

- (jint)size;

#pragma mark Package-Private

@end

J2OBJC_STATIC_INIT(RxInternalUtilUnsafeSpscUnboundedArrayQueue)

inline jint RxInternalUtilUnsafeSpscUnboundedArrayQueue_get_MAX_LOOK_AHEAD_STEP();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jint RxInternalUtilUnsafeSpscUnboundedArrayQueue_MAX_LOOK_AHEAD_STEP;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(RxInternalUtilUnsafeSpscUnboundedArrayQueue, MAX_LOOK_AHEAD_STEP, jint)

FOUNDATION_EXPORT void RxInternalUtilUnsafeSpscUnboundedArrayQueue_initWithInt_(RxInternalUtilUnsafeSpscUnboundedArrayQueue *self, jint bufferSize);

FOUNDATION_EXPORT RxInternalUtilUnsafeSpscUnboundedArrayQueue *new_RxInternalUtilUnsafeSpscUnboundedArrayQueue_initWithInt_(jint bufferSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalUtilUnsafeSpscUnboundedArrayQueue *create_RxInternalUtilUnsafeSpscUnboundedArrayQueue_initWithInt_(jint bufferSize);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalUtilUnsafeSpscUnboundedArrayQueue)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalUtilUnsafeSpscUnboundedArrayQueue")
