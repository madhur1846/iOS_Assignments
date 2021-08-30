
import Foundation

class DetailsBuilder {
    
    var itemName: String!
    var itemPrice: Double!
    var itemQuantity: Int!
    var itemType: String!
    var itemTax: Double!
    
    func setItemName(val:String) {
        self.itemName = val
    }
    
    func setItemPrice(val:Double) {
        self.itemPrice = val
    }
    
    func setItemQuantity(val:Int) {
        self.itemQuantity = val
    }
    
    func setItemType(val:String) {
        self.itemType = val
    }
    
    func setItemTax() {
        if itemType == "raw" {
            self.itemTax = 0.125 * (itemPrice * Double(itemQuantity))
        }
        else if itemType == "manufactured" {
            self.itemTax = 0.125 * (itemPrice * Double(itemQuantity))
            self.itemTax += 0.02 * ((Double(itemQuantity) * itemPrice) + 0.125 * (itemPrice * Double(itemQuantity)))
        }
        else {
            self.itemTax = 0.1 * (Double(itemQuantity) * itemPrice)
            if (self.itemTax<100)
            {
                self.itemTax += 5
            }
            else if (self.itemTax<200)
            {
                self.itemTax += 10
            }
            else
            {
                self.itemTax += 0.05 * (itemPrice * Double(itemQuantity))
            }
        }
    }
    
    func buildObj() -> ItemDetails {
        return ItemDetails(itemName : self.itemName, itemPrice: self.itemPrice, itemQuantity: self.itemQuantity, itemType: self.itemType, itemTax: self.itemTax)
    }
}
