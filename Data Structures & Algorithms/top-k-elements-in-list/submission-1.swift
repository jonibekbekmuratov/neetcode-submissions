class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict = [Int: Int]()
        for num in nums {
            dict[num, default: 0] += 1
        }

        var countArray = [[Int]](repeating: [], count: nums.count+1)
        for (key, val) in dict {
            countArray[val] = countArray[val] + [key]
        }

        var res = [Int]()
        for i in stride(from: nums.count, to: 0, by: -1) {
            guard res.count < k else { break }
            if !countArray[i].isEmpty {
                res.append(contentsOf: countArray[i])
            }
        }

        return res
    }
}
