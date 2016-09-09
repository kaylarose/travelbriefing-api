//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/okio-1.9.0-sources/okio/GzipSink.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "java/util/zip/CRC32.h"
#include "java/util/zip/Deflater.h"
#include "okio/Buffer.h"
#include "okio/BufferedSink.h"
#include "okio/DeflaterSink.h"
#include "okio/GzipSink.h"
#include "okio/Okio.h"
#include "okio/Segment.h"
#include "okio/Sink.h"
#include "okio/Timeout.h"
#include "okio/Util.h"

@interface OkioGzipSink () {
 @public
  /*!
   @brief Sink into which the GZIP format is written.
   */
  id<OkioBufferedSink> sink_;
  /*!
   @brief The deflater used to compress the body.
   */
  JavaUtilZipDeflater *deflater_;
  /*!
   @brief The deflater sink takes care of moving data between decompressed source and
 compressed sink buffers.
   */
  OkioDeflaterSink *deflaterSink_;
  jboolean closed_;
  /*!
   @brief Checksum calculated for the compressed body.
   */
  JavaUtilZipCRC32 *crc_;
}

- (void)writeHeader;

- (void)writeFooter;

/*!
 @brief Updates the CRC with the given bytes.
 */
- (void)updateCrcWithOkioBuffer:(OkioBuffer *)buffer
                       withLong:(jlong)byteCount;

@end

J2OBJC_FIELD_SETTER(OkioGzipSink, sink_, id<OkioBufferedSink>)
J2OBJC_FIELD_SETTER(OkioGzipSink, deflater_, JavaUtilZipDeflater *)
J2OBJC_FIELD_SETTER(OkioGzipSink, deflaterSink_, OkioDeflaterSink *)
J2OBJC_FIELD_SETTER(OkioGzipSink, crc_, JavaUtilZipCRC32 *)

__attribute__((unused)) static void OkioGzipSink_writeHeader(OkioGzipSink *self);

__attribute__((unused)) static void OkioGzipSink_writeFooter(OkioGzipSink *self);

__attribute__((unused)) static void OkioGzipSink_updateCrcWithOkioBuffer_withLong_(OkioGzipSink *self, OkioBuffer *buffer, jlong byteCount);

@implementation OkioGzipSink

- (instancetype)initWithOkioSink:(id<OkioSink>)sink {
  OkioGzipSink_initWithOkioSink_(self, sink);
  return self;
}

- (void)writeWithOkioBuffer:(OkioBuffer *)source
                   withLong:(jlong)byteCount {
  if (byteCount < 0) @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$J", @"byteCount < 0: ", byteCount));
  if (byteCount == 0) return;
  OkioGzipSink_updateCrcWithOkioBuffer_withLong_(self, source, byteCount);
  [((OkioDeflaterSink *) nil_chk(deflaterSink_)) writeWithOkioBuffer:source withLong:byteCount];
}

- (void)flush {
  [((OkioDeflaterSink *) nil_chk(deflaterSink_)) flush];
}

- (OkioTimeout *)timeout {
  return [((id<OkioBufferedSink>) nil_chk(sink_)) timeout];
}

- (void)close {
  if (closed_) return;
  NSException *thrown = nil;
  @try {
    [((OkioDeflaterSink *) nil_chk(deflaterSink_)) finishDeflate];
    OkioGzipSink_writeFooter(self);
  }
  @catch (NSException *e) {
    thrown = e;
  }
  @try {
    [((JavaUtilZipDeflater *) nil_chk(deflater_)) end];
  }
  @catch (NSException *e) {
    if (thrown == nil) thrown = e;
  }
  @try {
    [((id<OkioBufferedSink>) nil_chk(sink_)) close];
  }
  @catch (NSException *e) {
    if (thrown == nil) thrown = e;
  }
  closed_ = true;
  if (thrown != nil) OkioUtil_sneakyRethrowWithNSException_(thrown);
}

- (void)writeHeader {
  OkioGzipSink_writeHeader(self);
}

- (void)writeFooter {
  OkioGzipSink_writeFooter(self);
}

- (void)updateCrcWithOkioBuffer:(OkioBuffer *)buffer
                       withLong:(jlong)byteCount {
  OkioGzipSink_updateCrcWithOkioBuffer_withLong_(self, buffer, byteCount);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOkioSink:", NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { "writeWithOkioBuffer:withLong:", "V", 0x1, 1, 2, 3, -1, -1, -1 },
    { "flush", "V", 0x1, -1, -1, 3, -1, -1, -1 },
    { "timeout", "LOkioTimeout;", 0x1, -1, -1, -1, -1, -1, -1 },
    { "close", "V", 0x1, -1, -1, 3, -1, -1, -1 },
    { "writeHeader", "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { "writeFooter", "V", 0x2, -1, -1, 3, -1, -1, -1 },
    { "updateCrcWithOkioBuffer:withLong:", "V", 0x2, 4, 2, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "sink_", "LOkioBufferedSink;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "deflater_", "LJavaUtilZipDeflater;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "deflaterSink_", "LOkioDeflaterSink;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "closed_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "crc_", "LJavaUtilZipCRC32;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOkioSink;", "write", "LOkioBuffer;J", "LJavaIoIOException;", "updateCrc" };
  static const J2ObjcClassInfo _OkioGzipSink = { "GzipSink", "okio", ptrTable, methods, fields, 7, 0x11, 8, 5, -1, -1, -1, -1, -1 };
  return &_OkioGzipSink;
}

@end

void OkioGzipSink_initWithOkioSink_(OkioGzipSink *self, id<OkioSink> sink) {
  NSObject_init(self);
  self->crc_ = new_JavaUtilZipCRC32_init();
  if (sink == nil) @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"sink == null");
  self->deflater_ = new_JavaUtilZipDeflater_initWithInt_withBoolean_(JavaUtilZipDeflater_DEFAULT_COMPRESSION, true);
  self->sink_ = OkioOkio_bufferWithOkioSink_(sink);
  self->deflaterSink_ = new_OkioDeflaterSink_initWithOkioBufferedSink_withJavaUtilZipDeflater_(self->sink_, self->deflater_);
  OkioGzipSink_writeHeader(self);
}

OkioGzipSink *new_OkioGzipSink_initWithOkioSink_(id<OkioSink> sink) {
  J2OBJC_NEW_IMPL(OkioGzipSink, initWithOkioSink_, sink)
}

OkioGzipSink *create_OkioGzipSink_initWithOkioSink_(id<OkioSink> sink) {
  J2OBJC_CREATE_IMPL(OkioGzipSink, initWithOkioSink_, sink)
}

void OkioGzipSink_writeHeader(OkioGzipSink *self) {
  OkioBuffer *buffer = [((id<OkioBufferedSink>) nil_chk(self->sink_)) buffer];
  (void) [((OkioBuffer *) nil_chk(buffer)) writeShortWithInt:(jint) 0x1f8b];
  (void) [buffer writeByteWithInt:(jint) 0x08];
  (void) [buffer writeByteWithInt:(jint) 0x00];
  (void) [buffer writeIntWithInt:(jint) 0x00];
  (void) [buffer writeByteWithInt:(jint) 0x00];
  (void) [buffer writeByteWithInt:(jint) 0x00];
}

void OkioGzipSink_writeFooter(OkioGzipSink *self) {
  (void) [((id<OkioBufferedSink>) nil_chk(self->sink_)) writeIntLeWithInt:(jint) [((JavaUtilZipCRC32 *) nil_chk(self->crc_)) getValue]];
  (void) [self->sink_ writeIntLeWithInt:[((JavaUtilZipDeflater *) nil_chk(self->deflater_)) getTotalIn]];
}

void OkioGzipSink_updateCrcWithOkioBuffer_withLong_(OkioGzipSink *self, OkioBuffer *buffer, jlong byteCount) {
  for (OkioSegment *head = ((OkioBuffer *) nil_chk(buffer))->head_; byteCount > 0; head = head->next_) {
    jint segmentLength = (jint) JavaLangMath_minWithLong_withLong_(byteCount, ((OkioSegment *) nil_chk(head))->limit_ - head->pos_);
    [((JavaUtilZipCRC32 *) nil_chk(self->crc_)) updateWithByteArray:head->data_ withInt:head->pos_ withInt:segmentLength];
    byteCount -= segmentLength;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OkioGzipSink)
