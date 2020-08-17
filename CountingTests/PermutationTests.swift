//
//  PermutationTests.swift
//  CountingTests
//
//  Created by Amirreza Eghtedari on 5/24/1399 AP.
//  Copyright © 1399 AP Amirreza Eghtedari. All rights reserved.
//

import XCTest
@testable import Counting

class PermutationTests: XCTestCase {

    override func setUpWithError() throws {

    }

    override func tearDownWithError() throws {

    }

	func test_permute01() {
		
		let result = Permutation.permute(n: 3, r: 2)
		XCTAssert(result.count == 6)
	}

	func test_permute02() {
		
		let result1 = Permutation.permute(n: 5, r: 2)
		XCTAssert(result1.count == 20)
		
		let result2 = Permutation.permute(n: 5, r: 5)

		XCTAssert(result2.count == 120)
		
		let result3 = Permutation.permute(n: 4, r: 4)
		XCTAssert(result3.count == 24)
		
		let result4 = Permutation.permute(n: 4, r: 3)
		XCTAssert(result4.count == 24)
		
		let result5 = Permutation.permute(n: 10, r: 3)
		XCTAssert(result5.count == 720)
		
		let result6 = Permutation.permute(n: 10, r: 11)
		XCTAssert(result6.count == 0)
		
		let result7 = Permutation.permute(n: 1900, r: 1)
		XCTAssert(result7.count == 1900)
	}
}
