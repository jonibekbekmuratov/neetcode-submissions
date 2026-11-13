# Definition for a pair.
# class Pair:
# def __init__(self, key: int, value: str):
# self.key = key
# self.value = value

class Solution:
    def quickSort(self, pairs: List[Pair]) -> List[Pair]:
        def qSort(arr, s, e):
            if e - s <= 0:
                return
            
            pivot = arr[e].key
            index = s
            
            for j in range(s, e):
                if arr[j].key < pivot:
                    arr[index], arr[j] = arr[j], arr[index]
                    index += 1
            
            arr[index], arr[e] = arr[e], arr[index]
            qSort(arr, s, index - 1)
            qSort(arr, index + 1, e)
        
        qSort(pairs, 0, len(pairs) - 1)
        return pairs