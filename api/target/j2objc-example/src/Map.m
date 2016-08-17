//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kamartin/Desktop/Spikes/j2Objc/travelbriefing-api/api/src/main/java/com/totsp/travelbriefing/model/Map.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "Map.h"
#include "SerializedName.h"
#include "com/google/common/base/MoreObjects.h"
#include "java/lang/annotation/Annotation.h"

@interface TOTSPMap () {
 @public
  NSString *lat_;
  NSString *lng_;
  NSString *zoom_;
}

@end

J2OBJC_FIELD_SETTER(TOTSPMap, lat_, NSString *)
J2OBJC_FIELD_SETTER(TOTSPMap, lng_, NSString *)
J2OBJC_FIELD_SETTER(TOTSPMap, zoom_, NSString *)

__attribute__((unused)) static IOSObjectArray *TOTSPMap__Annotations$0();

@implementation TOTSPMap

- (instancetype)initWithNSString:(NSString *)lat
                    withNSString:(NSString *)lng
                    withNSString:(NSString *)zoom {
  TOTSPMap_initWithNSString_withNSString_withNSString_(self, lat, lng, zoom);
  return self;
}

- (NSString *)getLat {
  return lat_;
}

- (void)setLatWithNSString:(NSString *)lat {
  self->lat_ = lat;
}

- (NSString *)getLng {
  return lng_;
}

- (void)setLngWithNSString:(NSString *)lng {
  self->lng_ = lng;
}

- (NSString *)getZoom {
  return zoom_;
}

- (void)setZoomWithNSString:(NSString *)zoom {
  self->zoom_ = zoom;
}

- (NSString *)description {
  return [((ComGoogleCommonBaseMoreObjects_ToStringHelper *) nil_chk([((ComGoogleCommonBaseMoreObjects_ToStringHelper *) nil_chk([((ComGoogleCommonBaseMoreObjects_ToStringHelper *) nil_chk([((ComGoogleCommonBaseMoreObjects_ToStringHelper *) nil_chk(ComGoogleCommonBaseMoreObjects_toStringHelperWithId_(self))) addWithNSString:@"lat" withId:lat_])) addWithNSString:@"lng" withId:lng_])) addWithNSString:@"zoom" withId:zoom_])) description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withNSString:withNSString:", NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { "getLat", "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { "setLatWithNSString:", "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { "getLng", "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { "setLngWithNSString:", "V", 0x1, 3, 2, -1, -1, -1, -1 },
    { "getZoom", "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { "setZoomWithNSString:", "V", 0x1, 4, 2, -1, -1, -1, -1 },
    { "description", "LNSString;", 0x1, 5, -1, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "lat_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "lng_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, 6 },
    { "zoom_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LNSString;LNSString;", "setLat", "LNSString;", "setLng", "setZoom", "toString", (void *)&TOTSPMap__Annotations$0 };
  static const J2ObjcClassInfo _TOTSPMap = { "Map", "com.totsp.travelbriefing.model", ptrTable, methods, fields, 7, 0x1, 8, 3, -1, -1, -1, -1, -1 };
  return &_TOTSPMap;
}

@end

void TOTSPMap_initWithNSString_withNSString_withNSString_(TOTSPMap *self, NSString *lat, NSString *lng, NSString *zoom) {
  NSObject_init(self);
  self->lat_ = lat;
  self->lng_ = lng;
  self->zoom_ = zoom;
}

TOTSPMap *new_TOTSPMap_initWithNSString_withNSString_withNSString_(NSString *lat, NSString *lng, NSString *zoom) {
  J2OBJC_NEW_IMPL(TOTSPMap, initWithNSString_withNSString_withNSString_, lat, lng, zoom)
}

TOTSPMap *create_TOTSPMap_initWithNSString_withNSString_withNSString_(NSString *lat, NSString *lng, NSString *zoom) {
  J2OBJC_CREATE_IMPL(TOTSPMap, initWithNSString_withNSString_withNSString_, lat, lng, zoom)
}

IOSObjectArray *TOTSPMap__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_ComGoogleGsonAnnotationsSerializedName([IOSObjectArray newArrayWithObjects:(id[]){  } count:0 type:NSObject_class_()], @"long") } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(TOTSPMap)