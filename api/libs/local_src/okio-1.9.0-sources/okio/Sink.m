//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/okio-1.9.0-sources/okio/Sink.java
//

#include "J2ObjC_source.h"
#include "okio/Sink.h"

@interface OkioSink : NSObject

@end

@implementation OkioSink

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "writeWithOkioBuffer:withLong:", "V", 0x401, 0, 1, 2, -1, -1, -1 },
    { "flush", "V", 0x401, -1, -1, 2, -1, -1, -1 },
    { "timeout", "LOkioTimeout;", 0x401, -1, -1, -1, -1, -1, -1 },
    { "close", "V", 0x401, -1, -1, 2, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "write", "LOkioBuffer;J", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OkioSink = { "Sink", "okio", ptrTable, methods, NULL, 7, 0x609, 4, 0, -1, -1, -1, -1, -1 };
  return &_OkioSink;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OkioSink)