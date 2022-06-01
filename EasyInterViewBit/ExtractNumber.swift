/*
Problem Description
Given a string A. The string contains alphanumeric characters.
Find the sum of all numbers present in it.
Note: All the numbers will fit in a 32-bit signed integer.

Input Format
The first and only argument is a string A.
Output Format
Return an integer.

Example Input
Input 1:
A = "a12b34c"
Output 1:
46

*/
class Solution {
	func solve(_ A: inout String) -> Int64 {

    //Code to replace all character into comma ","    
    let regex1 = try! NSRegularExpression(pattern: "[a-z||A-Z]");
    let range = NSRange(location: 0,length: A.utf16.count);
    if regex1.firstMatch(in: A, options: [], range: range) != nil{
        A = regex1.stringByReplacingMatches(in: A, range: range, withTemplate: ",");
    }
   
    //Separate all numbers by comma ","
    var num:[String] = A.components(separatedBy:",");
    var out:Int64 = 0;

    //Adding all int elements into output 
    for var i in num{
       out += Int64(i) ?? 0;
    }
    
    return out;
	}
}

//Driver code

var sol = Solution();
var a = "a12b34c"
sol.Solution(&a);
