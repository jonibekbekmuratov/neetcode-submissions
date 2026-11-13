class Solution {
    func reverseString(_ s: inout [Character]) {
        var high = s.count-1
        for low in s.indices {
            guard high >= low else { break }
            var temp = s[low]
            s[low] = s[high]
            s[high] = temp
            high -= 1
        }
    }
}
