//  🏔️ MTECH Code Challenge GC06: "Game Inventory" 🎮🎒
//  Concept: Practice dynamically managing a dataset with unique functionality requirements.

//  Instructions:
    //  You are creating a video game and working on the player's inventory. A structure for the items a player can collect has been provided for you.
    //  Your goal is to create a class that holds all the items a player possesses.
    //  Create functions that do the following:
        //  Check inventory: Prints a list of all items in the player's posession
        //  Gain an item: Add the item to the end of the player's inventory
        //  Discard an item: Remove the item from the array, or any quantity of a given item
        //  Use an item: Print a message stating the item was used. For items that are destroyed or lost after using them (such as food, potion, and keys), decrease the quantity owned by one. If the quantity reaches 0, discard the item.
        //  Rearrange items: Change the order of items in their inventory.

//  ⌺ Black Diamond Challenge:
    //  Item quantities have limits based on item type. A player can hold up to: 2 weapons, 1 shield, 4 armor, unlimited food, 10 potions, 100 collectibles, and unlimited keys. (If a player tries to add more than their limit, throw an error.)
    //  Add a price property for each Item and a money property to your Inventory class. Add buy and sell functions, where buying an item adds it to their inventory and decreases their money, and do the opposite for sell.

import Foundation

enum ItemType {
    case weapon, shield, armor, food, potion, collectible, key
}

struct Item {
    var name: String
    var quantity: Int
    var type: ItemType
}

