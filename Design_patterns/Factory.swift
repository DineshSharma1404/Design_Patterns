//
//  Factory.swift
//  Design_Patterns
//
//  Created by Dinesh Sharma on 09/12/24.
//

import Foundation

//A blueprint for animals and here we will define animals using their sounds
protocol Animal {
    func sound()
}


class Dog: Animal {
    func sound() {
        print("Woof! Woof!")
    }
}

class Cat: Animal {
    func sound() {
        print("Meow! Meow!")
    }
}


func createAnimal(type: String) -> Animal {
    if type == "dog" {
        return Dog()
    } else if type == "cat" {
        return Cat()
    } else {
        fatalError("Unknown animal type")
    }
}



