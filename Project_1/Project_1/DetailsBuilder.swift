
import Foundation

class DetailsBuilder {
    
    var item_name: String!
    var item_price: Double!
    var item_quantity: Int!
    var item_type: String!
    var item_tax: Double!
    
    func setItemName(val:String) {
        self.item_name = val
    }
    
    func setItemPrice(val:Double) {
        self.item_price = val
    }
    
    func setItemQuantity(val:Int) {
        self.item_quantity = val
    }
    
    func setItemType(val:String) {
        self.item_type = val
    }
    
    func setItemTax() {
        if item_type == "raw" {
            self.item_tax = 0.125 * (item_price * Double(item_quantity))
        }
        else if item_type == "manufactured" {
            self.item_tax = 0.125 * (item_price * Double(item_quantity))
            self.item_tax += 0.02 * ((Double(item_quantity) * item_price) + 0.125 * (item_price * Double(item_quantity)))
        }
        else {
            self.item_tax = 0.1 * (Double(item_quantity) * item_price)
            if (self.item_tax<100)
            {
                self.item_tax += 5
            }
            else if (self.item_tax<200)
            {
                self.item_tax += 10
            }
            else
            {
                self.item_tax += 0.05 * (item_price * Double(item_quantity))
            }
        }
    }
    
    func buildObj() -> ItemDetails {
        return ItemDetails(item_name : self.item_name, item_price: self.item_price, item_quantity: self.item_quantity, item_type: self.item_type, item_tax: self.item_tax)
    }
}
