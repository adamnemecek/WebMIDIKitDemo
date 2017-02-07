import PackageDescription

let package = Package(
    name: "WebMIDIKitDemo",
    dependencies: [
      .Package(url: "https://github.com/adamnemecek/WebMIDIKit.git", majorVersion: 1)
    ]

)
