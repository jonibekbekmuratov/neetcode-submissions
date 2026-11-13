from typing import List, Optional

class LinkedList:
    
    class Node:
        def __init__(self, value: int, next_node: Optional['LinkedList.Node'] = None):
            self.next = next_node
            self.value = value
    
    def __init__(self):
        self.head: Optional[LinkedList.Node] = None
        self.tail: Optional[LinkedList.Node] = None
        self.nodes: List[LinkedList.Node] = []
        self.values: List[int] = []

    def get(self, index: int) -> int:
        if len(self.nodes) <= index:
            return -1
        return self.nodes[index].value

    def insertHead(self, val: int) -> None:
        node = LinkedList.Node(value=val)
        if self.head is not None:
            node.next = self.head
            self.head = node
            self.values.insert(0, val)
            self.nodes.insert(0, node)
        else:
            self.head = node
            self.tail = node
            self.values.append(val)
            self.nodes.append(node)

    def insertTail(self, val: int) -> None:
        node = LinkedList.Node(value=val)
        if self.tail is not None:
            self.tail.next = node
            self.tail = node
        else:
            self.tail = node
            self.head = node
        self.nodes.append(node)
        self.values.append(val)

    def remove(self, index: int) -> bool:
        if len(self.nodes) <= index:
            return False

        if len(self.nodes) == 1:
            self.head = None
            self.tail = None
        elif len(self.nodes) == 2:
            if index == 0:
                self.head = self.tail
            else:
                self.tail = self.head
        else:
            if index == 0:
                self.head = self.head.next if self.head else None
            elif index == len(self.nodes) - 1:
                self.tail = self.nodes[index - 1]
                self.tail.next = None
            else:
                self.nodes[index - 1].next = self.nodes[index + 1]

        self.values.pop(index)
        self.nodes.pop(index)
        return True

    def getValues(self) -> List[int]:
        return self.values