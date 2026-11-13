class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var set = Set<Int>()
        var array: [Int] = []

        for num in nums {
            set.insert(num)
        }

        // add starting sequence
        for num in set {
            if !set.contains(num-1) {
                // start points
                array.append(num)
            }
        }

        var longest = 0
        var temp = 0

        for num in array {
            var greatest = num
            while set.contains(greatest) {
                greatest += 1
                temp += 1
            }
            if temp >= longest {
                longest = temp
            }

            temp = 0
        }

        return longest
    }
}
