#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The resource bundle ID.
static NSString * const ACBundleID AC_SWIFT_PRIVATE = @"test.Exemple";

/// The "Color-1" asset catalog color resource.
static NSString * const ACColorNameColor1 AC_SWIFT_PRIVATE = @"Color-1";

/// The "Color-2" asset catalog color resource.
static NSString * const ACColorNameColor2 AC_SWIFT_PRIVATE = @"Color-2";

/// The "Color-3" asset catalog color resource.
static NSString * const ACColorNameColor3 AC_SWIFT_PRIVATE = @"Color-3";

/// The "Color-4" asset catalog color resource.
static NSString * const ACColorNameColor4 AC_SWIFT_PRIVATE = @"Color-4";

/// The "Color-5" asset catalog color resource.
static NSString * const ACColorNameColor5 AC_SWIFT_PRIVATE = @"Color-5";

/// The "HomeGradiente-dark" asset catalog color resource.
static NSString * const ACColorNameHomeGradienteDark AC_SWIFT_PRIVATE = @"HomeGradiente-dark";

/// The "HomeGradiente-light" asset catalog color resource.
static NSString * const ACColorNameHomeGradienteLight AC_SWIFT_PRIVATE = @"HomeGradiente-light";

/// The "Banner" asset catalog image resource.
static NSString * const ACImageNameBanner AC_SWIFT_PRIVATE = @"Banner";

/// The "Banner-home" asset catalog image resource.
static NSString * const ACImageNameBannerHome AC_SWIFT_PRIVATE = @"Banner-home";

/// The "Coffee-FlatWhite" asset catalog image resource.
static NSString * const ACImageNameCoffeeFlatWhite AC_SWIFT_PRIVATE = @"Coffee-FlatWhite";

/// The "Coffee-Flower" asset catalog image resource.
static NSString * const ACImageNameCoffeeFlower AC_SWIFT_PRIVATE = @"Coffee-Flower";

/// The "Coffee-Heart" asset catalog image resource.
static NSString * const ACImageNameCoffeeHeart AC_SWIFT_PRIVATE = @"Coffee-Heart";

/// The "Coffee-Mocha" asset catalog image resource.
static NSString * const ACImageNameCoffeeMocha AC_SWIFT_PRIVATE = @"Coffee-Mocha";

/// The "Initial-Image" asset catalog image resource.
static NSString * const ACImageNameInitialImage AC_SWIFT_PRIVATE = @"Initial-Image";

#undef AC_SWIFT_PRIVATE
