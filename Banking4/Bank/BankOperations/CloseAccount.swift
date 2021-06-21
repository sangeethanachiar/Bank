//
//  File6.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 17/06/21.
//

import Foundation
class CloseAccount{
    
    var ban = Bank()
    func closeAccount(index1: Int,index2 : Int){
        var cardNo = ban.getCardnoFromAccountno(accountNo: ban.accounts[index1].accNo)
        var ind = ban.getCardsByIndex(cardNo: cardNo)
        ban.cards.remove(at: ind)
        ban.accounts.remove(at: index1)
        ban.users.remove(at: index2)
    print("Account Closed")
}
}
