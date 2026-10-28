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
            url: "https://github.com/geniee-ssp/swift-package-manager-geniee-ios-sdk.git",
            from: "8.5.1"
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
            url: "https://github.com/geniee-ssp/geniee-ios-mediation-maio/releases/download/2.2.102/GenieeMediationMaio.2.2.1.2.zip",
            checksum: "9e27fdf5c042b03231131bc64fcb740ee4bdb599ae12fe5be13990f96d798b06"
        )
    ]
)
