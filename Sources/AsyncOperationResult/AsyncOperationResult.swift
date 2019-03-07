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

import Foundation



public enum AsyncOperationResult<T> {
	
	case success(T)
	case error(Error)
	
	public var successValue: T? {
		switch self {
		case .success(let s): return s
		case _:               return nil
		}
	}
	
	public func successValueOrThrow() throws -> T {
		switch self {
		case .success(let v): return v
		case .error(let e): throw e
		}
	}
	
	public var error: Error? {
		switch self {
		case .error(let e): return e
		case _:             return nil
		}
	}
	
	public var isSuccessful: Bool {
		switch self {
		case .success: return true
		case .error:   return false
		}
	}
	
}


public func AORError<T>(domain: String, code: Int, userInfo: [String: Any]?) -> AsyncOperationResult<T> {
	return .error(NSError(domain: domain, code: code, userInfo: userInfo))
}
