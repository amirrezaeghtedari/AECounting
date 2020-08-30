//
//  PermutationRepetition.swift
//  Counting
//
//  Created by Amirreza Eghtedari on 5/23/1399 AP.
//  Copyright © 1399 AP Amirreza Eghtedari. All rights reserved.
//

import Foundation

class PermutationRepetition {

	public static func permuteRepetition(n: Int, r: Int) -> [[Int]] {
		
		var source = Array.init(repeating: 1, count: r)
		
		var result	= [[Int]]()
		result.append(source)
		
		while let next = permuteNext(n: n, a: source) {
			
			source = next
			result.append(source)
		}
		
		return result
	}
	
	private static func permuteNext(n: Int, a: [Int]) -> [Int]? {
		
		var source = a
		
		for i in (0..<a.count).reversed() {
			
			if source[i] < n {
				
				source[i] += 1
				
				var j = i + 1
				while j < a.count {
					source[j] = 1
					j += 1
				}
				
				return source
			}
		}
		
		return nil
	}
}
