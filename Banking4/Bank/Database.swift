//
//  Database.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 18/06/21.
//

import Foundation
class Database{
   var ban = Bank()
    var account1 = Account(accNo:1,accBalance: 500,transactions:[])
    var account2 = Account(accNo:2,accBalance: 10000,transactions:[])
    func storeData(){
    ban.accounts.append(account1)
    ban.accounts.append(account2)
    
    var card1 = CreditCard(cardNo: 0000_0000_0000_1111 , expiryDate: 09_21, cvv: 789, pinNo: "8911", account: account1, cardStatus: true, pinValidationCount: 0)
    
    var card2 = DebitCard(cardNo: 0000_0000_0000_2222, expiryDate: 08_22, cvv: 890, pinNo: "7800", account: account2, cardStatus: true, pinValidationCount: 0)
    
    ban.cards.append(card1)
    ban.cards.append(card2)
    
    var user1 = User(name: "Joy", city: "Chennai", accountNo: 1, cardNo: 0000_0000_0000_1111 , cardType: .credit )
    var user2 = User(name: "Jack", city: "Bangalore", accountNo: 2, cardNo: 0000_0000_0000_2222, cardType: .debit)
    
    ban.users.append(user1)
    ban.users.append(user2)
}
}
