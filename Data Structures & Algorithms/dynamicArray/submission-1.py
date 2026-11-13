class DynamicArray:
    
    def __init__(self, capacity: int):
        self.capacity = capacity
        self.size = 0
        self.elements = [0] * capacity

    def get(self, i: int) -> int:
        return self.elements[i]

    def set(self, i: int, n: int) -> None:
        self.elements[i] = n

    def pushback(self, n: int) -> None:
        if self.size == self.capacity:
            self.resize()
        self.elements[self.size] = n
        self.size += 1

    def popback(self) -> int:
        self.size -= 1
        last = self.elements[self.size]
        self.elements[self.size] = 0
        return last

    def resize(self) -> None:
        self.capacity *= 2
        array = [0] * self.capacity
        for index, element in enumerate(self.elements):
            array[index] = element
        self.elements = array

    def getSize(self) -> int:
        return self.size

    def getCapacity(self) -> int:
        return self.capacity