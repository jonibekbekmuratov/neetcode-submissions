class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var dict = [Int: Int]()
        for (index, num) in nums.enumerated() {
            dict[num] = index
        }

        var res = Set<[Int]>()
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                let sum = nums[i]+nums[j]
                if let val = dict[-sum], val != i, val != j {
                    res.insert([nums[i], nums[j], -sum].sorted())
                }
            }
        }
        return Array(res)
    }
}
