from typing import List, Optional

class LinkedList:
    
    class Node:
        def __init__(self, value: int, next_node: Optional['LinkedList.Node'] = None):
            self.next = next_node
            self.value = value
    
    def __init__(self):
        self.head: Optional[LinkedList.Node] = None
        self.tail: Optional[LinkedList.Node] = None

    def get(self, index: int) -> int:
        current_index = 0
        current_node = self.head

        if index == 0:
            return self.head.value if self.head else -1

        while current_node is not None:
            if current_index == index:
                return current_node.value if current_node else -1

            current_node = current_node.next
            current_index += 1

        return -1

    def insertHead(self, val: int) -> None:
        node = LinkedList.Node(value=val)
        if self.head is not None:
            node.next = self.head
            self.head = node
        else:
            self.head = node
            self.tail = node

    def insertTail(self, val: int) -> None:
        node = LinkedList.Node(value=val)
        if self.tail is not None:
            self.tail.next = node
            self.tail = node
        else:
            self.tail = node
            self.head = node

    def remove(self, index: int) -> bool:
        if self.head is None:
            return False

        current_index = 0
        previous_node: Optional[LinkedList.Node] = None
        current_node = self.head

        while current_node is not None:
            if current_index == index:
                if previous_node:
                    previous_node.next = current_node.next
                if current_node.next is None:
                    self.tail = previous_node
                if previous_node is None:
                    self.head = current_node.next
                return True

            previous_node = current_node
            current_node = current_node.next
            current_index += 1

        return False

    def getValues(self) -> List[int]:
        values: List[int] = []

        current_node = self.head
        while current_node is not None:
            values.append(current_node.value)
            current_node = current_node.next

        return values