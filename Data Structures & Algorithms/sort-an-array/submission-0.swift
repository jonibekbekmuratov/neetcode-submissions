class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        var sortedArray = nums
        if sortedArray.count <= 1 { return sortedArray }

        var leftIndex = 0
        var rightIndex = 0
        var pivot = sortedArray[sortedArray.count-1]

        for _ in sortedArray {
            if sortedArray[rightIndex] > pivot {
                rightIndex += 1
            } else {
                var left = sortedArray[leftIndex]
                sortedArray[leftIndex] = sortedArray[rightIndex]
                sortedArray[rightIndex] = left
                rightIndex += 1
                leftIndex += 1
            }
        }

        return sortArray(Array(sortedArray[0..<leftIndex-1])) + [pivot] + sortArray(Array(sortedArray[leftIndex...]))
    }
}
