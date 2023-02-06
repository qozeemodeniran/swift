// Modify the anyCommonElements(_:_:) function to make a function that returns an array of the elements that any two sequences have in common.

func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> [T.Element]
where T.Element: Equatable, T.Element == U.Element {
    var commonElements: [T.Element] = []
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                commonElements.append(lhsItem)
            }
        }
    }
    return commonElements
}
print(anyCommonElements([1, 2, 3], [3]))
