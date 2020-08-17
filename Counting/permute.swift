//
//  permute.swift
//  Permutation
//
//  Created by Amirreza Eghtedari on 5/18/1399 AP.
//  Copyright © 1399 AP Amirreza Eghtedari. All rights reserved.
//

import Foundation

private func permuteNext(a: [Int]) -> [Int]? {
	
	var a = a
	let lastIndex = a.count - 1
	
	var j = lastIndex - 1
	
	while a[j] > a[j + 1] {
		
		j -= 1
		
		guard j >= 0 else {
			return nil
		}
	}
	
	var k = lastIndex
	while a[j] > a[k] {
		k -= 1
	}
	
	a.swapAt(j, k)
	
	var r = lastIndex
	var s = j + 1
	
	while r > s {
		a.swapAt(r, s)
		r -= 1
		s += 1
	}
	
	return a
}

public func permute(a: Int, r: Int) -> Set<[Int]> {
	
	var source = [Int]()
	var store = [[Int]]()
	
	for i in 0..<a {
		source.append(i)
	}
	
	store.append(source)
	var next: [Int]? = nil
	
	repeat {
		
		next = permuteNext(a: source)
		if let next = next {
			store.append(next)
			source = next
		}
		
	} while next != nil
	
	var result = Set<[Int]>()
	
	for item in store {
		
		let prefix = item.prefix(r)
		result.insert(Array(prefix))
	}
	
	return result
}
