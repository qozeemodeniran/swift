// define a dictionary
let numbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var maximum = 0
for (_, num) in numbers {
    for val in num {
        if val > maximum {
            maximum = val
        }
    } 
}

print("Largest Number: ", maximum)