//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kamartin/Desktop/Spikes/j2Objc/travelbriefing-api/api/src/main/java/com/totsp/travelbriefing/service/TravelBriefingService.java
//

#include "J2ObjC_source.h"
#include "Observable.h"
#include "TravelBriefingService.h"
#include "TravelBriefingServiceCache.h"
#include "TravelBriefingServiceCloud.h"
#include "java/io/PrintStream.h"
#include "java/lang/System.h"

@interface TOTSPTravelBriefingService () {
 @public
  TOTSPTravelBriefingServiceCache *travelBriefingServiceCache_;
  TOTSPTravelBriefingServiceCloud *travelBriefingServiceCloud_;
}

@end

J2OBJC_FIELD_SETTER(TOTSPTravelBriefingService, travelBriefingServiceCache_, TOTSPTravelBriefingServiceCache *)
J2OBJC_FIELD_SETTER(TOTSPTravelBriefingService, travelBriefingServiceCloud_, TOTSPTravelBriefingServiceCloud *)

@implementation TOTSPTravelBriefingService

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  TOTSPTravelBriefingService_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (RxObservable *)getCountries {
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:@"TravelBriefingService getCountries"];
  RxObservable *cachedData = [((TOTSPTravelBriefingServiceCache *) nil_chk(travelBriefingServiceCache_)) getCountries];
  RxObservable *cloudData = [((TOTSPTravelBriefingServiceCloud *) nil_chk(travelBriefingServiceCloud_)) getCountries];
  return [((RxObservable *) nil_chk(RxObservable_concatWithRxObservable_withRxObservable_(cachedData, cloudData))) first];
}

- (RxObservable *)getCountryWithNSString:(NSString *)countryName {
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$", @"TravelBriefingService getCountry:", countryName)];
  RxObservable *cachedData = [((TOTSPTravelBriefingServiceCache *) nil_chk(travelBriefingServiceCache_)) getCountryWithNSString:countryName];
  RxObservable *cloudData = [((TOTSPTravelBriefingServiceCloud *) nil_chk(travelBriefingServiceCloud_)) getCountryWithNSString:countryName];
  return [((RxObservable *) nil_chk(RxObservable_concatWithRxObservable_withRxObservable_(cachedData, cloudData))) first];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { "getCountries", "LRxObservable;", 0x1, -1, -1, -1, 0, -1, -1 },
    { "getCountryWithNSString:", "LRxObservable;", 0x1, 1, 2, -1, 3, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "travelBriefingServiceCache_", "LTOTSPTravelBriefingServiceCache;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "travelBriefingServiceCloud_", "LTOTSPTravelBriefingServiceCloud;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "()Lrx/Observable<Ljava/util/List<Lcom/totsp/travelbriefing/model/CountryListItem;>;>;", "getCountry", "LNSString;", "(Ljava/lang/String;)Lrx/Observable<Lcom/totsp/travelbriefing/model/Country;>;" };
  static const J2ObjcClassInfo _TOTSPTravelBriefingService = { "TravelBriefingService", "com.totsp.travelbriefing.service", ptrTable, methods, fields, 7, 0x1, 3, 2, -1, -1, -1, -1, -1 };
  return &_TOTSPTravelBriefingService;
}

@end

void TOTSPTravelBriefingService_init(TOTSPTravelBriefingService *self) {
  NSObject_init(self);
  self->travelBriefingServiceCache_ = new_TOTSPTravelBriefingServiceCache_init();
  self->travelBriefingServiceCloud_ = new_TOTSPTravelBriefingServiceCloud_init();
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:@"TravelBriefingService created"];
}

TOTSPTravelBriefingService *new_TOTSPTravelBriefingService_init() {
  J2OBJC_NEW_IMPL(TOTSPTravelBriefingService, init)
}

TOTSPTravelBriefingService *create_TOTSPTravelBriefingService_init() {
  J2OBJC_CREATE_IMPL(TOTSPTravelBriefingService, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(TOTSPTravelBriefingService)
