//Linked List implementation
import Foundation;

// LinkedList Data Structure
class LinkedList{
    private var head : Node?;

    class Node{
        var data : Int;
        var next : Node?;

        init(_ value : Int){
            self.data = value;
            self.next = nil;
        }
    }

    private func getNextNode(_ data : Int) -> Node{
        return Node(data)
    }

    private func getLastNode() -> Node!{
        if var node = self.head{
            while let next = node.next{
                node = next;
            }
            return node;
        }
        return nil;
    }

    func add(_ data : Int){
        if var node = self.getLastNode(){
            node.next = self.getNextNode(data);
        }else{
            self.head = self.getNextNode(data);
        }
    }

    func remove(){
        if var node = self.head{
            while var deleteNode = node.next{
                if deleteNode.next != nil{
                    node = deleteNode;
                }else{
                    break;
                }
            }
            if var nxt = node.next{
                node.next = nil;
            }else{
                self.head = nil;
            }
        }
        else{
            print("Empty list")
        }
    }

    func display(){
        if self.head == nil{
            print("List is empty");
        }else{
            if var temp = head{
                print(temp.data);
               while let nxt = temp.next{
                    print(nxt.data);
                    temp = nxt;
               }
            }
        }
    }
}

//Driver code
var list = LinkedList();

list.add(59);
list.add(15);
list.add(16);
list.display();
list.remove();















