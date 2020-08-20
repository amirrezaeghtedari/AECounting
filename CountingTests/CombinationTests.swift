//
//  CombinationTests.swift
//  AECountingTests
//
//  Created by Amirreza Eghtedari on 5/30/1399 AP.
//  Copyright © 1399 AP Amirreza Eghtedari. All rights reserved.
//

import XCTest
@testable import AECounting

class CombinationTests: XCTestCase {

    override func setUpWithError() throws {

    }

    override func tearDownWithError() throws {
        
    }

    func test_combination() throws {
        
		let result1 = Combination.combine(n: 3, r: 2)
		XCTAssert(result1.count == 3)
		
		let result2 = Combination.combine(n: 4, r: 3)
		print(result2.count)
		XCTAssert(result2.count == 4)
		
		let result3 = Combination.combine(n: 3, r: 3)
		print(result3.count)
		XCTAssert(result3.count == 1)
		
		let result4 = Combination.combine(n: 7, r: 3)
		print(result4.count)
		XCTAssert(result4.count == 35)
		
		let result5 = Combination.combine(n: 10, r: 4)
		print(result5.count)
		XCTAssert(result5.count == 210)
		
		let result6 = Combination.combine(n: 9, r: 5)
		print(result6.count)
		XCTAssert(result6.count == 126)
		
		let result7 = Combination.combine(n: 0, r: 5)
		print(result7.count)
		XCTAssert(result7.count == 0)
		
		let result8 = Combination.combine(n: 9, r: 0)
		print(result8.count)
		XCTAssert(result8.count == 0)
    }

}
