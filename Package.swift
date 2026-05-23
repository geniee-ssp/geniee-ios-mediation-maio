// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GenieeMediationMaio",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "GenieeMediationMaio",
            targets: ["GenieeMediationMaioTarget"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/unigeniee/swift-package-manager-geniee-ios-sdk.git",
            from: "8.4.3"
        ),
        .package(
            url: "https://github.com/imobile/MaioSDK-v2-iOS.git",
            exact: "2.2.1"
        )
    ],
    targets: [
        .target(
            name: "GenieeMediationMaioTarget",
            dependencies: [
                "GenieeMediationMaio",
                .product(name: "GNAdSDK", package: "swift-package-manager-geniee-ios-sdk"),
                .product(name: "MaioSDK", package: "MaioSDK-v2-iOS")
            ],
            path: "Sources/GenieeMediationMaioTarget"
        ),
        .binaryTarget(
            name: "GenieeMediationMaio",
            url: "https://github.com/unigeniee/geniee-ios-mediation-maio/releases/download/8.3.101/GenieeMediationMaio.8.3.1.1.zip",
            checksum: "64263d6ec23b9ee68457401271a22bb64f928097d71f5464caaf726a830eab9e"
        )
    ]
)
