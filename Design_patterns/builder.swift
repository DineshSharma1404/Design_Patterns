//
//  builder.swift
//  Design_Patterns
//
//  Created by Dinesh Sharma on 09/12/24.
//


class Pizza {
    var size: String = ""
    var cheese: Bool = false
    var pepperoni: Bool = false
    var mushrooms: Bool = false
    
    func describe() {
        print("Pizza size: \(size), Cheese: \(cheese), Pepperoni: \(pepperoni), Mushrooms: \(mushrooms)")
    }
}


class PizzaBuilder {
    private var pizza = Pizza()
    
    func setSize(_ size: String) -> PizzaBuilder {
        pizza.size = size
        return self 
    }
    
    func addCheese(_ add: Bool) -> PizzaBuilder {
        pizza.cheese = add
        return self
    }
    
    func addPepperoni(_ add: Bool) -> PizzaBuilder {
        pizza.pepperoni = add
        return self
    }
    
    func addMushrooms(_ add: Bool) -> PizzaBuilder {
        pizza.mushrooms = add
        return self
    }
    
    func build() -> Pizza {
        return pizza
    }
}


let myPizza = PizzaBuilder()
    .setSize("Large")
    .addCheese(true)
    .addPepperoni(true)
    .addMushrooms(false)
    .build()



