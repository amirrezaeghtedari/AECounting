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

    func test_permuteNext() throws {
	
		let a1 = [1, 2, 3, 4]
		let spares1 = [5, 6]
		if let result1 = Permutation.permuteNext(a: a1, spares: spares1) {
			
			XCTAssert(result1.0 == [1, 2, 3, 5])
			XCTAssert(result1.1 == [4, 6])
		
		} else {
			
			XCTFail()
		}
		
		
		
		let a2 = [1, 2, 6, 5]
		let spares2 = [3, 4]
		
		if let result2 = Permutation.permuteNext(a: a2, spares: spares2) {
			
			XCTAssert(result2.0 == [1, 3, 2, 4])
			XCTAssert(result2.1 == [5, 6])
		
		} else {
			
			XCTFail()
		}
	}

	func test_permute01() {
		
		let result = Permutation.permute(n: 3, r: 2)
		XCTAssert(result.count == 6)
	}

	func test_permute02() {
		
		let result = Permutation.permute(n: 5, r: 2)
		print("Result1 count:", result.count)

		XCTAssert(result.count == 20)
		
		let result2 = Permutation.permute(n: 5, r: 5)
		print("Result2 count:", result2.count)

		XCTAssert(result2.count == 120)
		
		let result3 = Permutation.permute(n: 4, r: 4)
		print("result 3 count:", result3.count)
		XCTAssert(result3.count == 24)
		
		let result4 = Permutation.permute(n: 4, r: 3)
		print("result 4 count:", result4.count)
		XCTAssert(result4.count == 24)
	}
}
