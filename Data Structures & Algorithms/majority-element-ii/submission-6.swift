class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        var dict = [Int: Int]()

        for num in nums {
            if let count = dict[num] {
                dict[num] = count+1
            } else if dict.count < 2 {
                dict[num] = 1
            } else {
                dict = dict.compactMapValues { 
                    $0 > 1 ? $0 - 1 : nil
                }
            }
        }

        var res = [Int]()

        for key in dict.keys {
            if nums.filter{ $0 == key }.count > nums.count/3 {
                res.append(key)
            }
        }

        return res
    }
}
