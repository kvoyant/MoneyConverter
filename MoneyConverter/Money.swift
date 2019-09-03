//
//  Money.swift
//  MoneyConverter
//
//  Created by APPLE on 03/09/2019.
//  Copyright © 2019 yhkim. All rights reserved.
//

import Foundation

enum Currency:Int {
    case USD = 0, KRW, JPY, EUR
    
    var ratio:Double {
        get {
            switch self {
            case .USD : return 1.0
            case .KRW : return 1178.5
            case .JPY : return 122.45
            case .EUR : return 0.92
            }
        }
    }
    
    var symbol:String {
        get {
            switch self {
            case .USD: return "$"
            case .KRW: return "₩"
            case .JPY: return "¥"
            case .EUR: return "€"
            }
        }
    }
    
}

struct Money {
    
    var usdollar = 0.0
    
    init(_ _usdollar:Double) {
        usdollar = _usdollar
    }
    
//    init(moneyInKRW:Double) {
//        usdollar = moneyInKRW * 0.00085
//    }
    
    init(_ amount:Double, currency:Currency) {
        usdollar = amount / currency.ratio
    }
    
    func valueInCurrency(currency:Currency) -> String {
        return "\(currency.symbol)" + "\(usdollar * currency.ratio)"
    }
}

let myMoney = Money(120)
//let incomeInKRW = Money(moneyInKRW: 350_000)
let incomeInKRW = Money(350_000, currency: .KRW)





