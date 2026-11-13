class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var ans = nums
        for i in nums {
            ans.append(i)
        }
        return ans
    }
}
