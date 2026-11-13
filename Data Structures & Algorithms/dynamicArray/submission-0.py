class DynamicArray:
    
    # def __init__(self, capacity: int):


    # def get(self, i: int) -> int:


    # def set(self, i: int, n: int) -> None:


    # def pushback(self, n: int) -> None:


    # def popback(self) -> int:
 

    # def resize(self) -> None:


    # def getSize(self) -> int:
        
    
    # def getCapacity(self) -> int:

    #     class DynamicArray:

    def __init__(self, capacity: int):
        self.elements = []
        # Python lists don't have reserveCapacity, but we can simulate it
        self.capacity = capacity

    def get(self, i: int) -> int:
        return self.elements[i]

    def set(self, i: int, n: int) -> None:
        self.elements[i] = n

    def pushback(self, n: int) -> None:
        if len(self.elements) == self.capacity:
            self.resize()
        self.elements.append(n)

    def popback(self) -> int:
        return self.elements.pop()

    def resize(self) -> None:
        self.capacity *= 2

    def getSize(self) -> int:
        return len(self.elements)

    def getCapacity(self) -> int:
        return self.capacity
