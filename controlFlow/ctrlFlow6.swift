// Use while to repeat a block of code until a condition changes.
var n = 2

while n < 100 {
    n *= 2
}
print(n)

// The condition of a loop can be at the end instead, ensuring that the loop is run at least once.
var m = 2

repeat {
    m *= 2
} while m < 100
print(m)

// You can keep an index in a loop by using ..< (omits upper value) to make a range of indexes
var total = 0
for i in 0..<4 {
    total += i
}
print(total)

