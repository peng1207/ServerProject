// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ServerProject",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        //HTTPServer
        .package(url: "https://github.com/PerfectlySoft/Perfect-HTTPServer.git", from: "3.0.0"),
        
        //        //Request请求日志过滤器
        //        .package(url: "https://github.com/dabfleming/Perfect-RequestLogger.git",
        //                 from: "3.0.0"),
        //
        //        //将日志写入指定文件
        .package(url: "https://github.com/PerfectlySoft/Perfect-Logger.git",
                 from: "3.0.0"),
        
        //MySql数据库依赖包
        .package(url: "https://github.com/PerfectlySoft/Perfect-MySQL.git", from: "3.0.0"),
        .package(url: "https://github.com/SwiftORM/StORM.git", from: "3.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "ServerProject",
            dependencies: ["PerfectHTTPServer","PerfectLogger","PerfectMySQL","StORM"]),
        .testTarget(
            name: "ServerProjectTests",
            dependencies: ["ServerProject"]),
    ]
)
