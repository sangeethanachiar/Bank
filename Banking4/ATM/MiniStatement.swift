//
//  MiniStatement.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 17/06/21.
//

import Foundation
class MiniStatement{
    var ban = Bank()
    func transactionHistory(index: Int){
        
        if(ban.cards[index].account.transactions.count  == 0){
            print("No transactions")
        }
        else{
        print(" s.no            Amount         Description")
        for i  in     0..<ban.cards[index].account.transactions.count {
            print("\(i+1)  \( ban.cards[index].account.transactions[i].amount)    \( ban.cards[index].account.transactions[i].description)")
        }
    }
}
}
