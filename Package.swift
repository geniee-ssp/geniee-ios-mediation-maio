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
            url: "https://github.com/unigeniee/geniee-ios-mediation-maio/releases/download/2.2.100/GenieeMediationMaio.2.2.1.0.zip",
            checksum: "8697224ca775ea5e5f1ad6288bd1b26149fb8e1a97d6b5d7980d4516b02c647a"
        )
    ]
)
