//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/util/unsafe/MpmcArrayQueue.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalUtilUnsafeMpmcArrayQueue")
#ifdef RESTRICT_RxInternalUtilUnsafeMpmcArrayQueue
#define INCLUDE_ALL_RxInternalUtilUnsafeMpmcArrayQueue 0
#else
#define INCLUDE_ALL_RxInternalUtilUnsafeMpmcArrayQueue 1
#endif
#undef RESTRICT_RxInternalUtilUnsafeMpmcArrayQueue
#ifdef INCLUDE_RxInternalUtilUnsafeMpmcArrayQueue
#define INCLUDE_RxInternalUtilUnsafeMpmcArrayQueueConsumerField 1
#endif
#ifdef INCLUDE_RxInternalUtilUnsafeMpmcArrayQueueConsumerField
#define INCLUDE_RxInternalUtilUnsafeMpmcArrayQueueL2Pad 1
#endif
#ifdef INCLUDE_RxInternalUtilUnsafeMpmcArrayQueueL2Pad
#define INCLUDE_RxInternalUtilUnsafeMpmcArrayQueueProducerField 1
#endif
#ifdef INCLUDE_RxInternalUtilUnsafeMpmcArrayQueueProducerField
#define INCLUDE_RxInternalUtilUnsafeMpmcArrayQueueL1Pad 1
#endif

#if !defined (RxInternalUtilUnsafeMpmcArrayQueueL1Pad_) && (INCLUDE_ALL_RxInternalUtilUnsafeMpmcArrayQueue || defined(INCLUDE_RxInternalUtilUnsafeMpmcArrayQueueL1Pad))
#define RxInternalUtilUnsafeMpmcArrayQueueL1Pad_

#define RESTRICT_RxInternalUtilUnsafeConcurrentSequencedCircularArrayQueue 1
#define INCLUDE_RxInternalUtilUnsafeConcurrentSequencedCircularArrayQueue 1
#include "rx/internal/util/unsafe/ConcurrentSequencedCircularArrayQueue.h"

@interface RxInternalUtilUnsafeMpmcArrayQueueL1Pad : RxInternalUtilUnsafeConcurrentSequencedCircularArrayQueue {
 @public
  jlong p10_, p11_, p12_, p13_, p14_, p15_, p16_;
  jlong p30_MpmcArrayQueueL1Pad_, p31_MpmcArrayQueueL1Pad_, p32_MpmcArrayQueueL1Pad_, p33_MpmcArrayQueueL1Pad_, p34_MpmcArrayQueueL1Pad_, p35_MpmcArrayQueueL1Pad_, p36_MpmcArrayQueueL1Pad_, p37_MpmcArrayQueueL1Pad_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)capacity;

#pragma mark Package-Private

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalUtilUnsafeMpmcArrayQueueL1Pad)

FOUNDATION_EXPORT void RxInternalUtilUnsafeMpmcArrayQueueL1Pad_initWithInt_(RxInternalUtilUnsafeMpmcArrayQueueL1Pad *self, jint capacity);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalUtilUnsafeMpmcArrayQueueL1Pad)

#endif

#if !defined (RxInternalUtilUnsafeMpmcArrayQueueProducerField_) && (INCLUDE_ALL_RxInternalUtilUnsafeMpmcArrayQueue || defined(INCLUDE_RxInternalUtilUnsafeMpmcArrayQueueProducerField))
#define RxInternalUtilUnsafeMpmcArrayQueueProducerField_

@interface RxInternalUtilUnsafeMpmcArrayQueueProducerField : RxInternalUtilUnsafeMpmcArrayQueueL1Pad

#pragma mark Public

- (instancetype)initWithInt:(jint)capacity;

#pragma mark Protected

- (jboolean)casProducerIndexWithLong:(jlong)expect
                            withLong:(jlong)newValue;

- (jlong)lvProducerIndex;

#pragma mark Package-Private

@end

J2OBJC_STATIC_INIT(RxInternalUtilUnsafeMpmcArrayQueueProducerField)

FOUNDATION_EXPORT void RxInternalUtilUnsafeMpmcArrayQueueProducerField_initWithInt_(RxInternalUtilUnsafeMpmcArrayQueueProducerField *self, jint capacity);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalUtilUnsafeMpmcArrayQueueProducerField)

#endif

#if !defined (RxInternalUtilUnsafeMpmcArrayQueueL2Pad_) && (INCLUDE_ALL_RxInternalUtilUnsafeMpmcArrayQueue || defined(INCLUDE_RxInternalUtilUnsafeMpmcArrayQueueL2Pad))
#define RxInternalUtilUnsafeMpmcArrayQueueL2Pad_

@interface RxInternalUtilUnsafeMpmcArrayQueueL2Pad : RxInternalUtilUnsafeMpmcArrayQueueProducerField {
 @public
  jlong p20_, p21_, p22_, p23_, p24_, p25_, p26_;
  jlong p30_MpmcArrayQueueL2Pad_, p31_MpmcArrayQueueL2Pad_, p32_MpmcArrayQueueL2Pad_, p33_MpmcArrayQueueL2Pad_, p34_MpmcArrayQueueL2Pad_, p35_MpmcArrayQueueL2Pad_, p36_MpmcArrayQueueL2Pad_, p37_MpmcArrayQueueL2Pad_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)capacity;

#pragma mark Package-Private

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalUtilUnsafeMpmcArrayQueueL2Pad)

FOUNDATION_EXPORT void RxInternalUtilUnsafeMpmcArrayQueueL2Pad_initWithInt_(RxInternalUtilUnsafeMpmcArrayQueueL2Pad *self, jint capacity);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalUtilUnsafeMpmcArrayQueueL2Pad)

#endif

#if !defined (RxInternalUtilUnsafeMpmcArrayQueueConsumerField_) && (INCLUDE_ALL_RxInternalUtilUnsafeMpmcArrayQueue || defined(INCLUDE_RxInternalUtilUnsafeMpmcArrayQueueConsumerField))
#define RxInternalUtilUnsafeMpmcArrayQueueConsumerField_

@interface RxInternalUtilUnsafeMpmcArrayQueueConsumerField : RxInternalUtilUnsafeMpmcArrayQueueL2Pad

#pragma mark Public

- (instancetype)initWithInt:(jint)capacity;

#pragma mark Protected

- (jboolean)casConsumerIndexWithLong:(jlong)expect
                            withLong:(jlong)newValue;

- (jlong)lvConsumerIndex;

#pragma mark Package-Private

@end

J2OBJC_STATIC_INIT(RxInternalUtilUnsafeMpmcArrayQueueConsumerField)

FOUNDATION_EXPORT void RxInternalUtilUnsafeMpmcArrayQueueConsumerField_initWithInt_(RxInternalUtilUnsafeMpmcArrayQueueConsumerField *self, jint capacity);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalUtilUnsafeMpmcArrayQueueConsumerField)

#endif

#if !defined (RxInternalUtilUnsafeMpmcArrayQueue_) && (INCLUDE_ALL_RxInternalUtilUnsafeMpmcArrayQueue || defined(INCLUDE_RxInternalUtilUnsafeMpmcArrayQueue))
#define RxInternalUtilUnsafeMpmcArrayQueue_

/*!
 @brief A Multi-Producer-Multi-Consumer queue based on a <code>ConcurrentCircularArrayQueue</code>.
 This implies that
 any and all threads may call the offer/poll/peek methods and correctness is maintained. <br>
 This implementation follows patterns documented on the package level for False Sharing protection.<br>
 The algorithm for offer/poll is an adaptation of the one put forward by D. Vyukov (See <a
 href="http://www.1024cores.net/home/lock-free-algorithms/queues/bounded-mpmc-queue">here</a>). The original
 algorithm uses an array of structs which should offer nice locality properties but is sadly not possible in
 Java (waiting on Value Types or similar). The alternative explored here utilizes 2 arrays, one for each
 field of the struct. There is a further alternative in the experimental project which uses iteration phase
 markers to achieve the same algo and is closer structurally to the original, but sadly does not perform as
 well as this implementation.<br>
 Tradeoffs to keep in mind:
 <ol>
 <li>Padding for false sharing: counter fields and queue fields are all padded as well as either side of
 both arrays. We are trading memory to avoid false sharing(active and passive).
 <li>2 arrays instead of one: The algorithm requires an extra array of longs matching the size of the
 elements array. This is doubling/tripling the memory allocated for the buffer.
 <li>Power of 2 capacity: Actual elements buffer (and sequence buffer) is the closest power of 2 larger or
 equal to the requested capacity.
 </ol>
 */
@interface RxInternalUtilUnsafeMpmcArrayQueue : RxInternalUtilUnsafeMpmcArrayQueueConsumerField {
 @public
  jlong p40_, p41_, p42_, p43_, p44_, p45_, p46_;
  jlong p30_MpmcArrayQueue_, p31_MpmcArrayQueue_, p32_MpmcArrayQueue_, p33_MpmcArrayQueue_, p34_MpmcArrayQueue_, p35_MpmcArrayQueue_, p36_MpmcArrayQueue_, p37_MpmcArrayQueue_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)capacity;

- (jboolean)isEmpty;

- (jboolean)offerWithId:(id)e;

- (id)peek;

/*!
 @brief 
 <p>
 Because return null indicates queue is empty we cannot simply rely on next element visibility for poll
 and must test producer index when next element is not visible.
 */
- (id)poll;

- (jint)size;

#pragma mark Package-Private

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalUtilUnsafeMpmcArrayQueue)

FOUNDATION_EXPORT void RxInternalUtilUnsafeMpmcArrayQueue_initWithInt_(RxInternalUtilUnsafeMpmcArrayQueue *self, jint capacity);

FOUNDATION_EXPORT RxInternalUtilUnsafeMpmcArrayQueue *new_RxInternalUtilUnsafeMpmcArrayQueue_initWithInt_(jint capacity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalUtilUnsafeMpmcArrayQueue *create_RxInternalUtilUnsafeMpmcArrayQueue_initWithInt_(jint capacity);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalUtilUnsafeMpmcArrayQueue)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalUtilUnsafeMpmcArrayQueue")
