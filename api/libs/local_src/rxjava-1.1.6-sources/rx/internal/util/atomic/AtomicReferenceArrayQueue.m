//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/util/atomic/AtomicReferenceArrayQueue.java
//

#include "J2ObjC_source.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/AbstractQueue.h"
#include "java/util/Iterator.h"
#include "java/util/concurrent/atomic/AtomicReferenceArray.h"
#include "rx/internal/util/atomic/AtomicReferenceArrayQueue.h"
#include "rx/internal/util/unsafe/Pow2.h"

__attribute__((unused)) static id RxInternalUtilAtomicAtomicReferenceArrayQueue_lvElementWithJavaUtilConcurrentAtomicAtomicReferenceArray_withInt_(RxInternalUtilAtomicAtomicReferenceArrayQueue *self, JavaUtilConcurrentAtomicAtomicReferenceArray *buffer, jint offset);

@implementation RxInternalUtilAtomicAtomicReferenceArrayQueue

- (instancetype)initWithInt:(jint)capacity {
  RxInternalUtilAtomicAtomicReferenceArrayQueue_initWithInt_(self, capacity);
  return self;
}

- (id<JavaUtilIterator>)iterator {
  @throw new_JavaLangUnsupportedOperationException_init();
}

- (void)clear {
  while ([self poll] != nil || ![self isEmpty]) ;
}

- (jint)calcElementOffsetWithLong:(jlong)index
                          withInt:(jint)mask {
  return (jint) index & mask;
}

- (jint)calcElementOffsetWithLong:(jlong)index {
  return (jint) index & mask_;
}

- (id)lvElementWithJavaUtilConcurrentAtomicAtomicReferenceArray:(JavaUtilConcurrentAtomicAtomicReferenceArray *)buffer
                                                        withInt:(jint)offset {
  return RxInternalUtilAtomicAtomicReferenceArrayQueue_lvElementWithJavaUtilConcurrentAtomicAtomicReferenceArray_withInt_(self, buffer, offset);
}

- (id)lpElementWithJavaUtilConcurrentAtomicAtomicReferenceArray:(JavaUtilConcurrentAtomicAtomicReferenceArray *)buffer
                                                        withInt:(jint)offset {
  return [((JavaUtilConcurrentAtomicAtomicReferenceArray *) nil_chk(buffer)) getWithInt:offset];
}

- (id)lpElementWithInt:(jint)offset {
  return [((JavaUtilConcurrentAtomicAtomicReferenceArray *) nil_chk(buffer_)) getWithInt:offset];
}

- (void)spElementWithJavaUtilConcurrentAtomicAtomicReferenceArray:(JavaUtilConcurrentAtomicAtomicReferenceArray *)buffer
                                                          withInt:(jint)offset
                                                           withId:(id)value {
  [((JavaUtilConcurrentAtomicAtomicReferenceArray *) nil_chk(buffer)) lazySetWithInt:offset withId:value];
}

- (void)spElementWithInt:(jint)offset
                  withId:(id)value {
  [((JavaUtilConcurrentAtomicAtomicReferenceArray *) nil_chk(buffer_)) lazySetWithInt:offset withId:value];
}

- (void)soElementWithJavaUtilConcurrentAtomicAtomicReferenceArray:(JavaUtilConcurrentAtomicAtomicReferenceArray *)buffer
                                                          withInt:(jint)offset
                                                           withId:(id)value {
  [((JavaUtilConcurrentAtomicAtomicReferenceArray *) nil_chk(buffer)) lazySetWithInt:offset withId:value];
}

- (void)soElementWithInt:(jint)offset
                  withId:(id)value {
  [((JavaUtilConcurrentAtomicAtomicReferenceArray *) nil_chk(buffer_)) lazySetWithInt:offset withId:value];
}

- (void)svElementWithJavaUtilConcurrentAtomicAtomicReferenceArray:(JavaUtilConcurrentAtomicAtomicReferenceArray *)buffer
                                                          withInt:(jint)offset
                                                           withId:(id)value {
  [((JavaUtilConcurrentAtomicAtomicReferenceArray *) nil_chk(buffer)) setWithInt:offset withId:value];
}

- (id)lvElementWithInt:(jint)offset {
  return RxInternalUtilAtomicAtomicReferenceArrayQueue_lvElementWithJavaUtilConcurrentAtomicAtomicReferenceArray_withInt_(self, buffer_, offset);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { "iterator", "LJavaUtilIterator;", 0x1, -1, -1, -1, 1, -1, -1 },
    { "clear", "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { "calcElementOffsetWithLong:withInt:", "I", 0x14, 2, 3, -1, -1, -1, -1 },
    { "calcElementOffsetWithLong:", "I", 0x14, 2, 4, -1, -1, -1, -1 },
    { "lvElementWithJavaUtilConcurrentAtomicAtomicReferenceArray:withInt:", "LNSObject;", 0x14, 5, 6, -1, 7, -1, -1 },
    { "lpElementWithJavaUtilConcurrentAtomicAtomicReferenceArray:withInt:", "LNSObject;", 0x14, 8, 6, -1, 7, -1, -1 },
    { "lpElementWithInt:", "LNSObject;", 0x14, 8, 0, -1, 9, -1, -1 },
    { "spElementWithJavaUtilConcurrentAtomicAtomicReferenceArray:withInt:withId:", "V", 0x14, 10, 11, -1, 12, -1, -1 },
    { "spElementWithInt:withId:", "V", 0x14, 10, 13, -1, 14, -1, -1 },
    { "soElementWithJavaUtilConcurrentAtomicAtomicReferenceArray:withInt:withId:", "V", 0x14, 15, 11, -1, 12, -1, -1 },
    { "soElementWithInt:withId:", "V", 0x14, 15, 13, -1, 14, -1, -1 },
    { "svElementWithJavaUtilConcurrentAtomicAtomicReferenceArray:withInt:withId:", "V", 0x14, 16, 11, -1, 12, -1, -1 },
    { "lvElementWithInt:", "LNSObject;", 0x14, 5, 0, -1, 9, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "buffer_", "LJavaUtilConcurrentAtomicAtomicReferenceArray;", .constantValue.asLong = 0, 0x14, -1, -1, 17, -1 },
    { "mask_", "I", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "()Ljava/util/Iterator<TE;>;", "calcElementOffset", "JI", "J", "lvElement", "LJavaUtilConcurrentAtomicAtomicReferenceArray;I", "(Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;I)TE;", "lpElement", "(I)TE;", "spElement", "LJavaUtilConcurrentAtomicAtomicReferenceArray;ILNSObject;", "(Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;ITE;)V", "ILNSObject;", "(ITE;)V", "soElement", "svElement", "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;", "<E:Ljava/lang/Object;>Ljava/util/AbstractQueue<TE;>;" };
  static const J2ObjcClassInfo _RxInternalUtilAtomicAtomicReferenceArrayQueue = { "AtomicReferenceArrayQueue", "rx.internal.util.atomic", ptrTable, methods, fields, 7, 0x400, 14, 2, -1, -1, -1, 18, -1 };
  return &_RxInternalUtilAtomicAtomicReferenceArrayQueue;
}

@end

void RxInternalUtilAtomicAtomicReferenceArrayQueue_initWithInt_(RxInternalUtilAtomicAtomicReferenceArrayQueue *self, jint capacity) {
  JavaUtilAbstractQueue_init(self);
  jint actualCapacity = RxInternalUtilUnsafePow2_roundToPowerOfTwoWithInt_(capacity);
  self->mask_ = actualCapacity - 1;
  self->buffer_ = new_JavaUtilConcurrentAtomicAtomicReferenceArray_initWithInt_(actualCapacity);
}

id RxInternalUtilAtomicAtomicReferenceArrayQueue_lvElementWithJavaUtilConcurrentAtomicAtomicReferenceArray_withInt_(RxInternalUtilAtomicAtomicReferenceArrayQueue *self, JavaUtilConcurrentAtomicAtomicReferenceArray *buffer, jint offset) {
  return [((JavaUtilConcurrentAtomicAtomicReferenceArray *) nil_chk(buffer)) getWithInt:offset];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalUtilAtomicAtomicReferenceArrayQueue)