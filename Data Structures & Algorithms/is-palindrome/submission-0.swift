class Solution {
    func isPalindrome(_ s: String) -> Bool {
        func isAlphanumeric(_ char: Character) -> Bool {
            char.isLetter || char.isNumber
        }
        
        var left = s.startIndex
        var right = s.index(before: s.endIndex)

        while left < right {
            if !isAlphanumeric(s[right]) {
                right = s.index(before: right)
            } else if !isAlphanumeric(s[left]) {
                left = s.index(after: left)
            } else {
                if s[left].lowercased() != s[right].lowercased() {
                    return false
                }
                left = s.index(after: left)
                right = s.index(before: right)
            }
        }

        return true
    }
}
