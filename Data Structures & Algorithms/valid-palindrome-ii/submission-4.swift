class Solution {
    func validPalindrome(_ s: String) -> Bool {
        var hasUsedChance = false
        var left = s.startIndex
        var right = s.index(before: s.endIndex)
        // s="acdccba"
        while left < right {
            if s[left] == s[right] {
                left = s.index(after: left)
                right = s.index(before: right)
            } else {
                guard !hasUsedChance else { return false }
                hasUsedChance = true
                let right2 = s.index(before: right)
                let left2 = s.index(after: left)
                if s[left] == s[right2] && s[left2] == s[right] {
                    return isPalindrome(s, left, right2) || isPalindrome(s, left2, right)
                } else {
                    if s[left] == s[right2] {
                        right = right2
                    } else if s[left2] == s[right] {
                        left = left2
                    } else {
                        return false
                    }
                }
            }
        }

        func isPalindrome(_ s: String, _ l: String.Index, _ r: String.Index) -> Bool {
            var left = l
            var right = r

            while left < right {
                guard s[left] == s[right] else { return false }
                left = s.index(after: left)
                right = s.index(before: right)
            }

            return true
        }

        return true
    }
}
