let firstOptional: String? //optional string data type
firstOptional = "Anusha"
//----------------------------------------------------------------------------


//let text: String = myOptional ----> this won't work because myOptional is an optional string and text is just a String/ can't use interchangeably without unwrapping the optional'
//----------------------------------------------------------------------------


//force unwrapping
let text1: String = firstOptional!
print(text1)
//----------------------------------------------------------------------------


//the code below doesn't give error while writing it but crashes at runtime
//optional string is initialized with nil value. when we try to force unwrap an optional which has nil value, it crashes
let secondOptional: String?
secondOptional = nil
//let text2: String = secondOptional!
//----------------------------------------------------------------------------


//safer way of using optionals - 1:
if secondOptional != nil {
    let text2: String = secondOptional!
    print(text2)
}
else{
    print("secondOptional was found to be nil")
}
//----------------------------------------------------------------------------


//BUILT-IN nil checking
if let safeOptional = secondOptional {
    let text3: String = safeOptional
    print(text3)
} else{
    print("secondOptional was found to be nil")
}

//Nil Coalescing operator
let thirdOptional: String?
thirdOptional = nil
//text4 will take the value of thirdOptional if it's not nil. but if it is nil, it takes the default value "GOD-default". ?? is called nil coalescing operator
let text4: String = thirdOptional ?? "GOD-default"
print(text4)
//----------------------------------------------------------------------------


//optional struct or class
struct MyOptional {
    var property = 123
    func method(){
        print("I am struct method")
    }
}

let myOptional: MyOptional? //datatype is MyOptional(optional struct). not yet initialized

myOptional = MyOptional() //initialized
//print(myOptional.property)
//^since struct is optional, we can't proceed without unwrapping. property itself isn;t optional but struct is.
//----------------------------------------------------------------------------

let myOptional2: MyOptional?
myOptional2 = nil
print(myOptional2?.method())
