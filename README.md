# AECounting
This is a framework developed in Swift for calculating permutation and combination, with and without repetition, based on lexicographic order technique. For example, for calculating permutations of 3 items out of 5 items, we need to call Permutation.permute(n: 5, r: 3). The result would be an array of Int arrays same as bellow:
[
[1, 2, 3],
[1, 2, 4],
[1, 2, 5],
[1, 3, 4],
...
[5, 4, 3]
]

The Int values in the result can be assigned to the real-world problem items respectively.

## Functions
* public static func permute(n: Int, r: Int) -> [[Int]]
* public static func permuteRepetition(n: Int, r: Int) -> [[Int]]
* public static func combine(n: Int, r: Int) -> [[Int]]
* public static func combineRepetition(n: Int, r: Int) -> [[Int]]


