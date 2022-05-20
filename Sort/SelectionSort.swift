//Selection Sort Program
//Program is currently under Construction! 
func selectionSort(_ arr :inout [Int]){
    print(arr);
    arr.swapAt(0,1);
}


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
