/*
Precondition - used when a condition has the potential to be false, but must definitely be true for your code to continue execution.
E.G: use a precondition to check that a subscript isn’t out of bounds, or to check that a function has been passed a valid value

You can also call the preconditionFailure(_:file:line:) function to indicate that a failure has occurred — for example, if the default case of a switch was taken, but all valid input data should have been handled by one of the switch’s other cases.

**Note**
If you compile in unchecked mode (-Ounchecked), preconditions aren’t checked. The compiler assumes that preconditions are always true, and it optimizes your code accordingly. However, the fatalError(_:file:line:) function always halts execution, regardless of optimization settings.

You can use the fatalError(_:file:line:) function during prototyping and early development to create stubs for functionality that hasn’t been implemented yet, by writing fatalError("Unimplemented") as the stub implementation. Because fatal errors are never optimized out, unlike assertions or preconditions, you can be sure that execution always halts if it encounters a stub implementation.
*/

precondition(index>0, "Index must be greater than zero")