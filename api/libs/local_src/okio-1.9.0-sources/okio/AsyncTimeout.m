//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/okio-1.9.0-sources/okio/AsyncTimeout.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/InterruptedIOException.h"
#include "java/lang/AssertionError.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "java/lang/Thread.h"
#include "okio/AsyncTimeout.h"
#include "okio/Buffer.h"
#include "okio/Segment.h"
#include "okio/Sink.h"
#include "okio/Source.h"
#include "okio/Timeout.h"
#include "okio/Util.h"

@interface OkioAsyncTimeout () {
 @public
  /*!
   @brief True if this node is currently in the queue.
   */
  jboolean inQueue_;
  /*!
   @brief The next node in the linked list.
   */
  OkioAsyncTimeout *next_;
  /*!
   @brief If scheduled, this is the time that the watchdog should time this out.
   */
  jlong timeoutAt_;
}

+ (void)scheduleTimeoutWithOkioAsyncTimeout:(OkioAsyncTimeout *)node
                                   withLong:(jlong)timeoutNanos
                                withBoolean:(jboolean)hasDeadline;

/*!
 @brief Returns true if the timeout occurred.
 */
+ (jboolean)cancelScheduledTimeoutWithOkioAsyncTimeout:(OkioAsyncTimeout *)node;

/*!
 @brief Returns the amount of time left until the time out.
 This will be negative
 if the timeout has elapsed and the timeout should occur immediately.
 */
- (jlong)remainingNanosWithLong:(jlong)now;

@end

J2OBJC_FIELD_SETTER(OkioAsyncTimeout, next_, OkioAsyncTimeout *)

/*!
 @brief Don't write more than 64 KiB of data at a time, give or take a segment.
 Otherwise slow connections may suffer timeouts even when they're making
 (slow) progress. Without this, writing a single 1 MiB buffer may never
 succeed on a sufficiently slow connection.
 */
inline jint OkioAsyncTimeout_get_TIMEOUT_WRITE_SIZE();
#define OkioAsyncTimeout_TIMEOUT_WRITE_SIZE 65536
J2OBJC_STATIC_FIELD_CONSTANT(OkioAsyncTimeout, TIMEOUT_WRITE_SIZE, jint)

/*!
 @brief The watchdog thread processes a linked list of pending timeouts, sorted in
 the order to be triggered.
 This class synchronizes on AsyncTimeout.class.
 This lock guards the queue.
 <p>Head's 'next' points to the first element of the linked list. The first
 element is the next node to time out, or null if the queue is empty. The
 head is null until the watchdog thread is started.
 */
inline OkioAsyncTimeout *OkioAsyncTimeout_get_head();
inline OkioAsyncTimeout *OkioAsyncTimeout_set_head(OkioAsyncTimeout *value);
static OkioAsyncTimeout *OkioAsyncTimeout_head;
J2OBJC_STATIC_FIELD_OBJ(OkioAsyncTimeout, head, OkioAsyncTimeout *)

__attribute__((unused)) static void OkioAsyncTimeout_enter(OkioAsyncTimeout *self);

__attribute__((unused)) static void OkioAsyncTimeout_scheduleTimeoutWithOkioAsyncTimeout_withLong_withBoolean_(OkioAsyncTimeout *node, jlong timeoutNanos, jboolean hasDeadline);

__attribute__((unused)) static jboolean OkioAsyncTimeout_exit(OkioAsyncTimeout *self);

__attribute__((unused)) static jboolean OkioAsyncTimeout_cancelScheduledTimeoutWithOkioAsyncTimeout_(OkioAsyncTimeout *node);

__attribute__((unused)) static jlong OkioAsyncTimeout_remainingNanosWithLong_(OkioAsyncTimeout *self, jlong now);

__attribute__((unused)) static void OkioAsyncTimeout_exitWithBoolean_(OkioAsyncTimeout *self, jboolean throwOnTimeout);

__attribute__((unused)) static JavaIoIOException *OkioAsyncTimeout_exitWithJavaIoIOException_(OkioAsyncTimeout *self, JavaIoIOException *cause);

@interface OkioAsyncTimeout_Watchdog : JavaLangThread

- (instancetype)init;

- (void)run;

@end

J2OBJC_EMPTY_STATIC_INIT(OkioAsyncTimeout_Watchdog)

__attribute__((unused)) static void OkioAsyncTimeout_Watchdog_init(OkioAsyncTimeout_Watchdog *self);

__attribute__((unused)) static OkioAsyncTimeout_Watchdog *new_OkioAsyncTimeout_Watchdog_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OkioAsyncTimeout_Watchdog *create_OkioAsyncTimeout_Watchdog_init();

J2OBJC_TYPE_LITERAL_HEADER(OkioAsyncTimeout_Watchdog)

@interface OkioAsyncTimeout_$1 : NSObject < OkioSink > {
 @public
  OkioAsyncTimeout *this$0_;
  id<OkioSink> val$sink_;
}

- (void)writeWithOkioBuffer:(OkioBuffer *)source
                   withLong:(jlong)byteCount;

- (void)flush;

- (void)close;

- (OkioTimeout *)timeout;

- (NSString *)description;

- (instancetype)initWithOkioAsyncTimeout:(OkioAsyncTimeout *)outer$
                            withOkioSink:(id<OkioSink>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OkioAsyncTimeout_$1)

J2OBJC_FIELD_SETTER(OkioAsyncTimeout_$1, this$0_, OkioAsyncTimeout *)
J2OBJC_FIELD_SETTER(OkioAsyncTimeout_$1, val$sink_, id<OkioSink>)

__attribute__((unused)) static void OkioAsyncTimeout_$1_initWithOkioAsyncTimeout_withOkioSink_(OkioAsyncTimeout_$1 *self, OkioAsyncTimeout *outer$, id<OkioSink> capture$0);

__attribute__((unused)) static OkioAsyncTimeout_$1 *new_OkioAsyncTimeout_$1_initWithOkioAsyncTimeout_withOkioSink_(OkioAsyncTimeout *outer$, id<OkioSink> capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static OkioAsyncTimeout_$1 *create_OkioAsyncTimeout_$1_initWithOkioAsyncTimeout_withOkioSink_(OkioAsyncTimeout *outer$, id<OkioSink> capture$0);

J2OBJC_TYPE_LITERAL_HEADER(OkioAsyncTimeout_$1)

@interface OkioAsyncTimeout_$2 : NSObject < OkioSource > {
 @public
  OkioAsyncTimeout *this$0_;
  id<OkioSource> val$source_;
}

- (jlong)readWithOkioBuffer:(OkioBuffer *)sink
                   withLong:(jlong)byteCount;

- (void)close;

- (OkioTimeout *)timeout;

- (NSString *)description;

- (instancetype)initWithOkioAsyncTimeout:(OkioAsyncTimeout *)outer$
                          withOkioSource:(id<OkioSource>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OkioAsyncTimeout_$2)

J2OBJC_FIELD_SETTER(OkioAsyncTimeout_$2, this$0_, OkioAsyncTimeout *)
J2OBJC_FIELD_SETTER(OkioAsyncTimeout_$2, val$source_, id<OkioSource>)

__attribute__((unused)) static void OkioAsyncTimeout_$2_initWithOkioAsyncTimeout_withOkioSource_(OkioAsyncTimeout_$2 *self, OkioAsyncTimeout *outer$, id<OkioSource> capture$0);

__attribute__((unused)) static OkioAsyncTimeout_$2 *new_OkioAsyncTimeout_$2_initWithOkioAsyncTimeout_withOkioSource_(OkioAsyncTimeout *outer$, id<OkioSource> capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static OkioAsyncTimeout_$2 *create_OkioAsyncTimeout_$2_initWithOkioAsyncTimeout_withOkioSource_(OkioAsyncTimeout *outer$, id<OkioSource> capture$0);

J2OBJC_TYPE_LITERAL_HEADER(OkioAsyncTimeout_$2)

@implementation OkioAsyncTimeout

- (void)enter {
  OkioAsyncTimeout_enter(self);
}

+ (void)scheduleTimeoutWithOkioAsyncTimeout:(OkioAsyncTimeout *)node
                                   withLong:(jlong)timeoutNanos
                                withBoolean:(jboolean)hasDeadline {
  OkioAsyncTimeout_scheduleTimeoutWithOkioAsyncTimeout_withLong_withBoolean_(node, timeoutNanos, hasDeadline);
}

- (jboolean)exit {
  return OkioAsyncTimeout_exit(self);
}

+ (jboolean)cancelScheduledTimeoutWithOkioAsyncTimeout:(OkioAsyncTimeout *)node {
  return OkioAsyncTimeout_cancelScheduledTimeoutWithOkioAsyncTimeout_(node);
}

- (jlong)remainingNanosWithLong:(jlong)now {
  return OkioAsyncTimeout_remainingNanosWithLong_(self, now);
}

- (void)timedOut {
}

- (id<OkioSink>)sinkWithOkioSink:(id<OkioSink>)sink {
  return new_OkioAsyncTimeout_$1_initWithOkioAsyncTimeout_withOkioSink_(self, sink);
}

- (id<OkioSource>)sourceWithOkioSource:(id<OkioSource>)source {
  return new_OkioAsyncTimeout_$2_initWithOkioAsyncTimeout_withOkioSource_(self, source);
}

- (void)exitWithBoolean:(jboolean)throwOnTimeout {
  OkioAsyncTimeout_exitWithBoolean_(self, throwOnTimeout);
}

- (JavaIoIOException *)exitWithJavaIoIOException:(JavaIoIOException *)cause {
  return OkioAsyncTimeout_exitWithJavaIoIOException_(self, cause);
}

- (JavaIoIOException *)newTimeoutExceptionWithJavaIoIOException:(JavaIoIOException *)cause {
  JavaIoInterruptedIOException *e = new_JavaIoInterruptedIOException_initWithNSString_(@"timeout");
  if (cause != nil) {
    (void) [e initCauseWithNSException:cause];
  }
  return e;
}

+ (OkioAsyncTimeout *)awaitTimeout {
  return OkioAsyncTimeout_awaitTimeout();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OkioAsyncTimeout_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "enter", "V", 0x11, -1, -1, -1, -1, -1, -1 },
    { "scheduleTimeoutWithOkioAsyncTimeout:withLong:withBoolean:", "V", 0x2a, 0, 1, -1, -1, -1, -1 },
    { "exit", "Z", 0x11, -1, -1, -1, -1, -1, -1 },
    { "cancelScheduledTimeoutWithOkioAsyncTimeout:", "Z", 0x2a, 2, 3, -1, -1, -1, -1 },
    { "remainingNanosWithLong:", "J", 0x2, 4, 5, -1, -1, -1, -1 },
    { "timedOut", "V", 0x4, -1, -1, -1, -1, -1, -1 },
    { "sinkWithOkioSink:", "LOkioSink;", 0x11, 6, 7, -1, -1, -1, -1 },
    { "sourceWithOkioSource:", "LOkioSource;", 0x11, 8, 9, -1, -1, -1, -1 },
    { "exitWithBoolean:", "V", 0x10, 10, 11, 12, -1, -1, -1 },
    { "exitWithJavaIoIOException:", "LJavaIoIOException;", 0x10, 10, 12, 12, -1, -1, -1 },
    { "newTimeoutExceptionWithJavaIoIOException:", "LJavaIoIOException;", 0x4, 13, 12, -1, -1, -1, -1 },
    { "awaitTimeout", "LOkioAsyncTimeout;", 0x28, -1, -1, 14, -1, -1, -1 },
    { "init", NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TIMEOUT_WRITE_SIZE", "I", .constantValue.asInt = OkioAsyncTimeout_TIMEOUT_WRITE_SIZE, 0x1a, -1, -1, -1, -1 },
    { "head", "LOkioAsyncTimeout;", .constantValue.asLong = 0, 0xa, -1, 15, -1, -1 },
    { "inQueue_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "next_", "LOkioAsyncTimeout;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "timeoutAt_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "scheduleTimeout", "LOkioAsyncTimeout;JZ", "cancelScheduledTimeout", "LOkioAsyncTimeout;", "remainingNanos", "J", "sink", "LOkioSink;", "source", "LOkioSource;", "exit", "Z", "LJavaIoIOException;", "newTimeoutException", "LJavaLangInterruptedException;", &OkioAsyncTimeout_head, "LOkioAsyncTimeout_Watchdog;" };
  static const J2ObjcClassInfo _OkioAsyncTimeout = { "AsyncTimeout", "okio", ptrTable, methods, fields, 7, 0x1, 13, 5, -1, 16, -1, -1, -1 };
  return &_OkioAsyncTimeout;
}

@end

void OkioAsyncTimeout_enter(OkioAsyncTimeout *self) {
  if (self->inQueue_) @throw new_JavaLangIllegalStateException_initWithNSString_(@"Unbalanced enter/exit");
  jlong timeoutNanos = [self timeoutNanos];
  jboolean hasDeadline = [self hasDeadline];
  if (timeoutNanos == 0 && !hasDeadline) {
    return;
  }
  self->inQueue_ = true;
  OkioAsyncTimeout_scheduleTimeoutWithOkioAsyncTimeout_withLong_withBoolean_(self, timeoutNanos, hasDeadline);
}

void OkioAsyncTimeout_scheduleTimeoutWithOkioAsyncTimeout_withLong_withBoolean_(OkioAsyncTimeout *node, jlong timeoutNanos, jboolean hasDeadline) {
  OkioAsyncTimeout_initialize();
  @synchronized(OkioAsyncTimeout_class_()) {
    if (OkioAsyncTimeout_head == nil) {
      OkioAsyncTimeout_head = new_OkioAsyncTimeout_init();
      [new_OkioAsyncTimeout_Watchdog_init() start];
    }
    jlong now = JavaLangSystem_nanoTime();
    if (timeoutNanos != 0 && hasDeadline) {
      ((OkioAsyncTimeout *) nil_chk(node))->timeoutAt_ = now + JavaLangMath_minWithLong_withLong_(timeoutNanos, [node deadlineNanoTime] - now);
    }
    else if (timeoutNanos != 0) {
      ((OkioAsyncTimeout *) nil_chk(node))->timeoutAt_ = now + timeoutNanos;
    }
    else if (hasDeadline) {
      ((OkioAsyncTimeout *) nil_chk(node))->timeoutAt_ = [node deadlineNanoTime];
    }
    else {
      @throw new_JavaLangAssertionError_init();
    }
    jlong remainingNanos = OkioAsyncTimeout_remainingNanosWithLong_(node, now);
    for (OkioAsyncTimeout *prev = OkioAsyncTimeout_head; true; prev = prev->next_) {
      if (((OkioAsyncTimeout *) nil_chk(prev))->next_ == nil || remainingNanos < OkioAsyncTimeout_remainingNanosWithLong_(prev->next_, now)) {
        node->next_ = prev->next_;
        prev->next_ = node;
        if (prev == OkioAsyncTimeout_head) {
          [OkioAsyncTimeout_class_() notify];
        }
        break;
      }
    }
  }
}

jboolean OkioAsyncTimeout_exit(OkioAsyncTimeout *self) {
  if (!self->inQueue_) return false;
  self->inQueue_ = false;
  return OkioAsyncTimeout_cancelScheduledTimeoutWithOkioAsyncTimeout_(self);
}

jboolean OkioAsyncTimeout_cancelScheduledTimeoutWithOkioAsyncTimeout_(OkioAsyncTimeout *node) {
  OkioAsyncTimeout_initialize();
  @synchronized(OkioAsyncTimeout_class_()) {
    for (OkioAsyncTimeout *prev = OkioAsyncTimeout_head; prev != nil; prev = prev->next_) {
      if (prev->next_ == node) {
        prev->next_ = ((OkioAsyncTimeout *) nil_chk(node))->next_;
        node->next_ = nil;
        return false;
      }
    }
    return true;
  }
}

jlong OkioAsyncTimeout_remainingNanosWithLong_(OkioAsyncTimeout *self, jlong now) {
  return self->timeoutAt_ - now;
}

void OkioAsyncTimeout_exitWithBoolean_(OkioAsyncTimeout *self, jboolean throwOnTimeout) {
  jboolean timedOut = OkioAsyncTimeout_exit(self);
  if (timedOut && throwOnTimeout) @throw [self newTimeoutExceptionWithJavaIoIOException:nil];
}

JavaIoIOException *OkioAsyncTimeout_exitWithJavaIoIOException_(OkioAsyncTimeout *self, JavaIoIOException *cause) {
  if (!OkioAsyncTimeout_exit(self)) return cause;
  return [self newTimeoutExceptionWithJavaIoIOException:cause];
}

OkioAsyncTimeout *OkioAsyncTimeout_awaitTimeout() {
  OkioAsyncTimeout_initialize();
  @synchronized(OkioAsyncTimeout_class_()) {
    OkioAsyncTimeout *node = ((OkioAsyncTimeout *) nil_chk(OkioAsyncTimeout_head))->next_;
    if (node == nil) {
      [OkioAsyncTimeout_class_() wait];
      return nil;
    }
    jlong waitNanos = OkioAsyncTimeout_remainingNanosWithLong_(node, JavaLangSystem_nanoTime());
    if (waitNanos > 0) {
      jlong waitMillis = waitNanos / 1000000LL;
      waitNanos -= (waitMillis * 1000000LL);
      [OkioAsyncTimeout_class_() waitWithLong:waitMillis withInt:(jint) waitNanos];
      return nil;
    }
    ((OkioAsyncTimeout *) nil_chk(OkioAsyncTimeout_head))->next_ = node->next_;
    node->next_ = nil;
    return node;
  }
}

void OkioAsyncTimeout_init(OkioAsyncTimeout *self) {
  OkioTimeout_init(self);
}

OkioAsyncTimeout *new_OkioAsyncTimeout_init() {
  J2OBJC_NEW_IMPL(OkioAsyncTimeout, init)
}

OkioAsyncTimeout *create_OkioAsyncTimeout_init() {
  J2OBJC_CREATE_IMPL(OkioAsyncTimeout, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OkioAsyncTimeout)

@implementation OkioAsyncTimeout_Watchdog

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OkioAsyncTimeout_Watchdog_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)run {
  while (true) {
    @try {
      OkioAsyncTimeout *timedOut = OkioAsyncTimeout_awaitTimeout();
      if (timedOut == nil) continue;
      [timedOut timedOut];
    }
    @catch (JavaLangInterruptedException *ignored) {
    }
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { "run", "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOkioAsyncTimeout;" };
  static const J2ObjcClassInfo _OkioAsyncTimeout_Watchdog = { "Watchdog", "okio", ptrTable, methods, NULL, 7, 0x1a, 2, 0, 0, -1, -1, -1, -1 };
  return &_OkioAsyncTimeout_Watchdog;
}

@end

void OkioAsyncTimeout_Watchdog_init(OkioAsyncTimeout_Watchdog *self) {
  JavaLangThread_initWithNSString_(self, @"Okio Watchdog");
  [self setDaemonWithBoolean:true];
}

OkioAsyncTimeout_Watchdog *new_OkioAsyncTimeout_Watchdog_init() {
  J2OBJC_NEW_IMPL(OkioAsyncTimeout_Watchdog, init)
}

OkioAsyncTimeout_Watchdog *create_OkioAsyncTimeout_Watchdog_init() {
  J2OBJC_CREATE_IMPL(OkioAsyncTimeout_Watchdog, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OkioAsyncTimeout_Watchdog)

@implementation OkioAsyncTimeout_$1

- (void)writeWithOkioBuffer:(OkioBuffer *)source
                   withLong:(jlong)byteCount {
  OkioUtil_checkOffsetAndCountWithLong_withLong_withLong_(((OkioBuffer *) nil_chk(source))->size_, 0, byteCount);
  while (byteCount > 0LL) {
    jlong toWrite = 0LL;
    for (OkioSegment *s = source->head_; toWrite < OkioAsyncTimeout_TIMEOUT_WRITE_SIZE; s = ((OkioSegment *) nil_chk(s))->next_) {
      jint segmentSize = ((OkioSegment *) nil_chk(source->head_))->limit_ - source->head_->pos_;
      toWrite += segmentSize;
      if (toWrite >= byteCount) {
        toWrite = byteCount;
        break;
      }
    }
    jboolean throwOnTimeout = false;
    OkioAsyncTimeout_enter(this$0_);
    @try {
      [((id<OkioSink>) nil_chk(val$sink_)) writeWithOkioBuffer:source withLong:toWrite];
      byteCount -= toWrite;
      throwOnTimeout = true;
    }
    @catch (JavaIoIOException *e) {
      @throw OkioAsyncTimeout_exitWithJavaIoIOException_(this$0_, e);
    }
    @finally {
      OkioAsyncTimeout_exitWithBoolean_(this$0_, throwOnTimeout);
    }
  }
}

- (void)flush {
  jboolean throwOnTimeout = false;
  OkioAsyncTimeout_enter(this$0_);
  @try {
    [((id<OkioSink>) nil_chk(val$sink_)) flush];
    throwOnTimeout = true;
  }
  @catch (JavaIoIOException *e) {
    @throw OkioAsyncTimeout_exitWithJavaIoIOException_(this$0_, e);
  }
  @finally {
    OkioAsyncTimeout_exitWithBoolean_(this$0_, throwOnTimeout);
  }
}

- (void)close {
  jboolean throwOnTimeout = false;
  OkioAsyncTimeout_enter(this$0_);
  @try {
    [((id<OkioSink>) nil_chk(val$sink_)) close];
    throwOnTimeout = true;
  }
  @catch (JavaIoIOException *e) {
    @throw OkioAsyncTimeout_exitWithJavaIoIOException_(this$0_, e);
  }
  @finally {
    OkioAsyncTimeout_exitWithBoolean_(this$0_, throwOnTimeout);
  }
}

- (OkioTimeout *)timeout {
  return this$0_;
}

- (NSString *)description {
  return JreStrcat("$@C", @"AsyncTimeout.sink(", val$sink_, ')');
}

- (instancetype)initWithOkioAsyncTimeout:(OkioAsyncTimeout *)outer$
                            withOkioSink:(id<OkioSink>)capture$0 {
  OkioAsyncTimeout_$1_initWithOkioAsyncTimeout_withOkioSink_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "writeWithOkioBuffer:withLong:", "V", 0x1, 0, 1, 2, -1, -1, -1 },
    { "flush", "V", 0x1, -1, -1, 2, -1, -1, -1 },
    { "close", "V", 0x1, -1, -1, 2, -1, -1, -1 },
    { "timeout", "LOkioTimeout;", 0x1, -1, -1, -1, -1, -1, -1 },
    { "description", "LNSString;", 0x1, 3, -1, -1, -1, -1, -1 },
    { "initWithOkioAsyncTimeout:withOkioSink:", NULL, 0x0, -1, 4, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOkioAsyncTimeout;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$sink_", "LOkioSink;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "write", "LOkioBuffer;J", "LJavaIoIOException;", "toString", "LOkioAsyncTimeout;LOkioSink;", "LOkioAsyncTimeout;", "sinkWithOkioSink:" };
  static const J2ObjcClassInfo _OkioAsyncTimeout_$1 = { "", "okio", ptrTable, methods, fields, 7, 0x8008, 6, 2, 5, -1, 6, -1, -1 };
  return &_OkioAsyncTimeout_$1;
}

@end

void OkioAsyncTimeout_$1_initWithOkioAsyncTimeout_withOkioSink_(OkioAsyncTimeout_$1 *self, OkioAsyncTimeout *outer$, id<OkioSink> capture$0) {
  self->this$0_ = outer$;
  self->val$sink_ = capture$0;
  NSObject_init(self);
}

OkioAsyncTimeout_$1 *new_OkioAsyncTimeout_$1_initWithOkioAsyncTimeout_withOkioSink_(OkioAsyncTimeout *outer$, id<OkioSink> capture$0) {
  J2OBJC_NEW_IMPL(OkioAsyncTimeout_$1, initWithOkioAsyncTimeout_withOkioSink_, outer$, capture$0)
}

OkioAsyncTimeout_$1 *create_OkioAsyncTimeout_$1_initWithOkioAsyncTimeout_withOkioSink_(OkioAsyncTimeout *outer$, id<OkioSink> capture$0) {
  J2OBJC_CREATE_IMPL(OkioAsyncTimeout_$1, initWithOkioAsyncTimeout_withOkioSink_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OkioAsyncTimeout_$1)

@implementation OkioAsyncTimeout_$2

- (jlong)readWithOkioBuffer:(OkioBuffer *)sink
                   withLong:(jlong)byteCount {
  jboolean throwOnTimeout = false;
  OkioAsyncTimeout_enter(this$0_);
  @try {
    jlong result = [((id<OkioSource>) nil_chk(val$source_)) readWithOkioBuffer:sink withLong:byteCount];
    throwOnTimeout = true;
    return result;
  }
  @catch (JavaIoIOException *e) {
    @throw OkioAsyncTimeout_exitWithJavaIoIOException_(this$0_, e);
  }
  @finally {
    OkioAsyncTimeout_exitWithBoolean_(this$0_, throwOnTimeout);
  }
}

- (void)close {
  jboolean throwOnTimeout = false;
  @try {
    [((id<OkioSource>) nil_chk(val$source_)) close];
    throwOnTimeout = true;
  }
  @catch (JavaIoIOException *e) {
    @throw OkioAsyncTimeout_exitWithJavaIoIOException_(this$0_, e);
  }
  @finally {
    OkioAsyncTimeout_exitWithBoolean_(this$0_, throwOnTimeout);
  }
}

- (OkioTimeout *)timeout {
  return this$0_;
}

- (NSString *)description {
  return JreStrcat("$@C", @"AsyncTimeout.source(", val$source_, ')');
}

- (instancetype)initWithOkioAsyncTimeout:(OkioAsyncTimeout *)outer$
                          withOkioSource:(id<OkioSource>)capture$0 {
  OkioAsyncTimeout_$2_initWithOkioAsyncTimeout_withOkioSource_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "readWithOkioBuffer:withLong:", "J", 0x1, 0, 1, 2, -1, -1, -1 },
    { "close", "V", 0x1, -1, -1, 2, -1, -1, -1 },
    { "timeout", "LOkioTimeout;", 0x1, -1, -1, -1, -1, -1, -1 },
    { "description", "LNSString;", 0x1, 3, -1, -1, -1, -1, -1 },
    { "initWithOkioAsyncTimeout:withOkioSource:", NULL, 0x0, -1, 4, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOkioAsyncTimeout;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$source_", "LOkioSource;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "read", "LOkioBuffer;J", "LJavaIoIOException;", "toString", "LOkioAsyncTimeout;LOkioSource;", "LOkioAsyncTimeout;", "sourceWithOkioSource:" };
  static const J2ObjcClassInfo _OkioAsyncTimeout_$2 = { "", "okio", ptrTable, methods, fields, 7, 0x8008, 5, 2, 5, -1, 6, -1, -1 };
  return &_OkioAsyncTimeout_$2;
}

@end

void OkioAsyncTimeout_$2_initWithOkioAsyncTimeout_withOkioSource_(OkioAsyncTimeout_$2 *self, OkioAsyncTimeout *outer$, id<OkioSource> capture$0) {
  self->this$0_ = outer$;
  self->val$source_ = capture$0;
  NSObject_init(self);
}

OkioAsyncTimeout_$2 *new_OkioAsyncTimeout_$2_initWithOkioAsyncTimeout_withOkioSource_(OkioAsyncTimeout *outer$, id<OkioSource> capture$0) {
  J2OBJC_NEW_IMPL(OkioAsyncTimeout_$2, initWithOkioAsyncTimeout_withOkioSource_, outer$, capture$0)
}

OkioAsyncTimeout_$2 *create_OkioAsyncTimeout_$2_initWithOkioAsyncTimeout_withOkioSource_(OkioAsyncTimeout *outer$, id<OkioSource> capture$0) {
  J2OBJC_CREATE_IMPL(OkioAsyncTimeout_$2, initWithOkioAsyncTimeout_withOkioSource_, outer$, capture$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OkioAsyncTimeout_$2)