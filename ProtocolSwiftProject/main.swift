//
//  main.swift
//  ProtocolSwiftProject
//
//  Created by Ali serkan Boyracı  on 27.11.2022.
//

import Foundation

protocol Eating {  // they arenot for objects. they are for using in structs and classes. you can use which func do you want. Delegate like this.
    func eatMeat ()
    func eatGrass ()
}



class Animal { // somtime using inheritance not enough for our usage. some animals can running some of them NOT
    func runnn() {
        print("running")
    }
    
}

class Dog : Animal, Eating {
    func eatGrass() {
        print("cannot eat grass")
    }
    
    func eatMeat() {
        print("eat meatballs")
    }
    
    
}

let barley = Dog()
barley.runnn()
barley.eatMeat()

class Lion : Eating {
    func eatGrass() {
        print("cannot eat grass")
    }
    
    func eatMeat() { // if you didnt write this block, you will get error.
        print("eat deer")
    }
    
    
}


//let cat = Running()

struct Turtle : Eating {
    func eatMeat() {
        print("cannot eat meat")
    }
    
    func eatGrass() {
        print("eat grass")
    }
    
    
}

let leonardo = Turtle()
leonardo.eatMeat() // we dont want to take eatMeat function for turtles. we can do this with protocol.
leonardo.eatGrass() // we just need this.



// struct Bird : Animal {  }// you cannat use inheritance for structs. // with protocols, you can use adapt means like inheritence
    

