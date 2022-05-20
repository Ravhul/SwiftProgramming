//Selection Sort Program
//SelectionSort implementation method1
func selectionSort(_ arr :inout [Int]){
    print(arr);
    let len = arr.count;
    for i in 0..<len-1{
        var currEle = arr[i];
        var currEleReplInd = i+1;
        var needSwap = false;

        for j in 1+i..<len{
           if currEle > arr[j]{
               currEle = arr[j];
               currEleReplInd = j;
               needSwap = true;
           }
        }

        if needSwap{
            arr.swapAt(i, currEleReplInd)
        }
    }
}

//Main Driver code
import Foundation

print("Enter the length of the array:");
var len:Int = 0;
var array : [Int] = [];
var isWrongInput: Bool = false;

if !isWrongInput{
if let input = readLine(){
    if let num = Int(input){
        len = num;
    }
    else{
        print("Invalid Number!");
        isWrongInput = true;
    }
}
}

if !isWrongInput{
print("Enter \(len) elements of Array:");
for var i in 0..<len{
    if let input = readLine(){
    if let num = Int(input){
       array.append(num);
    }
    else{
        print("Invalid Number! ");
        isWrongInput = true;
        break;
    }
}
}
}

if !isWrongInput{
    print("Input array is:")
    selectionSort(&array);
    print("Sorted array is:");
    print(array);
}
