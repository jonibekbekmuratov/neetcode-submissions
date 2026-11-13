class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        var res = Set<[Int]>()
        var dict = [Int: Int]()
        for (index,num) in nums.enumerated() {
            dict[num] = index
        }

        for a in 0..<nums.count {
            for b in a+1..<nums.count {
                for c in b+1..<nums.count {
                    let sum = nums[a]+nums[b]+nums[c]
                    if let index = dict[target-sum], Set([a,b,c,index]).count == 4 {
                        res.insert([nums[a], nums[b], nums[c], target-sum].sorted())
                    }
                }
            }
        }
        return Array(res)
    }
}
