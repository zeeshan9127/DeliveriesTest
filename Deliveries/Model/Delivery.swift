//
//  Delivery.swift
//  Deliveries
//
//  Created by Muhammad Zeeshan on 17/09/2018.
//  Copyright © 2018 Muhammad Zeeshan. All rights reserved.
//

import UIKit

struct Delivery {
    
    var id : Int = 0
    var description : String
    var imageUrl : String
    var location : DeliveryLocation
}

class DeliveryLocation {
    
    var lat : Double = 0.0
    var lng : Double = 0.0
    var address : String = ""
}
