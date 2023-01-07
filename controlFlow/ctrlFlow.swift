let studentScores = [75, 50, 84, 90, 63, 95, 71]
var point = 0

// make a loop
for score in studentScores {

    // make a conditional: if individual score is greater than 50, team gets 3 points, else team gest 1 point
    if score > 50 {
        point += 3
    }
     else {
        point += 1
    }
}

print("Total Point: ", point)