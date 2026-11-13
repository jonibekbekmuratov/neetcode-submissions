class Solution {
    func isValid(_ s: String) -> Bool {
        var dict: [Character: Character] = ["(": ")", "[": "]", "{": "}"]
        var res = [Character]()

        for char in s {
            if let value = dict[char] {
                res.append(value)
            } else if res.last == char {
                res.removeLast()
            } else {
                return false
            }
        }

        return res.isEmpty
    }
}
