//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/util/atomic/BaseLinkedAtomicQueue.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalUtilAtomicBaseLinkedAtomicQueue")
#ifdef RESTRICT_RxInternalUtilAtomicBaseLinkedAtomicQueue
#define INCLUDE_ALL_RxInternalUtilAtomicBaseLinkedAtomicQueue 0
#else
#define INCLUDE_ALL_RxInternalUtilAtomicBaseLinkedAtomicQueue 1
#endif
#undef RESTRICT_RxInternalUtilAtomicBaseLinkedAtomicQueue

#if !defined (RxInternalUtilAtomicBaseLinkedAtomicQueue_) && (INCLUDE_ALL_RxInternalUtilAtomicBaseLinkedAtomicQueue || defined(INCLUDE_RxInternalUtilAtomicBaseLinkedAtomicQueue))
#define RxInternalUtilAtomicBaseLinkedAtomicQueue_

#define RESTRICT_JavaUtilAbstractQueue 1
#define INCLUDE_JavaUtilAbstractQueue 1
#include "java/util/AbstractQueue.h"

@class RxInternalUtilAtomicLinkedQueueNode;
@protocol JavaUtilIterator;

@interface RxInternalUtilAtomicBaseLinkedAtomicQueue : JavaUtilAbstractQueue

#pragma mark Public

- (instancetype)init;

/*!
 @brief  <br>
 <p>
 IMPLEMENTATION NOTES:<br>
 Queue is empty when producerNode is the same as consumerNode.
 An alternative implementation would be to observe
 the producerNode.value is null, which also means an empty queue because only the consumerNode.value is allowed to
 be null.
 */
- (jboolean)isEmpty;

- (id<JavaUtilIterator>)iterator;

/*!
 @brief  <br>
 <p>
 IMPLEMENTATION NOTES:<br>
 This is an O(n) operation as we run through all the nodes and count them.
 <br>
 - seealso: java.util.Queue#size()
 */
- (jint)size;

#pragma mark Protected

- (RxInternalUtilAtomicLinkedQueueNode *)lpConsumerNode;

- (RxInternalUtilAtomicLinkedQueueNode *)lpProducerNode;

- (RxInternalUtilAtomicLinkedQueueNode *)lvConsumerNode;

- (RxInternalUtilAtomicLinkedQueueNode *)lvProducerNode;

- (void)spConsumerNodeWithRxInternalUtilAtomicLinkedQueueNode:(RxInternalUtilAtomicLinkedQueueNode *)node;

- (void)spProducerNodeWithRxInternalUtilAtomicLinkedQueueNode:(RxInternalUtilAtomicLinkedQueueNode *)node;

- (RxInternalUtilAtomicLinkedQueueNode *)xchgProducerNodeWithRxInternalUtilAtomicLinkedQueueNode:(RxInternalUtilAtomicLinkedQueueNode *)node;

#pragma mark Package-Private

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalUtilAtomicBaseLinkedAtomicQueue)

FOUNDATION_EXPORT void RxInternalUtilAtomicBaseLinkedAtomicQueue_init(RxInternalUtilAtomicBaseLinkedAtomicQueue *self);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalUtilAtomicBaseLinkedAtomicQueue)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalUtilAtomicBaseLinkedAtomicQueue")