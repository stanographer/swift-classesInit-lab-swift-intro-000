//
//  LaLaLand.swift
//  PersonStuff
//
//  Created by Jim Campagno on 2/1/17.
//  Copyright © 2017 Jim Campagno. All rights reserved.
//

import Foundation

class LaLaLand {
    let sebastian = Person(firstName: "Sebastian", lastName: "Wilder", happiness: 0)
    let mia = Person(firstName: "Mia", lastName:  "Dolan", happiness:  0)
    
    func initialMeeting() ->  String {
         return mia.greet(person: sebastian)
    }
    
    func dateNight() ->  String {
         return mia.dance(with: sebastian)
    }
}
