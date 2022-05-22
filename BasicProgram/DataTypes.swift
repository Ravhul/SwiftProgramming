//DataTypes in Swift
import Foundation;

//immutable object (Using let keyword).
let fix:Int = 0;

print("Fix value with let Keyword: \(fix)");
/*below 9 line will throw an error because we can not change immutable objects.
fix = 1;
print(fix);*/

//Mutable object (Using var keyword).
var notFix:Int = 0;

print("Chanageable value with var keyword is: \(notFix)");
//there will be no error as object is mutable.
notFix = 1;
print("var value after changed \(notFix)");


//Basic DataTypes Example in Swift.
var val0:Int = 21;
var val1:Float = 21.0;
var val2:Double = 21.2;
var val3:String = "Twenty one";
var val4:Character = "A";
var val5:Bool = false;

print("Int value is:\(val0)");
print("Float value is:\(val1)");
print("Double value is:\(val2)");
print("String value is:\(val3)");
print("Character value is:\(val4)");
print("Bool value is:\(val5)");