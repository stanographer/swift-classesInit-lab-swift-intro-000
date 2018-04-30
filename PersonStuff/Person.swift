//
//  Person.swift
//  PersonStuff
//
//  Created by Jim Campagno on 1/31/17.
//  Copyright © 2017 Jim Campagno. All rights reserved.
//

import Foundation

class Person {

    let firstName: String
    let lastName: String
    var happiness: Int = 0
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func greet(person: Person) -> String {
        person.happiness += 2
        return "Hello \(person.fullName)."
    }
    
    func dance(with person: Person) -> String {
        person.happiness += 5
        person.self.happiness += 5
        
        return "💃🏼\(person.self.fullName)❤️ ❤️\(person.fullName)💃🏼"
    }
    
}
