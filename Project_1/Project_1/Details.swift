
import Foundation
var allItems = [Any]()
class ItemDetails{
    var itemName: String!
    var itemPrice: Double!
    var itemQuantity: Int!
    var itemType: String!
    var itemTax: Double!
    init( itemName: String, itemPrice: Double, itemQuantity: Int,  itemType: String,  itemTax: Double){
        self.itemName = itemName
        self.itemPrice = itemPrice
        self.itemQuantity = itemQuantity
        self.itemType = itemType
        self.itemTax = itemTax
    }
    
}
