import Foundation

let num : Int? = Int(readLine()!);
var arr1 : [Int] = [];
var arr2 : [Int] = [];
var arr1Min = Int.max;
let aEle : String? = readLine();
let bEle : String? = readLine();

var a = aEle?.components(separatedBy: " ");
var b = bEle?.components(separatedBy: " ");

if var ele = a{
    for var eleA in (ele){
        if var num = (Int(String(eleA))){
             arr1.append(num);
        }
    }
}

if var ele = b{
    for var eleA in (ele){
        if var num = (Int(String(eleA))){
             arr2.append(num);
        }
    }
}

print(arr1);
print(arr2);

