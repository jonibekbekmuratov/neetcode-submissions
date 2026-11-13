class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var l = 0
        var r = heights.count-1
        var res = 0

        while l < r {
            res = max(min(heights[l], heights[r])*(r-l), res)
            // if heights[l+1] > heights[l] {
            //     l += 1
            //     continue
            // }

            // if heights[r-1] > heights[r] {
            //     r -= 1
            //     continue
            // }

            if heights[l] < heights[r] {
                l += 1
            } else {
                r -= 1
            }
        }

        return res
    }
}
