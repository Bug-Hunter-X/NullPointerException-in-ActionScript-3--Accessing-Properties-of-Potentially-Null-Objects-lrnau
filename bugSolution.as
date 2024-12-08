The solution is to always check for null before accessing properties of an object:

```actionscript
var myObject:Object = someFunctionThatMightReturnNull();
if (myObject != null) {
  var myValue:String = myObject.someProperty;
} else {
  // Handle the case where myObject is null
  trace("myObject is null");
  var myValue:String = ""; // or some default value
}
```

This ensures that a `NullPointerException` is avoided.  For nested objects, you should perform null checks at each level:

```actionscript
var myObject:Object = someFunctionThatMightReturnNull();
if (myObject != null && myObject.nestedObject != null) {
  var myValue:String = myObject.nestedObject.someProperty;
}
```

Using the null-conditional operator (`?.`) in ActionScript 3 (available in later versions/Flex) can provide a more concise way to handle this:

```actionscript
var myValue:String = myObject?.nestedObject?.someProperty;
```
This will safely return null if any part of the chain is null.