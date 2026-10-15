// swift-tools-version: 5.7
import PackageDescription
let package = Package(
    name: "SamplabUrlTools",
    products: [.library(name: "SamplabUrlTools", targets: ["SamplabUrlTools"])],
    targets: [.target(name: "SamplabUrlTools", path: "swift/Sources/SamplabUrlTools")]
)
