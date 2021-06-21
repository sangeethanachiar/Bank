//
//  File5.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 17/06/21.
//

import Foundation
class OpenAccount{
    var ban = Bank()
    
    var accountNumber = 1
    func openAccount(){
       print("Enter Name")
        let name = readLine()!
        print("Enter city")
        let city = readLine()!
        print("Enter min amount greater than or equal to 500 to open an account")
        let amount = Double(readLine()!)!
        if(amount > 500){
        var account = Account(accNo: accountNumber,accBalance:amount , transactions: [])
        print("Account Created. Account No : \(accountNumber)")
            ban.accounts.append(account)
           // print(ban.accounts.count)
        accountNumber += 1
        }
        else{
            print("Amount less than minimum balance")
        }
        
        var user1 = User(
            name: name, city: city, accountNo: accountNumber,cardNo: 0, cardType: .none)
        ban.users.append(user1)
      //  ban.viewAccounts()
    }
    
}
