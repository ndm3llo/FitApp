#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The "Starter" asset catalog image resource.
static NSString * const ACImageNameStarter AC_SWIFT_PRIVATE = @"Starter";

/// The "dumbell" asset catalog image resource.
static NSString * const ACImageNameDumbell AC_SWIFT_PRIVATE = @"dumbell";

/// The "dumbell2" asset catalog image resource.
static NSString * const ACImageNameDumbell2 AC_SWIFT_PRIVATE = @"dumbell2";

/// The "food" asset catalog image resource.
static NSString * const ACImageNameFood AC_SWIFT_PRIVATE = @"food";

/// The "letsee" asset catalog image resource.
static NSString * const ACImageNameLetsee AC_SWIFT_PRIVATE = @"letsee";

/// The "setting" asset catalog image resource.
static NSString * const ACImageNameSetting AC_SWIFT_PRIVATE = @"setting";

#undef AC_SWIFT_PRIVATE
