import ProjectDescription

let project = Project(
    name: "ModularArchitecture_Example",
    targets: [
        .target(
            name: "ModularArchitecture_Example",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.ModularArchitecture-Example",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["ModularArchitecture_Example/Sources/**"],
            resources: ["ModularArchitecture_Example/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "ModularArchitecture_ExampleTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.ModularArchitecture-ExampleTests",
            infoPlist: .default,
            sources: ["ModularArchitecture_Example/Tests/**"],
            resources: [],
            dependencies: [.target(name: "ModularArchitecture_Example")]
        ),
    ]
)
