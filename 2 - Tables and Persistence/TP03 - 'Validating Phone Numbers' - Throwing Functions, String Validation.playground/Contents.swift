//  🏔️ MTECH Code Challenge TP03: "Validating Phone Numbers"
//  Concept: Practice validating inputs to make sure they're what you're expecting; practice formatting text (you'll have to do this all the time!); practice using throwing functions to produce errors when something goes wrong

//  Instructions:
    // The API you're using needs a specific format for phone numbers: (xxx)-xxx-xxxx.
    // Write a throwing function that takes in a string and returns a formatted phone string, or throws if the string that was passed in is not a valid phone number.

//  Examples:
    //  Input: "5558675309"
    //  Output: "(555)-867-5309"

    //  Input: "phone number"
    //  Output: no output produced, error thrown and caught instead

//  ⌺ Black Diamond Challenge:
    //  Add a parameter to your function that allows you to select a country from an enum of supported phone number formats. Make it so your app successfully validates and formats phone numbers for three other countries.
    //  You can find phone number formats here: 🔗https://en.wikipedia.org/wiki/National_conventions_for_writing_telephone_numbers

import Foundation

func validateInput(number: String) -> String? {
    var numberArray: [Character] = Array(number)
    var result = ""
    if let testing = Int(number) { } else {
        print("Not number")
        return nil
    }
    if number.count != 10 {
        print("Too many or too few numbers")
        return nil
    }
    var phoneFormat = ["(", "X", "X", "X", ")", "-",
                       "X", "X", "X", "-", "X", "X", "X", "X"]//"(XXX) XXX-XXXX"
    for digit in numberArray {
        guard var index = phoneFormat.firstIndex(of: "X") else { return nil }
        phoneFormat[index] = String(digit)
    }
    for count in phoneFormat {
        result += count
    }
    return result
}

if let test = validateInput(number:
                                "1234567890") {
    print(test)
}
