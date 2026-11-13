class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var res = Set<([Int])>()
        var dict = [Int: Int]()

        for (index, num) in nums.enumerated() {
            dict[num] = index
        }
        
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                let sum = nums[i]+nums[j]
                var key = sum > 0 ? 0-sum : -sum
                if let val = dict[key], val != i, val != j {
                    res.insert([nums[i], nums[j], key].sorted())
                }
            }
        }
        return res.map { Array($0) }
    }
}