class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let set = Set(nums)
        var longest = 0

        for num in set {
            var temp = 0

            if !set.contains(num-1) {
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
        }

        return longest
    }
}
