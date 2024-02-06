func collect() {
    if n2.isOnGem {
        n2.collectGem()
    }
}
func blockedLeft() {
    collect()
    n2.jump()
}
func blockedAround() {
    collect()
    n2.turnRight()
    n2.jump()
}
func blockedNone() {
    n2.turnLeft()
    var gem = 0
    while gem != 2 {
        if n2.isOnGem {
            n2.collectGem()
            gem += 1
        }
        else {
            n2.moveForward()
        }
    }
}

func move() {
    while n2.isBlockedLeft && !n2.isBlockedRight && n2.isBlocked {
        blockedLeft()
    }
    if n2.isBlocked && n2.isBlockedLeft && n2.isBlockedRight {
        blockedAround()
        move()
    }
    // Detects the path to last gem
    if !n2.isBlockedLeft && !n2.isBlockedRight {
        blockedNone()
    }
}

// main()
let n1 = Expert(), n2 = Character()
world.place(n1, facing: .north, atColumn: 3, row: 0)
world.place(n2, facing: .north, atColumn: 0, row: 0)

n1.toggleSwitch()
n1.turnLockUp()

// let n2 mow down them gems
move()
