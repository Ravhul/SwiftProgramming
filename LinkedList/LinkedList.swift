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

    func add(_ data : Int){
        if self.head == nil{
            self.head = getNextNode(data);
        }else{
            if var temp = self.head{
                while(temp.next != nil){
                    if let nxt = temp.next{
                        temp = nxt;
                    }
                }
                temp.next = getNextNode(data);
            }
        }
    }

    func display(){
        if self.head == nil{
            print("List is empty");
        }else{
            if var temp = head{
               while(temp.next != nil){
                   if let nxt = temp.next{
                       print(temp.data);
                       temp = nxt;
                   }
               }
               print(temp.data);
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











