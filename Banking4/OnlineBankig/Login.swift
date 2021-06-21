//
//  Login.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 21/06/21.
//

import Foundation
class Login {
    var on = OnlineBanking()
    var ban = Bank()
    var userName : String = ""
    var password : String = ""
   
    
    
    func login(){
        print("1.New user\n2.Existing user\n")
        print("Enter your choice")
        let ch = Int(readLine()!)!
            switch(ch){
            case 1:
                newUser()
            case 2:
                existingUser()
            default:
                print("Invalid")
                }
        }
        
        
        
        
        
    func newUser(){
        print("Enter username ")
         userName = readLine()!
        print("Enter password")
         password = readLine()!
        print("\n1.Add Your Account\n2.exit")
        print("Enter your choice")
        let ch = Int(readLine()!)!
            switch(ch){
            case 1:
             var obj1 =    AddAccount()
                obj1.addAccount()
            case 2:
               exit(0)
            default:
                print("Invalid")
                }
        }
    
        
    func existingUser(){
        print("Enter username ")
        let user = readLine()!
        print("Enter password")
        let pass = readLine()!
        if(user == userName && pass == password){
          print("1.FundTransfer\n2.Transaction History")
            print("Enter your choice")
            let ch = Int(readLine()!)!
                switch(ch){
                case 1:
                 var obj1 = TransferFunds()
                    var accountIndex = ban.getAccountByIndex(accountNo: on.myAccount.accNo)
                    obj1.transferFund(index1: accountIndex)
                case 2:
                   
                    var accountIndex = ban.getAccountByIndex(accountNo: on.myAccount.accNo)
                   
                    func transactionHistory(index: Int){
                        
                        if(ban.accounts[index].transactions.count  == 0){
                            print("No transactions")
                        }
                        else{
                        print(" s.no            Amount         Description")
                        for i  in     0..<ban.accounts[index].transactions.count {
                            print("\(i+1)  \( ban.accounts[index].transactions[i].amount)    \( ban.accounts[index].transactions[i].description)")
                        }
                    }
                }
                    transactionHistory(index:accountIndex )
                default:
                    print("Invalid")
                    }
            }
        else{
            print("Password or username Invalid...Try Again")
            existingUser()
        }
    }
    
}
