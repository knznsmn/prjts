let expert = Expert()

func turn() {
    expert.turnLeft()
    expert.turnLeft()
}

func move() {
    for i in 1 ... 2 {
        expert.moveForward()
    }
}

func collect() {
    if expert.isOnGem {
        expert.collectGem()
    }
}

func solveArm() {
    var steps = 0
    while !expert.isBlocked {
        expert.moveForward()
        steps += 1
    }
    collect()
    turn()
    for i in 1 ... steps {
        expert.moveForward()
    }
    expert.turnRight()
}

// Main program
// Solve the first 2 arms
for i in 1 ... 2 {
    solveArm()
}

//Solve for the arm with the lock
move()
expert.collectGem()
expert.turnLockDown()
turn()
move()
expert.turnRight()

// Solve for the rest of the arms
for i in 1 ... 3 {
    expert.moveForward()
}
expert.turnRight()
for i in 1 ... 3 {
    solveArm()
}