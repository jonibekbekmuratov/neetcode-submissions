class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = numbers.count-1

        while target != numbers[left]+numbers[right] {

            if numbers[left]+numbers[right] < target {
                left += 1
            } else {
                right -= 1
            }
        }

        return [left+1, right+1]
    }
}
