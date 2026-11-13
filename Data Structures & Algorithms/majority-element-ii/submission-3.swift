class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        guard nums.count > 2 else { return Array(Set(nums)) }
        var dict = [Int: Int]()

        for num in nums {
            if let count = dict[num] {
                dict[num] = count+1
            } else if dict.count < 3 {
                dict[num] = 1
            } else {
                dict.compactMapValues { 
                    $0 > 1 ? $0 - 1 : nil
                }
            }
        }

        var res = [Int]()

        for (key, value) in dict {
            if value > nums.count/3 {
                res.append(key)
            }
        }

        return res
    }
}
