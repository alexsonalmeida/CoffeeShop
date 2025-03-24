import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ColorResource {

    /// The "Color-1" asset catalog color resource.
    static let color1 = DeveloperToolsSupport.ColorResource(name: "Color-1", bundle: resourceBundle)

    /// The "Color-2" asset catalog color resource.
    static let color2 = DeveloperToolsSupport.ColorResource(name: "Color-2", bundle: resourceBundle)

    /// The "Color-3" asset catalog color resource.
    static let color3 = DeveloperToolsSupport.ColorResource(name: "Color-3", bundle: resourceBundle)

    /// The "Color-4" asset catalog color resource.
    static let color4 = DeveloperToolsSupport.ColorResource(name: "Color-4", bundle: resourceBundle)

    /// The "Color-5" asset catalog color resource.
    static let color5 = DeveloperToolsSupport.ColorResource(name: "Color-5", bundle: resourceBundle)

    /// The "HomeGradiente-dark" asset catalog color resource.
    static let homeGradienteDark = DeveloperToolsSupport.ColorResource(name: "HomeGradiente-dark", bundle: resourceBundle)

    /// The "HomeGradiente-light" asset catalog color resource.
    static let homeGradienteLight = DeveloperToolsSupport.ColorResource(name: "HomeGradiente-light", bundle: resourceBundle)

}

// MARK: - Image Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ImageResource {

    /// The "Banner" asset catalog image resource.
    static let banner = DeveloperToolsSupport.ImageResource(name: "Banner", bundle: resourceBundle)

    /// The "Banner-home" asset catalog image resource.
    static let bannerHome = DeveloperToolsSupport.ImageResource(name: "Banner-home", bundle: resourceBundle)

    /// The "Coffee-FlatWhite" asset catalog image resource.
    static let coffeeFlatWhite = DeveloperToolsSupport.ImageResource(name: "Coffee-FlatWhite", bundle: resourceBundle)

    /// The "Coffee-Flower" asset catalog image resource.
    static let coffeeFlower = DeveloperToolsSupport.ImageResource(name: "Coffee-Flower", bundle: resourceBundle)

    /// The "Coffee-Heart" asset catalog image resource.
    static let coffeeHeart = DeveloperToolsSupport.ImageResource(name: "Coffee-Heart", bundle: resourceBundle)

    /// The "Coffee-Mocha" asset catalog image resource.
    static let coffeeMocha = DeveloperToolsSupport.ImageResource(name: "Coffee-Mocha", bundle: resourceBundle)

    /// The "Initial-Image" asset catalog image resource.
    static let initial = DeveloperToolsSupport.ImageResource(name: "Initial-Image", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

    /// The "Color-1" asset catalog color.
    static var color1: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .color1)
#else
        .init()
#endif
    }

    /// The "Color-2" asset catalog color.
    static var color2: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .color2)
#else
        .init()
#endif
    }

    /// The "Color-3" asset catalog color.
    static var color3: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .color3)
#else
        .init()
#endif
    }

    /// The "Color-4" asset catalog color.
    static var color4: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .color4)
#else
        .init()
#endif
    }

    /// The "Color-5" asset catalog color.
    static var color5: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .color5)
#else
        .init()
#endif
    }

    /// The "HomeGradiente-dark" asset catalog color.
    static var homeGradienteDark: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .homeGradienteDark)
#else
        .init()
#endif
    }

    /// The "HomeGradiente-light" asset catalog color.
    static var homeGradienteLight: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .homeGradienteLight)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    /// The "Color-1" asset catalog color.
    static var color1: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .color1)
#else
        .init()
#endif
    }

    /// The "Color-2" asset catalog color.
    static var color2: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .color2)
#else
        .init()
#endif
    }

    /// The "Color-3" asset catalog color.
    static var color3: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .color3)
#else
        .init()
#endif
    }

    /// The "Color-4" asset catalog color.
    static var color4: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .color4)
#else
        .init()
#endif
    }

    /// The "Color-5" asset catalog color.
    static var color5: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .color5)
#else
        .init()
#endif
    }

    /// The "HomeGradiente-dark" asset catalog color.
    static var homeGradienteDark: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .homeGradienteDark)
#else
        .init()
#endif
    }

    /// The "HomeGradiente-light" asset catalog color.
    static var homeGradienteLight: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .homeGradienteLight)
#else
        .init()
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    /// The "Color-1" asset catalog color.
    static var color1: SwiftUI.Color { .init(.color1) }

    /// The "Color-2" asset catalog color.
    static var color2: SwiftUI.Color { .init(.color2) }

    /// The "Color-3" asset catalog color.
    static var color3: SwiftUI.Color { .init(.color3) }

    /// The "Color-4" asset catalog color.
    static var color4: SwiftUI.Color { .init(.color4) }

    /// The "Color-5" asset catalog color.
    static var color5: SwiftUI.Color { .init(.color5) }

    /// The "HomeGradiente-dark" asset catalog color.
    static var homeGradienteDark: SwiftUI.Color { .init(.homeGradienteDark) }

    /// The "HomeGradiente-light" asset catalog color.
    static var homeGradienteLight: SwiftUI.Color { .init(.homeGradienteLight) }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    /// The "Color-1" asset catalog color.
    static var color1: SwiftUI.Color { .init(.color1) }

    /// The "Color-2" asset catalog color.
    static var color2: SwiftUI.Color { .init(.color2) }

    /// The "Color-3" asset catalog color.
    static var color3: SwiftUI.Color { .init(.color3) }

    /// The "Color-4" asset catalog color.
    static var color4: SwiftUI.Color { .init(.color4) }

    /// The "Color-5" asset catalog color.
    static var color5: SwiftUI.Color { .init(.color5) }

    /// The "HomeGradiente-dark" asset catalog color.
    static var homeGradienteDark: SwiftUI.Color { .init(.homeGradienteDark) }

    /// The "HomeGradiente-light" asset catalog color.
    static var homeGradienteLight: SwiftUI.Color { .init(.homeGradienteLight) }

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "Banner" asset catalog image.
    static var banner: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .banner)
#else
        .init()
#endif
    }

    /// The "Banner-home" asset catalog image.
    static var bannerHome: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .bannerHome)
#else
        .init()
#endif
    }

    /// The "Coffee-FlatWhite" asset catalog image.
    static var coffeeFlatWhite: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .coffeeFlatWhite)
#else
        .init()
#endif
    }

    /// The "Coffee-Flower" asset catalog image.
    static var coffeeFlower: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .coffeeFlower)
#else
        .init()
#endif
    }

    /// The "Coffee-Heart" asset catalog image.
    static var coffeeHeart: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .coffeeHeart)
#else
        .init()
#endif
    }

    /// The "Coffee-Mocha" asset catalog image.
    static var coffeeMocha: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .coffeeMocha)
#else
        .init()
#endif
    }

    /// The "Initial-Image" asset catalog image.
    static var initial: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .initial)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "Banner" asset catalog image.
    static var banner: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .banner)
#else
        .init()
#endif
    }

    /// The "Banner-home" asset catalog image.
    static var bannerHome: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .bannerHome)
#else
        .init()
#endif
    }

    /// The "Coffee-FlatWhite" asset catalog image.
    static var coffeeFlatWhite: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .coffeeFlatWhite)
#else
        .init()
#endif
    }

    /// The "Coffee-Flower" asset catalog image.
    static var coffeeFlower: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .coffeeFlower)
#else
        .init()
#endif
    }

    /// The "Coffee-Heart" asset catalog image.
    static var coffeeHeart: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .coffeeHeart)
#else
        .init()
#endif
    }

    /// The "Coffee-Mocha" asset catalog image.
    static var coffeeMocha: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .coffeeMocha)
#else
        .init()
#endif
    }

    /// The "Initial-Image" asset catalog image.
    static var initial: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .initial)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ColorResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ImageResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

