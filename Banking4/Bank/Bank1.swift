//
//  Bank.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 17/06/21.
//

import Foundation
class Bank{
  
    
    var accounts:[Account] = []
    var cards:[Card] = []
    var users:[User] = []
    func getUserType(){
    print("1.New user\n2.Existing user\n")
    print("Enter your choice")
    let ch = Int(readLine()!)!
        switch(ch){
        case 1:
            let obj1 = OpenAccount()
            obj1.openAccount()
            getUserType()
        case 2:
            existingUser()
        default:
            print("Invalid")
            }
    }
    
    func existingUser(){
      //  viewAccounts()
        print("Enter the Account no")
        let accountNo = Int(readLine()!)!
        let ind1  = getAccountByIndex(accountNo: accountNo)
        
        if(ind1 != -1){
            let ind2 = getUserByIndex(accountNo: accountNo)
        print("1.Issue Card\n2.Close Account\n3.DepositCash\n4.WithdrawCash\n5.TransferFund\n6.Exit")
        let ch1 = Int(readLine()!)!
        switch(ch1){
     
        case 1:
            let obj2 = IssueCard()
            obj2.issueCard(index1: ind1,index2 : ind2)
            existingUser()
        case 2:
            let obj3 = CloseAccount()
            obj3.closeAccount(index1: ind1, index2: ind2)
           existingUser()
        case 3:
            let obj4 = Deposit()
            obj4.depositCash(index1: ind1)
            existingUser()
        case 4:
            print("Enter amount in multiple of Rs 100")
            let amt = Double(readLine()!)!
            let obj5 = Withdraw()
            obj5.withdraw(index1 : ind1, amt: Int(amt))
            existingUser()
        case 5:
            let obj6 = TransferFunds()
            obj6.transferFund(index1 : ind1)
           existingUser()
        case 6:
            exit(0)
        default:
            print("invalid")
        }
        }
}
    func getAccountByIndex(accountNo: Int)->Int{
        var result = 0
       
        if(accounts.count == 0 ){
            print("Account does not exist")
            return -1
        }
        else {
        for i in 0..<accounts.count{
            if accounts[i].accNo == accountNo{
                         result =  i
                    }
                    else{
                         result = -1
                    }
                    
                }
         return result
        
    }
    }
    func getCardsByIndex(cardNo: Int)->Int{
        var result = 0
        for i in 0..<cards.count{
            if cards[i].cardNo == cardNo{
                         result =  i
                print("\(i)")
                    }
                    else{
                         result = -1
                        print("\(i)")
                    }
                    
                }
         return result
    }
    func getUserByIndex(accountNo: Int)->Int{
        var result = 0
        
        if(users.count == 0 ){
            print("Account does not exist")
            return -1
        }
        else{
       for i in 0..<users.count{
            if users[i].accountNo == accountNo{
                         result =  i
                    }
                    else{
                         result = -1
                    }
                    
                }
         return result
        }
    }
    func getCardnoFromAccountno(accountNo : Int)->Int{
        var result = 0
        for i in 0..<cards.count{
            if cards[i].account.accNo == accountNo{
                result = cards[i].cardNo
            }
            else{
                result = -1
            }
        }
        return result
    }
    
    
    func getUserIndexFromCardno(cardNo : Int)-> Int{
        var result = 0
        for i in 0..<users.count{
            if users[i].cardNo == cardNo {
                result = i
            }
            else{
                result = -1
            }
        }
        return result
    }
    func viewAccounts(){
        print("total \(users.count)")
        for item in users{
            print(" \(item.name)    \(item.accountNo)")
        }
    }
    }
    
    
        
        


