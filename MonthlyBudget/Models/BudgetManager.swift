//
//  BudgetManager.swift
//  MonthlyBudget
//
//  Created by Daniel Mori on 24/09/24.
//

import Foundation
import SwiftData

@MainActor
class BudgetManager {
    static var shared = BudgetManager()
    private let container: ModelContainer?
    private let context: ModelContext?
    
    private init() {
        do {
            let config = ModelConfiguration(isStoredInMemoryOnly: false)
            self.container = try ModelContainer(for: Budget.self, configurations: config)
            self.context = container?.mainContext
            context?.autosaveEnabled = true
        } catch {
            container = nil
            context = nil
        }
    }
}
