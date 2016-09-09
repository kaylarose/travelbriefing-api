//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/util/atomic/SpscLinkedAtomicQueue.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxInternalUtilAtomicSpscLinkedAtomicQueue")
#ifdef RESTRICT_RxInternalUtilAtomicSpscLinkedAtomicQueue
#define INCLUDE_ALL_RxInternalUtilAtomicSpscLinkedAtomicQueue 0
#else
#define INCLUDE_ALL_RxInternalUtilAtomicSpscLinkedAtomicQueue 1
#endif
#undef RESTRICT_RxInternalUtilAtomicSpscLinkedAtomicQueue

#if !defined (RxInternalUtilAtomicSpscLinkedAtomicQueue_) && (INCLUDE_ALL_RxInternalUtilAtomicSpscLinkedAtomicQueue || defined(INCLUDE_RxInternalUtilAtomicSpscLinkedAtomicQueue))
#define RxInternalUtilAtomicSpscLinkedAtomicQueue_

#define RESTRICT_RxInternalUtilAtomicBaseLinkedAtomicQueue 1
#define INCLUDE_RxInternalUtilAtomicBaseLinkedAtomicQueue 1
#include "rx/internal/util/atomic/BaseLinkedAtomicQueue.h"

/*!
 @brief This is a weakened version of the MPSC algorithm as presented <a
 href="http://www.1024cores.net/home/lock-free-algorithms/queues/non-intrusive-mpsc-node-based-queue"> on 1024
 Cores</a> by D.
 Vyukov. The original has been adapted to Java and it's quirks with regards to memory model and
 layout:
 <ol>
 <li>As this is an SPSC we have no need for XCHG, an ordered store is enough.
 </ol>
 The queue is initialized with a stub node which is set to both the producer and consumer node references. From this
 point follow the notes on offer/poll.
 @author nitsanw
 */
@interface RxInternalUtilAtomicSpscLinkedAtomicQueue : RxInternalUtilAtomicBaseLinkedAtomicQueue

#pragma mark Public

- (instancetype)init;

/*!
 @brief  <br>
 IMPLEMENTATION NOTES:<br>
 Offer is allowed from a SINGLE thread.
 <br>
 Offer allocates a new node (holding the offered value) and:
 <ol>
 <li>Sets that node as the producerNode.next
 <li>Sets the new node as the producerNode
 </ol>
 From this follows that producerNode.next is always null and for all other nodes node.next is not null.
 - seealso: java.util.Queue#offer(java.lang.Object)
 */
- (jboolean)offerWithId:(id)nextValue;

- (id)peek;

/*!
 @brief  <br>
 IMPLEMENTATION NOTES:<br>
 Poll is allowed from a SINGLE thread.
 <br>
 Poll reads the next node from the consumerNode and:
 <ol>
 <li>If it is null, the queue is empty.
 <li>If it is not null set it as the consumer node and return it's now evacuated value.
 </ol>
 This means the consumerNode.value is always null, which is also the starting point for the queue. Because null
 values are not allowed to be offered this is the only node with it's value set to null at any one time.
 */
- (id)poll;

#pragma mark Package-Private

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalUtilAtomicSpscLinkedAtomicQueue)

FOUNDATION_EXPORT void RxInternalUtilAtomicSpscLinkedAtomicQueue_init(RxInternalUtilAtomicSpscLinkedAtomicQueue *self);

FOUNDATION_EXPORT RxInternalUtilAtomicSpscLinkedAtomicQueue *new_RxInternalUtilAtomicSpscLinkedAtomicQueue_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalUtilAtomicSpscLinkedAtomicQueue *create_RxInternalUtilAtomicSpscLinkedAtomicQueue_init();

J2OBJC_TYPE_LITERAL_HEADER(RxInternalUtilAtomicSpscLinkedAtomicQueue)

#endif

#pragma pop_macro("INCLUDE_ALL_RxInternalUtilAtomicSpscLinkedAtomicQueue")
