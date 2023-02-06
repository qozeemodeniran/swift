// Use where right before the body to specify a list of requirements—for example, to require the type to implement a protocol, to require two types to be the same, or to require a class to have a particular superclass.

func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
where T.Element: Equatable, T.Element == U.Element {
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}
// anyCommonElements([1,2,3], [3])
print(anyCommonElements([1,2,3], [3]))

// NOTE:- Writing <T: Equatable> is the same as writing <T> ... where T: Equatable.