//Linked List implementation
import Foundation;

// LinkedList Data Structure
class LinkedList{
    var head : Node? = nil;
    class Node{
        var data : Int;
        var next : Node?;
        init(_ value : Int,_ head : Node? = nil){
            self.data = value;
            self.next = head;
        }
    } 
    func addElement(_ value : Int){
        self.head = Node(value, self.head);
    }
    init(){

    }  
}

//Driver code

var linkedList = LinkedList();
linkedList.addElement(1);

if linkedList.head != nil {
    print(linkedList.head!.data);
}else{
    print("Empty List");
}


