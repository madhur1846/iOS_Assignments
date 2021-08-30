

import Foundation
var option = "y"
var ar = [ItemDetails]()
func add_items()
{
    let err = Parser()
    
    do{
        let items = try err.check_items()
//        let itemAdd = (ItemDetails)
//        itemAdd.calculateTax()
        let detailBuild = DetailsBuilder()
        detailBuild.setItemName(val: items[0] as! String)
        detailBuild.setItemPrice(val: items[1] as! Double)
        detailBuild.setItemQuantity(val: items[2] as! Int)
        detailBuild.setItemType(val: items[3] as! String)
        detailBuild.setItemTax()
        let itemAdd = detailBuild.buildObj()
        ar.append(itemAdd)
    }catch Errors.noinput{
        print("No input is given")
        add_items()
    }catch Errors.notValidType{
        print("type should be from \(err.types)")
        add_items()
    }catch Errors.nonInteger{
        print("The Value should be Integer")
        add_items()
    }catch Errors.nonDouble{
        print("The value should bee double")
        add_items()
    }catch{
        print("Other Errors")
        add_items()
    }
    
}

func display_items()
{
    print("--------------------------------------------")
    print("item-name item-price item-quantity item-type total-price")
    for i in ar{
        print(i.itemName! , terminator: "    ")
        print(i.itemPrice!, terminator: "       ")
        print(i.itemQuantity!, terminator: "      ")
        print(i.itemType!, terminator: "      ")
        print(i.itemTax! + i.itemPrice!)
    }
    print("--------------------------------------------")
}

repeat {
    print("1.Add Items")
    print("2.Display items")
    print("3.exit")
    var choice:Int?
    if let tchoice = readLine(){
        choice = Int(tchoice)
    }
    switch choice {
    case 1: add_items()
    case 2: display_items()
    case 3: break
    default:print("Wrong option") 
    }
    print("do you want to continue")
    if let temp = readLine()
    {
        option = temp
    }
    
} while(option=="y" || option=="Y")
