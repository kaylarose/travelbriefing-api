//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/util/unsafe/MessagePassingQueue.java
//

#include "J2ObjC_source.h"
#include "rx/internal/util/unsafe/MessagePassingQueue.h"

@interface RxInternalUtilUnsafeMessagePassingQueue : NSObject

@end

@implementation RxInternalUtilUnsafeMessagePassingQueue

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "offerWithId:", "Z", 0x401, 0, 1, -1, 2, -1, -1 },
    { "poll", "LNSObject;", 0x401, -1, -1, -1, 3, -1, -1 },
    { "peek", "LNSObject;", 0x401, -1, -1, -1, 3, -1, -1 },
    { "size", "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { "isEmpty", "Z", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "offer", "LNSObject;", "(TM;)Z", "()TM;", "<M:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _RxInternalUtilUnsafeMessagePassingQueue = { "MessagePassingQueue", "rx.internal.util.unsafe", ptrTable, methods, NULL, 7, 0x608, 5, 0, -1, -1, -1, 4, -1 };
  return &_RxInternalUtilUnsafeMessagePassingQueue;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(RxInternalUtilUnsafeMessagePassingQueue)