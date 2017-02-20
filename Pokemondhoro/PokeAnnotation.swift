//
//  PokeAnnotation.swift
//  Pokemondhoro
//
//  Created by Nasir Uddin on 19/02/2017.
//  Copyright © 2017 Nasir Uddin. All rights reserved.
//This class deal/initialize with coordinating pokemon location use protocol NSobject

import UIKit
import MapKit

class PokeAnnotation : NSObject, MKAnnotation  {
    var coordinate: CLLocationCoordinate2D
    var pokemon: Pokemon
    
    init(coord: CLLocationCoordinate2D, pokemon: Pokemon) {
        self.coordinate = coord
        self.pokemon = pokemon
    }
}
