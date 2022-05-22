//Bubble Sort Program

//BubbleSort implementation method Ascending order
func bubbleSortAsc(_ arr :inout[Int]){
    print("Input array is:");
    print(arr);
    var isEleSwap = true;
    let len = arr.count;

    while isEleSwap{
    for i in 0..<len-1{
        isEleSwap = false;
        var currEleInd = i;
    
        for j in 1+i..<len{
            if arr[currEleInd] > arr[j]{
                arr.swapAt(currEleInd, j);
                isEleSwap = true;
                break;
            }
            currEleInd += 1;
        }
        if isEleSwap{
            break;
        }
    }
    }
    print(arr);
}



//Driver code

import Foundation;

var len:Int = 0;
var array:[Int]=[];
var validInput:Bool = true;


print("Enter the length of the array:(Length should be greater then 1)");
if let input = readLine(){
    if let number = Int(input){
        len = number;
    } else{
        print("Invalid input:");
        validInput = false;
    }
}

if len <= 1{
    print("Range should be greater then 1");
    validInput = false;
}
if validInput{
    print("Enter \(len) elements of array:");
    for _ in 0..<len{
        if let input = readLine(){
            if let number = Int(input){
                array.append(number);
            } else{
                print("Invalid Input");
                validInput = false;
                break;
            }
        }
    }
}

if validInput{
    bubbleSortAsc(&array);
}