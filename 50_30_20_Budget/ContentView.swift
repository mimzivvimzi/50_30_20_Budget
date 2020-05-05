//
//  ContentView.swift
//  50_30_20_Budget
//
//  Created by Michelle Lau on 2020/05/05.
//  Copyright © 2020 Michelle Lau. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var income = ""
    
    var needs: Double {
        let incomeAsDouble = Double(income) ?? 0
        let needsResult = incomeAsDouble * 0.5
        return needsResult
    }
    var wants: Double {
        let incomeAsDouble = Double(income) ?? 0
        let wantsResult = incomeAsDouble * 0.3
        return wantsResult
    }
    var savings: Double {
        let incomeAsDouble = Double(income) ?? 0
        let savingsResult = incomeAsDouble * 0.2
        return savingsResult
    }
    
    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("After-tax income")) {
                    TextField("Enter your monthly income after tax", text: $income)
                        .keyboardType(.decimalPad)
                }
                Section(header: Text("Necessities")){
                    Text("\(self.needs, specifier: "%.2f")")
                }
                Section(header: Text("Fun Fund")){
                    Text("\(self.wants, specifier: "%.2f")")
                }
                Section(header: Text("Savings/Paying off loans, credit cards, etc.")){
                    Text("\(self.savings, specifier: "%.2f")")
                }
            }
            .navigationBarTitle("50/30/20 Budget", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
