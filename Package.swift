///////////////////////////////////////////////////////////////////////////////////////
//THIS IS MADE BY LAI HONG YU IN SSTINC//
//THIS IS MADE BY LAI HONG YU IN SSTINC//
//THIS IS MADE BY LAI HONG YU IN SSTINC//
//THIS IS MADE BY LAI HONG YU IN SSTINC//
//THIS IS MADE BY LAI HONG YU IN SSTINC//
//THIS IS MADE BY LAI HONG YU IN SSTINC//
///////////////////////////////////////////////////////////////////////////////////////

import PackageDescription

let package = Package(
    name: "DataSave",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DataSave",
            targets: ["DataSave"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "DataSave"),

    ]
)
