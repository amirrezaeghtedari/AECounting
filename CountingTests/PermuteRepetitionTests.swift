//
//  CountingTests.swift
//  CountingTests
//
//  Created by Amirreza Eghtedari on 5/23/1399 AP.
//  Copyright © 1399 AP Amirreza Eghtedari. All rights reserved.
//

import XCTest
@testable import AECounting

class PermuteRepetitionTests: XCTestCase {

    override func setUpWithError() throws {

    }

    override func tearDownWithError() throws {

    }

    func testExample() throws {
        
		let result1 = PermutationRepetition.permuteRepetition(n: 5, r: 4)
		XCTAssert(result1.count == 625)

		let result2 = PermutationRepetition.permuteRepetition(n: 2, r: 2)
		XCTAssertEqual(result2.count, 4)
		
		let result3 = PermutationRepetition.permuteRepetition(n: 2, r: 3)
		XCTAssertEqual(result3.count, 8)
		
		let result4 = PermutationRepetition.permuteRepetition(n: 4, r: 3)
		XCTAssertEqual(result4.count, 64)
    }
}
