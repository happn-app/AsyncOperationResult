/*
 * AsyncOperationResult.swift
 * AsyncOperationResult
 *
 * Created by François Lamboley on 12/31/15.
 * Copyright © 2015 happn. All rights reserved.
 */

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
