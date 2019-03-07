import XCTest

extension AsyncOperationResultTests {
    static let __allTests = [
        ("testBasicErrorUsage", testBasicErrorUsage),
        ("testBasicSuccessUsage", testBasicSuccessUsage),
    ]
}

#if !os(macOS)
public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(AsyncOperationResultTests.__allTests),
    ]
}
#endif
