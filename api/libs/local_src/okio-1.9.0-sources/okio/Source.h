//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/okio-1.9.0-sources/okio/Source.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OkioSource")
#ifdef RESTRICT_OkioSource
#define INCLUDE_ALL_OkioSource 0
#else
#define INCLUDE_ALL_OkioSource 1
#endif
#undef RESTRICT_OkioSource

#if !defined (OkioSource_) && (INCLUDE_ALL_OkioSource || defined(INCLUDE_OkioSource))
#define OkioSource_

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

@class OkioBuffer;
@class OkioTimeout;

/*!
 @brief Supplies a stream of bytes.
 Use this interface to read data from wherever
 it's located: from the network, storage, or a buffer in memory. Sources may
 be layered to transform supplied data, such as to decompress, decrypt, or
 remove protocol framing.
 <p>Most applications shouldn't operate on a source directly, but rather on a
 <code>BufferedSource</code> which is both more efficient and more convenient. Use
 <code>Okio.buffer(Source)</code> to wrap any source with a buffer.
 <p>Sources are easy to test: just use a <code>Buffer</code> in your tests, and
 fill it with the data your application is to read.
 <h3>Comparison with InputStream</h3>
 This interface is functionally equivalent to <code>java.io.InputStream</code>.
 <p><code>InputStream</code> requires multiple layers when consumed data is
 heterogeneous: a <code>DataInputStream</code> for primitive values, a <code>BufferedInputStream</code>
  for buffering, and <code>InputStreamReader</code> for
 strings. This class uses <code>BufferedSource</code> for all of the above.
 <p>Source avoids the impossible-to-implement available()
  method. Instead callers specify
 how many bytes they <code>require</code>.
 <p>Source omits the unsafe-to-compose mark and reset
  state that's tracked by <code>InputStream</code>; instead, callers
 just buffer what they need.
 <p>When implementing a source, you don't need to worry about the single-byte read
  method that is awkward to implement efficiently
 and returns one of 257 possible values.
 <p>And source has a stronger <code>skip</code> method: <code>BufferedSource.skip</code>
 won't return prematurely.
 <h3>Interop with InputStream</h3>
 Use <code>Okio.source</code> to adapt an <code>InputStream</code> to a source. Use
 <code>BufferedSource.inputStream</code> to adapt a source to an <code>InputStream</code>
 .
 */
@protocol OkioSource < JavaIoCloseable, JavaObject >

/*!
 @brief Removes at least 1, and up to <code>byteCount</code> bytes from this and appends
 them to <code>sink</code>.
 Returns the number of bytes read, or -1 if this
 source is exhausted.
 */
- (jlong)readWithOkioBuffer:(OkioBuffer *)sink
                   withLong:(jlong)byteCount;

/*!
 @brief Returns the timeout for this source.
 */
- (OkioTimeout *)timeout;

/*!
 @brief Closes this source and releases the resources held by this source.
 It is an
 error to read a closed source. It is safe to close a source more than once.
 */
- (void)close;

@end

J2OBJC_EMPTY_STATIC_INIT(OkioSource)

J2OBJC_TYPE_LITERAL_HEADER(OkioSource)

#endif

#pragma pop_macro("INCLUDE_ALL_OkioSource")
