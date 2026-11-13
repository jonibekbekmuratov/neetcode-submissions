# Definition for a pair.
# class Pair:
#     def __init__(self, key: int, value: str):
#         self.key = key
#         self.value = value
class Solution:
    def insertionSort(self, pairs: List[Pair]) -> List[List[Pair]]:
        # Store snapshots of the array at each step
        result = []
        
        # Initial state
        result.append(pairs[:])
        
        if len(pairs) < 1:
            return pairs
        
        left = 0
        right = 1
        
        for _ in range(len(pairs) - 1):
            while left >= 0 and pairs[left + 1].key < pairs[left].key:
                # Swap elements
                temp = pairs[left + 1]
                pairs[left + 1] = pairs[left]
                pairs[left] = temp
                left -= 1
            
            right += 1
            left = right - 1
            
            # Take snapshot after each outer iteration
            result.append(pairs[:])
        
        return result