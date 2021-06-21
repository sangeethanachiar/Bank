//
//  OnlineBanking.swift
//  Banking4
//
//  Created by Sangeetha Nachiar on 17/06/21.
//

import Foundation
class OnlineBanking {
    
    var atm = ATM1()
    var ban = Bank()
    var  myAccount : Account  = Account(accNo: 0, accBalance: 0, transactions: [])
    func openApp(){
        let obj = Login()
    obj.login()
}
}
