//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/converter-gson-2.1.0-sources/retrofit2/converter/gson/GsonRequestBodyConverter.java
//

#include "J2ObjC_source.h"
#include "com/google/gson/Gson.h"
#include "com/google/gson/TypeAdapter.h"
#include "com/google/gson/stream/JsonWriter.h"
#include "java/io/OutputStream.h"
#include "java/io/OutputStreamWriter.h"
#include "java/io/Writer.h"
#include "java/nio/charset/Charset.h"
#include "okhttp3/MediaType.h"
#include "okhttp3/RequestBody.h"
#include "okio/Buffer.h"
#include "okio/ByteString.h"
#include "retrofit2/converter/gson/GsonRequestBodyConverter.h"

@interface Retrofit2ConverterGsonGsonRequestBodyConverter () {
 @public
  ComGoogleGsonGson *gson_;
  ComGoogleGsonTypeAdapter *adapter_;
}

@end

J2OBJC_FIELD_SETTER(Retrofit2ConverterGsonGsonRequestBodyConverter, gson_, ComGoogleGsonGson *)
J2OBJC_FIELD_SETTER(Retrofit2ConverterGsonGsonRequestBodyConverter, adapter_, ComGoogleGsonTypeAdapter *)

inline Okhttp3MediaType *Retrofit2ConverterGsonGsonRequestBodyConverter_get_MEDIA_TYPE();
static Okhttp3MediaType *Retrofit2ConverterGsonGsonRequestBodyConverter_MEDIA_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(Retrofit2ConverterGsonGsonRequestBodyConverter, MEDIA_TYPE, Okhttp3MediaType *)

inline JavaNioCharsetCharset *Retrofit2ConverterGsonGsonRequestBodyConverter_get_UTF_8();
static JavaNioCharsetCharset *Retrofit2ConverterGsonGsonRequestBodyConverter_UTF_8;
J2OBJC_STATIC_FIELD_OBJ_FINAL(Retrofit2ConverterGsonGsonRequestBodyConverter, UTF_8, JavaNioCharsetCharset *)

J2OBJC_INITIALIZED_DEFN(Retrofit2ConverterGsonGsonRequestBodyConverter)

@implementation Retrofit2ConverterGsonGsonRequestBodyConverter

- (instancetype)initWithComGoogleGsonGson:(ComGoogleGsonGson *)gson
             withComGoogleGsonTypeAdapter:(ComGoogleGsonTypeAdapter *)adapter {
  Retrofit2ConverterGsonGsonRequestBodyConverter_initWithComGoogleGsonGson_withComGoogleGsonTypeAdapter_(self, gson, adapter);
  return self;
}

- (Okhttp3RequestBody *)convertWithId:(id)value {
  OkioBuffer *buffer = new_OkioBuffer_init();
  JavaIoWriter *writer = new_JavaIoOutputStreamWriter_initWithJavaIoOutputStream_withJavaNioCharsetCharset_([buffer outputStream], Retrofit2ConverterGsonGsonRequestBodyConverter_UTF_8);
  ComGoogleGsonStreamJsonWriter *jsonWriter = [((ComGoogleGsonGson *) nil_chk(gson_)) newJsonWriterWithJavaIoWriter:writer];
  [((ComGoogleGsonTypeAdapter *) nil_chk(adapter_)) writeWithComGoogleGsonStreamJsonWriter:jsonWriter withId:value];
  [((ComGoogleGsonStreamJsonWriter *) nil_chk(jsonWriter)) close];
  return Okhttp3RequestBody_createWithOkhttp3MediaType_withOkioByteString_(Retrofit2ConverterGsonGsonRequestBodyConverter_MEDIA_TYPE, [buffer readByteString]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComGoogleGsonGson:withComGoogleGsonTypeAdapter:", NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { "convertWithId:", "LOkhttp3RequestBody;", 0x1, 2, 3, 4, 5, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "MEDIA_TYPE", "LOkhttp3MediaType;", .constantValue.asLong = 0, 0x1a, -1, 6, -1, -1 },
    { "UTF_8", "LJavaNioCharsetCharset;", .constantValue.asLong = 0, 0x1a, -1, 7, -1, -1 },
    { "gson_", "LComGoogleGsonGson;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "adapter_", "LComGoogleGsonTypeAdapter;", .constantValue.asLong = 0, 0x12, -1, -1, 8, -1 },
  };
  static const void *ptrTable[] = { "LComGoogleGsonGson;LComGoogleGsonTypeAdapter;", "(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter<TT;>;)V", "convert", "LNSObject;", "LJavaIoIOException;", "(TT;)Lokhttp3/RequestBody;", &Retrofit2ConverterGsonGsonRequestBodyConverter_MEDIA_TYPE, &Retrofit2ConverterGsonGsonRequestBodyConverter_UTF_8, "Lcom/google/gson/TypeAdapter<TT;>;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lretrofit2/Converter<TT;Lokhttp3/RequestBody;>;" };
  static const J2ObjcClassInfo _Retrofit2ConverterGsonGsonRequestBodyConverter = { "GsonRequestBodyConverter", "retrofit2.converter.gson", ptrTable, methods, fields, 7, 0x10, 2, 4, -1, -1, -1, 9, -1 };
  return &_Retrofit2ConverterGsonGsonRequestBodyConverter;
}

+ (void)initialize {
  if (self == [Retrofit2ConverterGsonGsonRequestBodyConverter class]) {
    Retrofit2ConverterGsonGsonRequestBodyConverter_MEDIA_TYPE = Okhttp3MediaType_parseWithNSString_(@"application/json; charset=UTF-8");
    Retrofit2ConverterGsonGsonRequestBodyConverter_UTF_8 = JavaNioCharsetCharset_forNameWithNSString_(@"UTF-8");
    J2OBJC_SET_INITIALIZED(Retrofit2ConverterGsonGsonRequestBodyConverter)
  }
}

@end

void Retrofit2ConverterGsonGsonRequestBodyConverter_initWithComGoogleGsonGson_withComGoogleGsonTypeAdapter_(Retrofit2ConverterGsonGsonRequestBodyConverter *self, ComGoogleGsonGson *gson, ComGoogleGsonTypeAdapter *adapter) {
  NSObject_init(self);
  self->gson_ = gson;
  self->adapter_ = adapter;
}

Retrofit2ConverterGsonGsonRequestBodyConverter *new_Retrofit2ConverterGsonGsonRequestBodyConverter_initWithComGoogleGsonGson_withComGoogleGsonTypeAdapter_(ComGoogleGsonGson *gson, ComGoogleGsonTypeAdapter *adapter) {
  J2OBJC_NEW_IMPL(Retrofit2ConverterGsonGsonRequestBodyConverter, initWithComGoogleGsonGson_withComGoogleGsonTypeAdapter_, gson, adapter)
}

Retrofit2ConverterGsonGsonRequestBodyConverter *create_Retrofit2ConverterGsonGsonRequestBodyConverter_initWithComGoogleGsonGson_withComGoogleGsonTypeAdapter_(ComGoogleGsonGson *gson, ComGoogleGsonTypeAdapter *adapter) {
  J2OBJC_CREATE_IMPL(Retrofit2ConverterGsonGsonRequestBodyConverter, initWithComGoogleGsonGson_withComGoogleGsonTypeAdapter_, gson, adapter)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(Retrofit2ConverterGsonGsonRequestBodyConverter)
