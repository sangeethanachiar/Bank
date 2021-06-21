//
//  Deposit.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 17/06/21.
//

import Foundation
class Deposit{
    



var ban = Bank()
func depositCash(index1 : Int){
    print("Enter amount in multiple of Rs 100")
    let amt = Double(readLine()!)!
    ban.accounts[index1].accBalance   += amt
    print("Anount added. Account Balance :\(ban.accounts[index1].accBalance)")
    }
    
}
