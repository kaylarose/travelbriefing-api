//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kamartin/Desktop/Spikes/j2Objc/travelbriefing-api/api/src/main/java/com/totsp/travelbriefing/model/Vaccination.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_Vaccination")
#ifdef RESTRICT_Vaccination
#define INCLUDE_ALL_Vaccination 0
#else
#define INCLUDE_ALL_Vaccination 1
#endif
#undef RESTRICT_Vaccination

#if !defined (TOTSPVaccination_) && (INCLUDE_ALL_Vaccination || defined(INCLUDE_TOTSPVaccination))
#define TOTSPVaccination_

@interface TOTSPVaccination : NSObject

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)name
                    withNSString:(NSString *)message;

- (NSString *)getMessage;

- (NSString *)getName;

- (void)setMessageWithNSString:(NSString *)message;

- (void)setNameWithNSString:(NSString *)name;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(TOTSPVaccination)

FOUNDATION_EXPORT void TOTSPVaccination_initWithNSString_withNSString_(TOTSPVaccination *self, NSString *name, NSString *message);

FOUNDATION_EXPORT TOTSPVaccination *new_TOTSPVaccination_initWithNSString_withNSString_(NSString *name, NSString *message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT TOTSPVaccination *create_TOTSPVaccination_initWithNSString_withNSString_(NSString *name, NSString *message);

J2OBJC_TYPE_LITERAL_HEADER(TOTSPVaccination)

@compatibility_alias ComTotspTravelbriefingModelVaccination TOTSPVaccination;

#endif

#pragma pop_macro("INCLUDE_ALL_Vaccination")