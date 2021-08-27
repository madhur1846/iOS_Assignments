
import Foundation
var allItems = [Any]()
class ItemDetails{
    var item_name: String!
    var item_price: Double!
    var item_quantity: Int!
    var item_type: String!
    var item_tax: Double!
    init( item_name: String, item_price: Double, item_quantity: Int,  item_type: String,  item_tax: Double){
        self.item_name = item_name
        self.item_price = item_price
        self.item_quantity = item_quantity
        self.item_type = item_type
        self.item_tax = item_tax
    }
    
}
