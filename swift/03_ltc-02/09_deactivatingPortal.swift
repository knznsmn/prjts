greenPortal.isActive = false

func move() {
    for i in 1 ... 3 {
        moveForward()
    }
}

func turn() {
    turnLeft()
    turnLeft()
}

func solve() {
    move()
    turn()
    toggleSwitch()
    move()
    turnLeft()
}

// Main
move()
turnLeft()
for i in 1 ... 3 {
    solve()
}