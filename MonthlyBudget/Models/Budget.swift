//
//  Budget.swift
//  MonthlyBudget
//
//  Created by Daniel Mori on 24/09/24.
//

import Foundation
import SwiftData

@Model class Budget {
    var name: String
    var creationDate: Date
    var maxBudget: Decimal
    var expenses: [Expense]
    
    init(name: String, creationDate: Date = .now, maxBudget: Decimal, expenses: [Expense] = []) {
        self.name = name
        self.creationDate = creationDate
        self.maxBudget = maxBudget
        self.expenses = expenses
    }
}

@Model class Expense {
    var name: String
    var amount: Decimal
    var creationDate: Date
    
    init(name: String, amount: Decimal, creationDate: Date) {
        self.name = name
        self.amount = amount
        self.creationDate = creationDate
    }
}
