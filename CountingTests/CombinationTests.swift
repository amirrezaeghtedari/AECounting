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
        
		let result = Combination.combine(n: 3, r: 2)
		
		for i in result {
			print(i)
		}
    }

}
