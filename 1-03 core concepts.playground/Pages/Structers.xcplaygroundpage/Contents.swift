//: [Previous](@previous)

typealias Miles = Double

struct Location {
    let x: Miles
    let y: Miles
      
    func getDistance(_ location: Location) -> Double {
        return abs(x - location.x) + abs(y - location.y)
    }
    
}

let distance = Location(x: 2, y: 3).getDistance(Location(x: 5.2, y: 4))
Location(x: 0, y: 8.5)
Location(x: 5.2, y: 4)

struct Restaurant {
    let location: Location
    var deliveryDistance: Miles
    
    func willDeliver(to location: Location) -> Bool {
        return self.location.getDistance(location) <=
        deliveryDistance
    }
    
    func deliveryAreaOverlaps(restaurant: Restaurant) -> Bool {
        return
        location.getDistance(restaurant.location)
        <=
        deliveryDistance + restaurant.deliveryDistance
    }
}

let restaurants = [
    Restaurant(location: Location(x: 0, y: 0), deliveryDistance: 3),
    Restaurant(location: Location(x: 5, y: 5), deliveryDistance: 2)
]

restaurants[0].willDeliver(to: Location(x: 1, y: 2))
restaurants[1].willDeliver(to: Location(x: 1, y: 2))

extension Location {
    var canGetPizzaDelivery: Bool {
        return restaurants.contains { restaurant in
            restaurant.willDeliver(to: self)
        }
    }
}

Location(x: 3, y: 0).canGetPizzaDelivery
Location(x: 2, y: 2).canGetPizzaDelivery

var restarurant = Restaurant(location: Location(x: 2, y: 3), deliveryDistance: 4)

var copyRestaurant = restarurant
restarurant.deliveryDistance = 5
copyRestaurant



//Challenges
typealias Inches = Int

struct Pizza {
    enum Topping {
        case cheese
        case mushrooms
        case peppers
    }
    
    enum Crust {
        case thick
        case thin
    }
    
    let toppings: [Topping]
    let size: Inches
    let crust: Crust
}

let pizzaTopping: Pizza.Topping = .mushrooms
let pizza = Pizza(toppings: [.cheese, .mushrooms], size: 14, crust: .thick)


let restaurant1 = Restaurant(location: Location(x: 0, y: 0), deliveryDistance: 2)
let restaurant2 = Restaurant(location: Location(x: 3, y: 3), deliveryDistance: 2)

restaurant1.deliveryAreaOverlaps(restaurant: restaurant2)

//: [Next](@next)
