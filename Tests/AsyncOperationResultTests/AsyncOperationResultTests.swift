import XCTest
@testable import AsyncOperationResult



class AsyncOperationResultTests: XCTestCase {
	
	func testBasicSuccessUsage() {
		let str = "fetched string"
		let success = AsyncOperationResult.success(str)
		XCTAssertTrue(success.isSuccessful)
		XCTAssertEqual(success.successValue, str)
		XCTAssertEqual(try success.successValueOrThrow(), str)
		XCTAssertNil(success.error)
	}
	
	func testBasicErrorUsage() {
		let error = NSError(domain: "test domain", code: 1, userInfo: nil)
		let success = AsyncOperationResult<Void>.error(error)
		XCTAssertFalse(success.isSuccessful)
		XCTAssertNil(success.successValue)
		XCTAssertEqual(success.error as NSError?, error)
		XCTAssertThrowsError(try success.successValueOrThrow())
	}
	
	
	/* Fill this array with all the tests to have Linux testing compatibility. */
	static var allTests = [
		("testBasicSuccessUsage", testBasicSuccessUsage),
		("testBasicErrorUsage", testBasicErrorUsage)
	]
	
}
