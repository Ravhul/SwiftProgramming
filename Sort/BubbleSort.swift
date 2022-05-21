//Bubble Sort Program

//BubbleSort implementation method Ascending order
func bubbleSortAsc(_ arr :inout[Int]){
    print("Input array is:");
    print(arr);
}



//Driver code

import Foundation;

var len:Int = 0;
var array:[Int]=[];
var validInput:Bool = true;

print("Enter the length of the array:");
if let input = readLine(){
    if let number = Int(input){
        len = number;
    } else{
        print("Invalid input:");
        validInput = false;
    }
}

if validInput{
    print("Enter \(len) elements of array:");
    for i in 0..<len{
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