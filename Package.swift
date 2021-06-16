// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "Mixpanel",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "Mixpanel",
            targets: ["Mixpanel"]
        )
    ],
    targets: [
        .target(
            name: "Mixpanel",
            path: "Mixpanel",
            exclude: [
                "Images",
                "macos.modulemap",
                "tvos.modulemap",
                "watchos.modulemap",
                "MixpanelWatchProperties.h",
                "MixpanelWatchProperties.m",
                "snapshot_config.json",
                "test_variant.json"
            ],
            resources: [.process("Images")],
            publicHeadersPath: "Mixpanel/Mixpanel.h",
            linkerSettings: [.linkedFramework("UIKit")]
        )
    ]
)
