//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kamartin/Desktop/Spikes/j2Objc/travelbriefing-api/api/src/main/java/com/totsp/travelbriefing/model/Telephone.java
//

#include "J2ObjC_source.h"
#include "Telephone.h"
#include "com/google/common/base/MoreObjects.h"

@interface TOTSPTelephone () {
 @public
  NSString *callingCode_;
  NSString *police_;
  NSString *ambulance_;
  NSString *fire_;
}

@end

J2OBJC_FIELD_SETTER(TOTSPTelephone, callingCode_, NSString *)
J2OBJC_FIELD_SETTER(TOTSPTelephone, police_, NSString *)
J2OBJC_FIELD_SETTER(TOTSPTelephone, ambulance_, NSString *)
J2OBJC_FIELD_SETTER(TOTSPTelephone, fire_, NSString *)

@implementation TOTSPTelephone

- (instancetype)initWithNSString:(NSString *)callingCode
                    withNSString:(NSString *)police
                    withNSString:(NSString *)ambulance
                    withNSString:(NSString *)fire {
  TOTSPTelephone_initWithNSString_withNSString_withNSString_withNSString_(self, callingCode, police, ambulance, fire);
  return self;
}

- (NSString *)getCallingCode {
  return callingCode_;
}

- (void)setCallingCodeWithNSString:(NSString *)callingCode {
  self->callingCode_ = callingCode;
}

- (NSString *)getPolice {
  return police_;
}

- (void)setPoliceWithNSString:(NSString *)police {
  self->police_ = police;
}

- (NSString *)getAmbulance {
  return ambulance_;
}

- (void)setAmbulanceWithNSString:(NSString *)ambulance {
  self->ambulance_ = ambulance;
}

- (NSString *)getFire {
  return fire_;
}

- (void)setFireWithNSString:(NSString *)fire {
  self->fire_ = fire;
}

- (NSString *)description {
  return [((ComGoogleCommonBaseMoreObjects_ToStringHelper *) nil_chk([((ComGoogleCommonBaseMoreObjects_ToStringHelper *) nil_chk([((ComGoogleCommonBaseMoreObjects_ToStringHelper *) nil_chk([((ComGoogleCommonBaseMoreObjects_ToStringHelper *) nil_chk([((ComGoogleCommonBaseMoreObjects_ToStringHelper *) nil_chk(ComGoogleCommonBaseMoreObjects_toStringHelperWithId_(self))) addWithNSString:@"callingCode" withId:JreStrcat("$C", callingCode_, 0x000a)])) addWithNSString:@"police" withId:JreStrcat("$C", police_, 0x000a)])) addWithNSString:@"ambulance" withId:JreStrcat("$C", ambulance_, 0x000a)])) addWithNSString:@"fire" withId:JreStrcat("$C", fire_, 0x000a)])) description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withNSString:withNSString:withNSString:", NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { "getCallingCode", "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { "setCallingCodeWithNSString:", "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { "getPolice", "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { "setPoliceWithNSString:", "V", 0x1, 3, 2, -1, -1, -1, -1 },
    { "getAmbulance", "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { "setAmbulanceWithNSString:", "V", 0x1, 4, 2, -1, -1, -1, -1 },
    { "getFire", "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { "setFireWithNSString:", "V", 0x1, 5, 2, -1, -1, -1, -1 },
    { "description", "LNSString;", 0x1, 6, -1, -1, -1, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "callingCode_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "police_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "ambulance_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "fire_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LNSString;LNSString;LNSString;", "setCallingCode", "LNSString;", "setPolice", "setAmbulance", "setFire", "toString" };
  static const J2ObjcClassInfo _TOTSPTelephone = { "Telephone", "com.totsp.travelbriefing.model", ptrTable, methods, fields, 7, 0x1, 10, 4, -1, -1, -1, -1, -1 };
  return &_TOTSPTelephone;
}

@end

void TOTSPTelephone_initWithNSString_withNSString_withNSString_withNSString_(TOTSPTelephone *self, NSString *callingCode, NSString *police, NSString *ambulance, NSString *fire) {
  NSObject_init(self);
  self->callingCode_ = callingCode;
  self->police_ = police;
  self->ambulance_ = ambulance;
  self->fire_ = fire;
}

TOTSPTelephone *new_TOTSPTelephone_initWithNSString_withNSString_withNSString_withNSString_(NSString *callingCode, NSString *police, NSString *ambulance, NSString *fire) {
  J2OBJC_NEW_IMPL(TOTSPTelephone, initWithNSString_withNSString_withNSString_withNSString_, callingCode, police, ambulance, fire)
}

TOTSPTelephone *create_TOTSPTelephone_initWithNSString_withNSString_withNSString_withNSString_(NSString *callingCode, NSString *police, NSString *ambulance, NSString *fire) {
  J2OBJC_CREATE_IMPL(TOTSPTelephone, initWithNSString_withNSString_withNSString_withNSString_, callingCode, police, ambulance, fire)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(TOTSPTelephone)