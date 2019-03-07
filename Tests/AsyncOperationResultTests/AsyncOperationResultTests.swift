/*
Copyright 2019 happn

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License. */

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
	
}
