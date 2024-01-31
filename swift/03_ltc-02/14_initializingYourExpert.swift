let expert = Expert()

func turn() {
    expert.turnLeft()
    expert.turnLeft()
}

func collect() {
    if expert.isOnGem {
        expert.collectGem()
    }
    else {
        expert.turnLockUp()
    }
    turn()
}
func walk() {
    for i in 1 ... 3 {
        expert.moveForward()
    }
}

for i in 1 ... 4 {
    walk()
    collect()
    walk()
    expert.turnLeft()
}