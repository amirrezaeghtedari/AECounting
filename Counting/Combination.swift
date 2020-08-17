//
//  Combination.swift
//  Counting
//
//  Created by Amirreza Eghtedari on 5/23/1399 AP.
//  Copyright © 1399 AP Amirreza Eghtedari. All rights reserved.
//

import Foundation

class Combination {
	
	static public func combine(n: Int, r: Int) -> [[Int]] {
		
		var a = [Int]()
		
		for i in 1...r {
			a.append(i)
		}
		
		var result = [a]
		
		while let next = combineNext(n: n, a: a) {
			result.append(next)
			a = next
		}
		
		return result
	}
	
	static private func combineNext(n: Int, a: [Int]) -> [Int]? {
		
		var a = a
		let r = a.count
		var i = a.count
		
		while a[i - 1] == n - r + i {
			
			i -= 1
			
			if i == 0 { return nil }
		}
		
		a[i - 1] += 1
		
		return a
	}
}
