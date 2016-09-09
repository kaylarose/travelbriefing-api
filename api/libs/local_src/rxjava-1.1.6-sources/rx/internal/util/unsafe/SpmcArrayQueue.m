//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/util/unsafe/SpmcArrayQueue.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/NullPointerException.h"
#include "rx/internal/util/unsafe/ConcurrentCircularArrayQueue.h"
#include "rx/internal/util/unsafe/SpmcArrayQueue.h"
#include "rx/internal/util/unsafe/UnsafeAccess.h"
#include "sun/misc/Unsafe.h"

@interface RxInternalUtilUnsafeSpmcArrayQueueProducerField () {
 @public
  volatile_jlong producerIndex_;
}

@end

__attribute__((unused)) static jlong RxInternalUtilUnsafeSpmcArrayQueueProducerField_lvProducerIndex(RxInternalUtilUnsafeSpmcArrayQueueProducerField *self);

__attribute__((unused)) static void RxInternalUtilUnsafeSpmcArrayQueueProducerField_soTailWithLong_(RxInternalUtilUnsafeSpmcArrayQueueProducerField *self, jlong v);

@interface RxInternalUtilUnsafeSpmcArrayQueueConsumerField () {
 @public
  volatile_jlong consumerIndex_;
}

@end

__attribute__((unused)) static jlong RxInternalUtilUnsafeSpmcArrayQueueConsumerField_lvConsumerIndex(RxInternalUtilUnsafeSpmcArrayQueueConsumerField *self);

__attribute__((unused)) static jboolean RxInternalUtilUnsafeSpmcArrayQueueConsumerField_casHeadWithLong_withLong_(RxInternalUtilUnsafeSpmcArrayQueueConsumerField *self, jlong expect, jlong newValue);

@interface RxInternalUtilUnsafeSpmcArrayQueueProducerIndexCacheField () {
 @public
  volatile_jlong producerIndexCache_;
}

@end

__attribute__((unused)) static jlong RxInternalUtilUnsafeSpmcArrayQueueProducerIndexCacheField_lvProducerIndexCache(RxInternalUtilUnsafeSpmcArrayQueueProducerIndexCacheField *self);

__attribute__((unused)) static void RxInternalUtilUnsafeSpmcArrayQueueProducerIndexCacheField_svProducerIndexCacheWithLong_(RxInternalUtilUnsafeSpmcArrayQueueProducerIndexCacheField *self, jlong v);

@implementation RxInternalUtilUnsafeSpmcArrayQueueL1Pad

- (instancetype)initWithInt:(jint)capacity {
  RxInternalUtilUnsafeSpmcArrayQueueL1Pad_initWithInt_(self, capacity);
  return self;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", NULL, 0x1, -1, 0, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "p10_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "p11_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "p12_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "p13_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "p14_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "p15_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "p16_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "p30_SpmcArrayQueueL1Pad_", "J", .constantValue.asLong = 0, 0x0, 1, -1, -1, -1 },
    { "p31_SpmcArrayQueueL1Pad_", "J", .constantValue.asLong = 0, 0x0, 2, -1, -1, -1 },
    { "p32_SpmcArrayQueueL1Pad_", "J", .constantValue.asLong = 0, 0x0, 3, -1, -1, -1 },
    { "p33_SpmcArrayQueueL1Pad_", "J", .constantValue.asLong = 0, 0x0, 4, -1, -1, -1 },
    { "p34_SpmcArrayQueueL1Pad_", "J", .constantValue.asLong = 0, 0x0, 5, -1, -1, -1 },
    { "p35_SpmcArrayQueueL1Pad_", "J", .constantValue.asLong = 0, 0x0, 6, -1, -1, -1 },
    { "p36_SpmcArrayQueueL1Pad_", "J", .constantValue.asLong = 0, 0x0, 7, -1, -1, -1 },
    { "p37_SpmcArrayQueueL1Pad_", "J", .constantValue.asLong = 0, 0x0, 8, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "<E:Ljava/lang/Object;>Lrx/internal/util/unsafe/ConcurrentCircularArrayQueue<TE;>;" };
  static const J2ObjcClassInfo _RxInternalUtilUnsafeSpmcArrayQueueL1Pad = { "SpmcArrayQueueL1Pad", "rx.internal.util.unsafe", ptrTable, methods, fields, 7, 0x400, 1, 15, -1, -1, -1, 9, -1 };
  return &_RxInternalUtilUnsafeSpmcArrayQueueL1Pad;
}

@end

void RxInternalUtilUnsafeSpmcArrayQueueL1Pad_initWithInt_(RxInternalUtilUnsafeSpmcArrayQueueL1Pad *self, jint capacity) {
  RxInternalUtilUnsafeConcurrentCircularArrayQueue_initWithInt_(self, capacity);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalUtilUnsafeSpmcArrayQueueL1Pad)

J2OBJC_INITIALIZED_DEFN(RxInternalUtilUnsafeSpmcArrayQueueProducerField)

jlong RxInternalUtilUnsafeSpmcArrayQueueProducerField_P_INDEX_OFFSET;

@implementation RxInternalUtilUnsafeSpmcArrayQueueProducerField

+ (jlong)P_INDEX_OFFSET {
  return RxInternalUtilUnsafeSpmcArrayQueueProducerField_P_INDEX_OFFSET;
}

- (jlong)lvProducerIndex {
  return RxInternalUtilUnsafeSpmcArrayQueueProducerField_lvProducerIndex(self);
}

- (void)soTailWithLong:(jlong)v {
  RxInternalUtilUnsafeSpmcArrayQueueProducerField_soTailWithLong_(self, v);
}

- (instancetype)initWithInt:(jint)capacity {
  RxInternalUtilUnsafeSpmcArrayQueueProducerField_initWithInt_(self, capacity);
  return self;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "lvProducerIndex", "J", 0x14, -1, -1, -1, -1, -1, -1 },
    { "soTailWithLong:", "V", 0x14, 0, 1, -1, -1, -1, -1 },
    { "initWithInt:", NULL, 0x1, -1, 2, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "P_INDEX_OFFSET", "J", .constantValue.asLong = 0, 0x1c, -1, 3, -1, -1 },
    { "producerIndex_", "J", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "soTail", "J", "I", &RxInternalUtilUnsafeSpmcArrayQueueProducerField_P_INDEX_OFFSET, "<E:Ljava/lang/Object;>Lrx/internal/util/unsafe/SpmcArrayQueueL1Pad<TE;>;" };
  static const J2ObjcClassInfo _RxInternalUtilUnsafeSpmcArrayQueueProducerField = { "SpmcArrayQueueProducerField", "rx.internal.util.unsafe", ptrTable, methods, fields, 7, 0x400, 3, 2, -1, -1, -1, 4, -1 };
  return &_RxInternalUtilUnsafeSpmcArrayQueueProducerField;
}

+ (void)initialize {
  if (self == [RxInternalUtilUnsafeSpmcArrayQueueProducerField class]) {
    RxInternalUtilUnsafeSpmcArrayQueueProducerField_P_INDEX_OFFSET = RxInternalUtilUnsafeUnsafeAccess_addressOfWithIOSClass_withNSString_(RxInternalUtilUnsafeSpmcArrayQueueProducerField_class_(), @"producerIndex");
    J2OBJC_SET_INITIALIZED(RxInternalUtilUnsafeSpmcArrayQueueProducerField)
  }
}

@end

jlong RxInternalUtilUnsafeSpmcArrayQueueProducerField_lvProducerIndex(RxInternalUtilUnsafeSpmcArrayQueueProducerField *self) {
  return JreLoadVolatileLong(&self->producerIndex_);
}

void RxInternalUtilUnsafeSpmcArrayQueueProducerField_soTailWithLong_(RxInternalUtilUnsafeSpmcArrayQueueProducerField *self, jlong v) {
  [((SunMiscUnsafe *) nil_chk(JreLoadStatic(RxInternalUtilUnsafeUnsafeAccess, UNSAFE))) putOrderedLongWithId:self withLong:RxInternalUtilUnsafeSpmcArrayQueueProducerField_P_INDEX_OFFSET withLong:v];
}

void RxInternalUtilUnsafeSpmcArrayQueueProducerField_initWithInt_(RxInternalUtilUnsafeSpmcArrayQueueProducerField *self, jint capacity) {
  RxInternalUtilUnsafeSpmcArrayQueueL1Pad_initWithInt_(self, capacity);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalUtilUnsafeSpmcArrayQueueProducerField)

@implementation RxInternalUtilUnsafeSpmcArrayQueueL2Pad

- (instancetype)initWithInt:(jint)capacity {
  RxInternalUtilUnsafeSpmcArrayQueueL2Pad_initWithInt_(self, capacity);
  return self;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", NULL, 0x1, -1, 0, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "p20_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "p21_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "p22_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "p23_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "p24_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "p25_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "p26_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "p30_SpmcArrayQueueL2Pad_", "J", .constantValue.asLong = 0, 0x0, 1, -1, -1, -1 },
    { "p31_SpmcArrayQueueL2Pad_", "J", .constantValue.asLong = 0, 0x0, 2, -1, -1, -1 },
    { "p32_SpmcArrayQueueL2Pad_", "J", .constantValue.asLong = 0, 0x0, 3, -1, -1, -1 },
    { "p33_SpmcArrayQueueL2Pad_", "J", .constantValue.asLong = 0, 0x0, 4, -1, -1, -1 },
    { "p34_SpmcArrayQueueL2Pad_", "J", .constantValue.asLong = 0, 0x0, 5, -1, -1, -1 },
    { "p35_SpmcArrayQueueL2Pad_", "J", .constantValue.asLong = 0, 0x0, 6, -1, -1, -1 },
    { "p36_SpmcArrayQueueL2Pad_", "J", .constantValue.asLong = 0, 0x0, 7, -1, -1, -1 },
    { "p37_SpmcArrayQueueL2Pad_", "J", .constantValue.asLong = 0, 0x0, 8, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "<E:Ljava/lang/Object;>Lrx/internal/util/unsafe/SpmcArrayQueueProducerField<TE;>;" };
  static const J2ObjcClassInfo _RxInternalUtilUnsafeSpmcArrayQueueL2Pad = { "SpmcArrayQueueL2Pad", "rx.internal.util.unsafe", ptrTable, methods, fields, 7, 0x400, 1, 15, -1, -1, -1, 9, -1 };
  return &_RxInternalUtilUnsafeSpmcArrayQueueL2Pad;
}

@end

void RxInternalUtilUnsafeSpmcArrayQueueL2Pad_initWithInt_(RxInternalUtilUnsafeSpmcArrayQueueL2Pad *self, jint capacity) {
  RxInternalUtilUnsafeSpmcArrayQueueProducerField_initWithInt_(self, capacity);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalUtilUnsafeSpmcArrayQueueL2Pad)

J2OBJC_INITIALIZED_DEFN(RxInternalUtilUnsafeSpmcArrayQueueConsumerField)

jlong RxInternalUtilUnsafeSpmcArrayQueueConsumerField_C_INDEX_OFFSET;

@implementation RxInternalUtilUnsafeSpmcArrayQueueConsumerField

+ (jlong)C_INDEX_OFFSET {
  return RxInternalUtilUnsafeSpmcArrayQueueConsumerField_C_INDEX_OFFSET;
}

- (instancetype)initWithInt:(jint)capacity {
  RxInternalUtilUnsafeSpmcArrayQueueConsumerField_initWithInt_(self, capacity);
  return self;
}

- (jlong)lvConsumerIndex {
  return RxInternalUtilUnsafeSpmcArrayQueueConsumerField_lvConsumerIndex(self);
}

- (jboolean)casHeadWithLong:(jlong)expect
                   withLong:(jlong)newValue {
  return RxInternalUtilUnsafeSpmcArrayQueueConsumerField_casHeadWithLong_withLong_(self, expect, newValue);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { "lvConsumerIndex", "J", 0x14, -1, -1, -1, -1, -1, -1 },
    { "casHeadWithLong:withLong:", "Z", 0x14, 1, 2, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "C_INDEX_OFFSET", "J", .constantValue.asLong = 0, 0x1c, -1, 3, -1, -1 },
    { "consumerIndex_", "J", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "casHead", "JJ", &RxInternalUtilUnsafeSpmcArrayQueueConsumerField_C_INDEX_OFFSET, "<E:Ljava/lang/Object;>Lrx/internal/util/unsafe/SpmcArrayQueueL2Pad<TE;>;" };
  static const J2ObjcClassInfo _RxInternalUtilUnsafeSpmcArrayQueueConsumerField = { "SpmcArrayQueueConsumerField", "rx.internal.util.unsafe", ptrTable, methods, fields, 7, 0x400, 3, 2, -1, -1, -1, 4, -1 };
  return &_RxInternalUtilUnsafeSpmcArrayQueueConsumerField;
}

+ (void)initialize {
  if (self == [RxInternalUtilUnsafeSpmcArrayQueueConsumerField class]) {
    RxInternalUtilUnsafeSpmcArrayQueueConsumerField_C_INDEX_OFFSET = RxInternalUtilUnsafeUnsafeAccess_addressOfWithIOSClass_withNSString_(RxInternalUtilUnsafeSpmcArrayQueueConsumerField_class_(), @"consumerIndex");
    J2OBJC_SET_INITIALIZED(RxInternalUtilUnsafeSpmcArrayQueueConsumerField)
  }
}

@end

void RxInternalUtilUnsafeSpmcArrayQueueConsumerField_initWithInt_(RxInternalUtilUnsafeSpmcArrayQueueConsumerField *self, jint capacity) {
  RxInternalUtilUnsafeSpmcArrayQueueL2Pad_initWithInt_(self, capacity);
}

jlong RxInternalUtilUnsafeSpmcArrayQueueConsumerField_lvConsumerIndex(RxInternalUtilUnsafeSpmcArrayQueueConsumerField *self) {
  return JreLoadVolatileLong(&self->consumerIndex_);
}

jboolean RxInternalUtilUnsafeSpmcArrayQueueConsumerField_casHeadWithLong_withLong_(RxInternalUtilUnsafeSpmcArrayQueueConsumerField *self, jlong expect, jlong newValue) {
  return [((SunMiscUnsafe *) nil_chk(JreLoadStatic(RxInternalUtilUnsafeUnsafeAccess, UNSAFE))) compareAndSwapLongWithId:self withLong:RxInternalUtilUnsafeSpmcArrayQueueConsumerField_C_INDEX_OFFSET withLong:expect withLong:newValue];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalUtilUnsafeSpmcArrayQueueConsumerField)

@implementation RxInternalUtilUnsafeSpmcArrayQueueMidPad

- (instancetype)initWithInt:(jint)capacity {
  RxInternalUtilUnsafeSpmcArrayQueueMidPad_initWithInt_(self, capacity);
  return self;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", NULL, 0x1, -1, 0, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "p20_SpmcArrayQueueMidPad_", "J", .constantValue.asLong = 0, 0x0, 1, -1, -1, -1 },
    { "p21_SpmcArrayQueueMidPad_", "J", .constantValue.asLong = 0, 0x0, 2, -1, -1, -1 },
    { "p22_SpmcArrayQueueMidPad_", "J", .constantValue.asLong = 0, 0x0, 3, -1, -1, -1 },
    { "p23_SpmcArrayQueueMidPad_", "J", .constantValue.asLong = 0, 0x0, 4, -1, -1, -1 },
    { "p24_SpmcArrayQueueMidPad_", "J", .constantValue.asLong = 0, 0x0, 5, -1, -1, -1 },
    { "p25_SpmcArrayQueueMidPad_", "J", .constantValue.asLong = 0, 0x0, 6, -1, -1, -1 },
    { "p26_SpmcArrayQueueMidPad_", "J", .constantValue.asLong = 0, 0x0, 7, -1, -1, -1 },
    { "p30_SpmcArrayQueueMidPad_", "J", .constantValue.asLong = 0, 0x0, 8, -1, -1, -1 },
    { "p31_SpmcArrayQueueMidPad_", "J", .constantValue.asLong = 0, 0x0, 9, -1, -1, -1 },
    { "p32_SpmcArrayQueueMidPad_", "J", .constantValue.asLong = 0, 0x0, 10, -1, -1, -1 },
    { "p33_SpmcArrayQueueMidPad_", "J", .constantValue.asLong = 0, 0x0, 11, -1, -1, -1 },
    { "p34_SpmcArrayQueueMidPad_", "J", .constantValue.asLong = 0, 0x0, 12, -1, -1, -1 },
    { "p35_SpmcArrayQueueMidPad_", "J", .constantValue.asLong = 0, 0x0, 13, -1, -1, -1 },
    { "p36_SpmcArrayQueueMidPad_", "J", .constantValue.asLong = 0, 0x0, 14, -1, -1, -1 },
    { "p37_SpmcArrayQueueMidPad_", "J", .constantValue.asLong = 0, 0x0, 15, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "<E:Ljava/lang/Object;>Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField<TE;>;" };
  static const J2ObjcClassInfo _RxInternalUtilUnsafeSpmcArrayQueueMidPad = { "SpmcArrayQueueMidPad", "rx.internal.util.unsafe", ptrTable, methods, fields, 7, 0x400, 1, 15, -1, -1, -1, 16, -1 };
  return &_RxInternalUtilUnsafeSpmcArrayQueueMidPad;
}

@end

void RxInternalUtilUnsafeSpmcArrayQueueMidPad_initWithInt_(RxInternalUtilUnsafeSpmcArrayQueueMidPad *self, jint capacity) {
  RxInternalUtilUnsafeSpmcArrayQueueConsumerField_initWithInt_(self, capacity);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalUtilUnsafeSpmcArrayQueueMidPad)

@implementation RxInternalUtilUnsafeSpmcArrayQueueProducerIndexCacheField

- (instancetype)initWithInt:(jint)capacity {
  RxInternalUtilUnsafeSpmcArrayQueueProducerIndexCacheField_initWithInt_(self, capacity);
  return self;
}

- (jlong)lvProducerIndexCache {
  return RxInternalUtilUnsafeSpmcArrayQueueProducerIndexCacheField_lvProducerIndexCache(self);
}

- (void)svProducerIndexCacheWithLong:(jlong)v {
  RxInternalUtilUnsafeSpmcArrayQueueProducerIndexCacheField_svProducerIndexCacheWithLong_(self, v);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { "lvProducerIndexCache", "J", 0x14, -1, -1, -1, -1, -1, -1 },
    { "svProducerIndexCacheWithLong:", "V", 0x14, 1, 2, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "producerIndexCache_", "J", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "svProducerIndexCache", "J", "<E:Ljava/lang/Object;>Lrx/internal/util/unsafe/SpmcArrayQueueMidPad<TE;>;" };
  static const J2ObjcClassInfo _RxInternalUtilUnsafeSpmcArrayQueueProducerIndexCacheField = { "SpmcArrayQueueProducerIndexCacheField", "rx.internal.util.unsafe", ptrTable, methods, fields, 7, 0x400, 3, 1, -1, -1, -1, 3, -1 };
  return &_RxInternalUtilUnsafeSpmcArrayQueueProducerIndexCacheField;
}

@end

void RxInternalUtilUnsafeSpmcArrayQueueProducerIndexCacheField_initWithInt_(RxInternalUtilUnsafeSpmcArrayQueueProducerIndexCacheField *self, jint capacity) {
  RxInternalUtilUnsafeSpmcArrayQueueMidPad_initWithInt_(self, capacity);
}

jlong RxInternalUtilUnsafeSpmcArrayQueueProducerIndexCacheField_lvProducerIndexCache(RxInternalUtilUnsafeSpmcArrayQueueProducerIndexCacheField *self) {
  return JreLoadVolatileLong(&self->producerIndexCache_);
}

void RxInternalUtilUnsafeSpmcArrayQueueProducerIndexCacheField_svProducerIndexCacheWithLong_(RxInternalUtilUnsafeSpmcArrayQueueProducerIndexCacheField *self, jlong v) {
  JreAssignVolatileLong(&self->producerIndexCache_, v);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalUtilUnsafeSpmcArrayQueueProducerIndexCacheField)

@implementation RxInternalUtilUnsafeSpmcArrayQueueL3Pad

- (instancetype)initWithInt:(jint)capacity {
  RxInternalUtilUnsafeSpmcArrayQueueL3Pad_initWithInt_(self, capacity);
  return self;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", NULL, 0x1, -1, 0, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "p40_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "p41_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "p42_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "p43_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "p44_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "p45_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "p46_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "p30_SpmcArrayQueueL3Pad_", "J", .constantValue.asLong = 0, 0x0, 1, -1, -1, -1 },
    { "p31_SpmcArrayQueueL3Pad_", "J", .constantValue.asLong = 0, 0x0, 2, -1, -1, -1 },
    { "p32_SpmcArrayQueueL3Pad_", "J", .constantValue.asLong = 0, 0x0, 3, -1, -1, -1 },
    { "p33_SpmcArrayQueueL3Pad_", "J", .constantValue.asLong = 0, 0x0, 4, -1, -1, -1 },
    { "p34_SpmcArrayQueueL3Pad_", "J", .constantValue.asLong = 0, 0x0, 5, -1, -1, -1 },
    { "p35_SpmcArrayQueueL3Pad_", "J", .constantValue.asLong = 0, 0x0, 6, -1, -1, -1 },
    { "p36_SpmcArrayQueueL3Pad_", "J", .constantValue.asLong = 0, 0x0, 7, -1, -1, -1 },
    { "p37_SpmcArrayQueueL3Pad_", "J", .constantValue.asLong = 0, 0x0, 8, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "<E:Ljava/lang/Object;>Lrx/internal/util/unsafe/SpmcArrayQueueProducerIndexCacheField<TE;>;" };
  static const J2ObjcClassInfo _RxInternalUtilUnsafeSpmcArrayQueueL3Pad = { "SpmcArrayQueueL3Pad", "rx.internal.util.unsafe", ptrTable, methods, fields, 7, 0x400, 1, 15, -1, -1, -1, 9, -1 };
  return &_RxInternalUtilUnsafeSpmcArrayQueueL3Pad;
}

@end

void RxInternalUtilUnsafeSpmcArrayQueueL3Pad_initWithInt_(RxInternalUtilUnsafeSpmcArrayQueueL3Pad *self, jint capacity) {
  RxInternalUtilUnsafeSpmcArrayQueueProducerIndexCacheField_initWithInt_(self, capacity);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalUtilUnsafeSpmcArrayQueueL3Pad)

@implementation RxInternalUtilUnsafeSpmcArrayQueue

- (instancetype)initWithInt:(jint)capacity {
  RxInternalUtilUnsafeSpmcArrayQueue_initWithInt_(self, capacity);
  return self;
}

- (jboolean)offerWithId:(id)e {
  if (nil == e) {
    @throw new_JavaLangNullPointerException_initWithNSString_(@"Null is not a valid element");
  }
  IOSObjectArray *lb = buffer_;
  jlong lMask = mask_;
  jlong currProducerIndex = RxInternalUtilUnsafeSpmcArrayQueueProducerField_lvProducerIndex(self);
  jlong offset = [self calcElementOffsetWithLong:currProducerIndex];
  if (nil != [self lvElementWithNSObjectArray:lb withLong:offset]) {
    jlong size = currProducerIndex - RxInternalUtilUnsafeSpmcArrayQueueConsumerField_lvConsumerIndex(self);
    if (size > lMask) {
      return false;
    }
    else {
      while (nil != [self lvElementWithNSObjectArray:lb withLong:offset]) ;
    }
  }
  [self spElementWithNSObjectArray:lb withLong:offset withId:e];
  RxInternalUtilUnsafeSpmcArrayQueueProducerField_soTailWithLong_(self, currProducerIndex + 1);
  return true;
}

- (id)poll {
  jlong currentConsumerIndex;
  jlong currProducerIndexCache = RxInternalUtilUnsafeSpmcArrayQueueProducerIndexCacheField_lvProducerIndexCache(self);
  do {
    currentConsumerIndex = RxInternalUtilUnsafeSpmcArrayQueueConsumerField_lvConsumerIndex(self);
    if (currentConsumerIndex >= currProducerIndexCache) {
      jlong currProducerIndex = RxInternalUtilUnsafeSpmcArrayQueueProducerField_lvProducerIndex(self);
      if (currentConsumerIndex >= currProducerIndex) {
        return nil;
      }
      else {
        RxInternalUtilUnsafeSpmcArrayQueueProducerIndexCacheField_svProducerIndexCacheWithLong_(self, currProducerIndex);
      }
    }
  }
  while (!RxInternalUtilUnsafeSpmcArrayQueueConsumerField_casHeadWithLong_withLong_(self, currentConsumerIndex, currentConsumerIndex + 1));
  jlong offset = [self calcElementOffsetWithLong:currentConsumerIndex];
  IOSObjectArray *lb = buffer_;
  id e = [self lpElementWithNSObjectArray:lb withLong:offset];
  [self soElementWithNSObjectArray:lb withLong:offset withId:nil];
  return e;
}

- (id)peek {
  jlong currentConsumerIndex;
  jlong currProducerIndexCache = RxInternalUtilUnsafeSpmcArrayQueueProducerIndexCacheField_lvProducerIndexCache(self);
  id e;
  do {
    currentConsumerIndex = RxInternalUtilUnsafeSpmcArrayQueueConsumerField_lvConsumerIndex(self);
    if (currentConsumerIndex >= currProducerIndexCache) {
      jlong currProducerIndex = RxInternalUtilUnsafeSpmcArrayQueueProducerField_lvProducerIndex(self);
      if (currentConsumerIndex >= currProducerIndex) {
        return nil;
      }
      else {
        RxInternalUtilUnsafeSpmcArrayQueueProducerIndexCacheField_svProducerIndexCacheWithLong_(self, currProducerIndex);
      }
    }
  }
  while (nil == (e = [self lvElementWithLong:[self calcElementOffsetWithLong:currentConsumerIndex]]));
  return e;
}

- (jint)size {
  jlong after = RxInternalUtilUnsafeSpmcArrayQueueConsumerField_lvConsumerIndex(self);
  while (true) {
    jlong before = after;
    jlong currentProducerIndex = RxInternalUtilUnsafeSpmcArrayQueueProducerField_lvProducerIndex(self);
    after = RxInternalUtilUnsafeSpmcArrayQueueConsumerField_lvConsumerIndex(self);
    if (before == after) {
      return (jint) (currentProducerIndex - after);
    }
  }
}

- (jboolean)isEmpty {
  return RxInternalUtilUnsafeSpmcArrayQueueConsumerField_lvConsumerIndex(self) == RxInternalUtilUnsafeSpmcArrayQueueProducerField_lvProducerIndex(self);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { "offerWithId:", "Z", 0x1, 1, 2, -1, 3, -1, -1 },
    { "poll", "LNSObject;", 0x1, -1, -1, -1, 4, -1, -1 },
    { "peek", "LNSObject;", 0x1, -1, -1, -1, 4, -1, -1 },
    { "size", "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { "isEmpty", "Z", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "offer", "LNSObject;", "(TE;)Z", "()TE;", "<E:Ljava/lang/Object;>Lrx/internal/util/unsafe/SpmcArrayQueueL3Pad<TE;>;" };
  static const J2ObjcClassInfo _RxInternalUtilUnsafeSpmcArrayQueue = { "SpmcArrayQueue", "rx.internal.util.unsafe", ptrTable, methods, NULL, 7, 0x11, 6, 0, -1, -1, -1, 5, -1 };
  return &_RxInternalUtilUnsafeSpmcArrayQueue;
}

@end

void RxInternalUtilUnsafeSpmcArrayQueue_initWithInt_(RxInternalUtilUnsafeSpmcArrayQueue *self, jint capacity) {
  RxInternalUtilUnsafeSpmcArrayQueueL3Pad_initWithInt_(self, capacity);
}

RxInternalUtilUnsafeSpmcArrayQueue *new_RxInternalUtilUnsafeSpmcArrayQueue_initWithInt_(jint capacity) {
  J2OBJC_NEW_IMPL(RxInternalUtilUnsafeSpmcArrayQueue, initWithInt_, capacity)
}

RxInternalUtilUnsafeSpmcArrayQueue *create_RxInternalUtilUnsafeSpmcArrayQueue_initWithInt_(jint capacity) {
  J2OBJC_CREATE_IMPL(RxInternalUtilUnsafeSpmcArrayQueue, initWithInt_, capacity)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalUtilUnsafeSpmcArrayQueue)
