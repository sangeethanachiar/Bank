//
//  TransferFunds.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 18/06/21.
//

import Foundation
class TransferFunds{
    var ban = Bank()
    func transferFund(index1 : Int){
        
  var   transArray : [Transaction] = []
    let ch = Int(readLine()!)!
   print("Enter the Benficiary account Number")
    let accountNo = Int(readLine()!)!
    print("Enter the amount")
    var amt = Double(readLine()!)!
    print("Enter Description")
    let des = readLine()!
    let trans = Transaction(amount:amt,description : des)
   transArray.append(trans)
   
    
  
    if (amt > 500 ){
        if(amt < ban.accounts[index1].accBalance){
            ban.accounts[index1].accBalance -= amt
            ban.accounts[index1].transactions.append(trans)
            print("Amount transfered")
        }
        else{
            print("Amount insufficient in your account")
        }
    }
    }
    
    
}
