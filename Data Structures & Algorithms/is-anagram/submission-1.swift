class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        // 0. Checking for equality of strings
        // 1. Dictiorany to store first strings characted amounts
        // 2. For loop iteration: racecar -> [r: 2, a: 2, c: 2, e:1]
        // 3. reducing the character's amount -1 by looping second string: t
        // 4. carrace -> -1 -> [r: 2, a: 2, c: 1, e: 1] return false 
        // 5. return true

        // s="xx"
        // t="x"
        var dict: [Character: Int] = [:]

        for char in s {
            dict[char, default: 0] += 1
        }

        for char in t {
            if let count = dict[char], count > 0 {
                dict[char] = count - 1
            } else {
                return false
            }
        }

        return true
    }
}
