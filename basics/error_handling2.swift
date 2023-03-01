fun makeSandwich() throws {
    // ...
}

do {
    try makeSandwich()
    eatSandwich()
} catch SandWichError.noCleanDishes {
    washDishes()
} catch SandWichError.noIngredients(let ingredients) {
    buyGroceries(ingredients)
}