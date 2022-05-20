//Selection Sort Program
//Program is currently under Construction! 

import Foundation

print("Enter the length of the array:");
var len:Int = 0;
print("Enter \(len) elements of Array:");
if let input = readLine(){
    if let num = Int(input){
        len = num;
    }
    else{
        print("Invalid Number!");
    }
}

print("Enter \(len) elements of unsorted array:");