//  🏔️ MTECH Code Challenge SF16: "Manual Collection"
//  Concept: Attempt to manage a large set of values without using a Collection; identify utility of arrays and dictionaries

//  Instructions:
//  You work for a tow company. You are building an app to help them monitor and tow cars at a local lot. Unfortunately, your boss is going through a midlife crisis and for some reason, because of this he will not tolerate you using arrays or dictionaries of any kind in your code.

//  Below is a ParkingLot class configured to hold one property, parkingSpace1. When a car is not parked, the string will be empty. When a car is parked, the car's make and model will be stored. If the car is towed, it will go back to being empty.
//  Now, you need to scale your app to monitor 19 more parking spaces.
//  Add 19 more parkingSpace variables to ParkingLot, each following the naming pattern: parkingSpace1, parkingSpace2, parkingSpace3, and so on.
//  Update the parkCar and towCar functions to accept a property called parkingSpace of type Int. Park or tow the car in the appropriate parking space accordingly.

//  The towing company has relaxed their rules and now, not every car in the parking gets towed immediately. Add two more functions, giveTicket(parkingSpace: Int) and collectFee(parkingSpace: Int).
//  `giveTicket()` should add "- TICKETED" to the string for that parking space.
//  `collectFee()` should charge the car's owner $1 for each character in the string for their parking space. Add to

//  Notes:
//  The goal here is to try to handle a large set of data manually, without using a collection like Array or Dictionary. Obviously, those would be better solutions to this problem, but avoid them nonetheless.

//  ⌺ Black Diamond Challenge:
//  A couple more functions are needed:
//  ParkingLot.explode() should immediately cause any and all Ford Pintos to explode, thus emptying their parking space.
//  Obviously you will want to be able to view a list of all cars parked in your lot. ParkingLot.list() should print a list of all spaces, including space number; if a space is empty, don't print an empty string, but the word "Empty" instead.

import Foundation

class ParkingLot {
    var cashCollected = 0.0
    var parkingSpace1 = ""
    var parkingSpace2 = ""
    var parkingSpace3 = ""
    var parkingSpace4 = ""
    var parkingSpace5 = ""
    var parkingSpace6 = ""
    var parkingSpace7 = ""
    var parkingSpace8 = ""
    var parkingSpace9 = ""
    var parkingSpace10 = ""
    var parkingSpace11 = ""
    var parkingSpace12 = ""
    var parkingSpace13 = ""
    var parkingSpace14 = ""
    var parkingSpace15 = ""
    var parkingSpace16 = ""
    var parkingSpace17 = ""
    var parkingSpace18 = ""
    var parkingSpace19 = ""
    var parkingSpace20 = ""

    func parkCar(
        parkingSpace: Int,
        _ carType: String
    ) {
        switch parkingSpace {
        case 1:
            parkingSpace1 = carType
        case 2:
            parkingSpace2 = carType
        case 3:
            parkingSpace3 = carType
        case 4:
            parkingSpace4 = carType
        case 5:
            parkingSpace5 = carType
        case 6:
            parkingSpace6 = carType
        case 7:
            parkingSpace7 = carType
        case 8:
            parkingSpace8 = carType
        case 9:
            parkingSpace9 = carType
        case 10:
            parkingSpace10 = carType
        case 11:
            parkingSpace11 = carType
        case 12:
            parkingSpace12 = carType
        case 13:
            parkingSpace13 = carType
        case 14:
            parkingSpace14 = carType
        case 15:
            parkingSpace15 = carType
        case 16:
            parkingSpace16 = carType
        case 17:
            parkingSpace17 = carType
        case 18:
            parkingSpace18 = carType
        case 19:
            parkingSpace19 = carType
        case 20:
            parkingSpace20 = carType
        default:
            "unkown"
        }
    }

    func towCar() {
        parkingSpace1 = ""
        parkingSpace2 = ""
        parkingSpace3 = ""
        parkingSpace4 = ""
        parkingSpace5 = ""
        parkingSpace6 = ""
        parkingSpace7 = ""
        parkingSpace8 = ""
        parkingSpace9 = ""
        parkingSpace10 = ""
        parkingSpace11 = ""
        parkingSpace12 = ""
        parkingSpace13 = ""
        parkingSpace14 = ""
        parkingSpace15 = ""
        parkingSpace16 = ""
        parkingSpace17 = ""
        parkingSpace18 = ""
        parkingSpace19 = ""
        parkingSpace20 = ""
    }
}

var parkingLot = ParkingLot()

parkingLot.parkCar(
    "Ford Pinto",
    "Volkswagen Passat",
    "Volkswagen Gulf",
    "Volkswagen Jetta",
    "Volkswagen GTI",
    "Honda Civic Hatchback",
    "Honda Civic Type R",
    "Honda Pilot",
    "Ford Explorer",
    "Ford Expedition",
    "Laborghini Hurricane",
    "Ford Mustang",
    "Bumblebee",
    "Optimus Prime",
    "Hyundai Elantra",
    "Sequoia",
    "1980's Car",
    "Ford Fusion",
    "Acura Car",
    "I don't even know"
)
