class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let merged = (nums1+nums2).sorted()
        let c = merged.count
        if c%2 == 1 {
            return Double(merged[c/2])
        } else {
            return Double(merged[c/2-1]+merged[c/2])/2.0
        }
    }
}
