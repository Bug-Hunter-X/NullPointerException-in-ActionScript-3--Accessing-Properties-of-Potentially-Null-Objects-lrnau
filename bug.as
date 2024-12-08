The following ActionScript 3 code attempts to access a property of an object before checking if the object itself is null:

```actionscript
var myObject:Object = someFunctionThatMightReturnNull();
var myValue:String = myObject.someProperty;
```

This will throw a `NullPointerException` if `someFunctionThatMightReturnNull()` returns null.  This is a common error but often subtle, especially when dealing with nested objects or asynchronous operations.