class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var dict = [Int: Int]()
        for num in nums {
            dict[num, default: 0] += 1
            if let count = dict[num], count > nums.count/2 {
                return num
            }
        }
        return nums[0]
    }
}
