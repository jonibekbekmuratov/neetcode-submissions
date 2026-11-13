# Definition for a pair.
# class Pair:
#     def __init__(self, key: int, value: str):
#         self.key = key
#         self.value = str
class Solution:
    def mergeSort(self, pairs: List[Pair]) -> List[Pair]:
        if len(pairs) <= 1:
            return pairs
        
        mid = len(pairs) // 2
        left = pairs[:mid]
        right = pairs[mid:]
        
        merge_left = self.mergeSort(left)
        merge_right = self.mergeSort(right)
        
        return self.merge(merge_left, merge_right)
    
    def merge(self, left: List[Pair], right: List[Pair]) -> List[Pair]:
        left_index = 0
        right_index = 0
        result = []
        
        while left_index < len(left) and right_index < len(right):
            if left[left_index].key <= right[right_index].key:
                result.append(left[left_index])
                left_index += 1
            else:
                result.append(right[right_index])
                right_index += 1
        
        if left_index != len(left):
            result.extend(left[left_index:])
        
        if right_index != len(right):
            result.extend(right[right_index:])
        
        return result