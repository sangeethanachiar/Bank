//
//  File7.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 17/06/21.
//

import Foundation
class IssueCard{
    var ban = Bank()
    var cardNo = 1111111111111111
    var expirydate = 0125
    var cvv = 890
    func issueCard(index1 : Int,index2 : Int){
        print("Enter card type")
        var type = readLine()!
        
        print("Enter your pin")
        let pin = readLine()!
        
        if(type == "credit"){
            ban.accounts[index1].accBalance += 5000
            var card = CreditCard(cardNo: cardNo, expiryDate: expirydate, cvv: cvv, pinNo: pin, account: ban.accounts[index1],cardStatus:true,pinValidationCount : 0)
           
            ban.cards.append(card)
            ban.users[index2].cardType = .credit
        }
        else if ( type == "debit"){
            var card = DebitCard(cardNo: cardNo, expiryDate: expirydate, cvv: cvv, pinNo: pin, account: ban.accounts[index1],cardStatus:true,pinValidationCount : 0)
            ban.cards.append(card)
            ban.users[index2].cardType = .debit
        }
        print("Card issued.Card No : \(cardNo)")
       
       
        cardNo += 1
        expirydate += 1
        cvv += 1
        
        
    }
}
