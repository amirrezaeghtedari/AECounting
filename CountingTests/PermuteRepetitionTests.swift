//
//  CountingTests.swift
//  CountingTests
//
//  Created by Amirreza Eghtedari on 5/23/1399 AP.
//  Copyright © 1399 AP Amirreza Eghtedari. All rights reserved.
//

import XCTest
@testable import Counting

class PermuteRepetitionTests: XCTestCase {

    override func setUpWithError() throws {

    }

    override func tearDownWithError() throws {

    }

    func testExample() throws {
        
		let result = PermutationRepetition.permuteRepetition(n: 5, r: 4)
		for i in result {
			print(i)
		}
		XCTAssert(result.count == 256)
    }
}
