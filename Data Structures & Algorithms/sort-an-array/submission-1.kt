class Solution {
    fun sortArray(nums: IntArray): IntArray {
        val sortedArray = nums.copyOf()
        if (sortedArray.size <= 1) return sortedArray

        var leftIndex = 0
        var rightIndex = 0
        val pivot = sortedArray[sortedArray.size - 1]

        for (i in sortedArray.indices) {
            if (sortedArray[rightIndex] > pivot) {
                rightIndex++
            } else {
                val left = sortedArray[leftIndex]
                sortedArray[leftIndex] = sortedArray[rightIndex]
                sortedArray[rightIndex] = left
                rightIndex++
                leftIndex++
            }
        }

        return sortArray(sortedArray.copyOfRange(0, leftIndex - 1)) +
            intArrayOf(pivot) +
            sortArray(sortedArray.copyOfRange(leftIndex, sortedArray.size))
    }
}