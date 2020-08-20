//
//  CombineRepetitionTests.swift
//  AECountingTests
//
//  Created by Amirreza Eghtedari on 5/30/1399 AP.
//  Copyright © 1399 AP Amirreza Eghtedari. All rights reserved.
//

import XCTest
@testable import AECounting

class CombineRepetitionTests: XCTestCase {

    override func setUpWithError() throws {

    }

    override func tearDownWithError() throws {

    }
	
	func test_combineNext() throws {
		
		let result = CombinationRepetition.combineNext(n: 3, a: [2, 3, 3])
		print(result)
	}

    func test_combineRepetition() throws {
        
		let result = CombinationRepetition.combineRepetition(n: 3, r: 3)
		XCTAssert(result.count == 10)
		
		let result1 = CombinationRepetition.combineRepetition(n: 5, r: 3)
		XCTAssert(result1.count == 35)
		
		let result2 = CombinationRepetition.combineRepetition(n: 3, r: 5)
		XCTAssert(result2.count == 21)
		
		let result3 = CombinationRepetition.combineRepetition(n: 5, r: 0)
		XCTAssert(result3.count == 0)
		
		let result4 = CombinationRepetition.combineRepetition(n: 0, r: 0)
		XCTAssert(result4.count == 0)
    }
}
