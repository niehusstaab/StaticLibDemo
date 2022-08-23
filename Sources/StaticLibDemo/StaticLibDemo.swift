public struct StaticLibDemo {
    public private(set) var text = "Hello, World!"

    /// Read data from the sample.json resource which SHOULD be included in this package
    public func getResource() -> [String: String?] {
        let url = Bundle.module.url(forResource: "sample", withExtension: "json")!
        let data = try! Data(contentsOf: url, options: .mappedIfSafe)
        let decoded = try! JSONDecoder().decode([String: String].self, from: data)
        return decoded
    }

    public init() {
    }
}
