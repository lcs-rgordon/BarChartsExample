//
//  ContentView.swift
//  BarChartsExample
//
//  Created by Russell Gordon on 2020-12-04.
//

import SwiftUI

struct SomeDatum: Identifiable {
    var id = UUID()
    var name: String
    var value: Double
}

struct ContentView: View {
    
    var data = [
        SomeDatum(name: "Travel", value: 75),
        SomeDatum(name: "Food", value: 153),
        SomeDatum(name: "Recreation", value: 45),
    ]
    
    var body: some View {
        
        VStack(alignment: .trailing, spacing: 10) {
            
            ForEach(data) { datum in
                
                BarView(valueToIllustrate: CGFloat(datum.value),
                        cornerRadius: 10.0,
                        animationSpeed: 2.0,
                        label: datum.name)
                
            }
            
        }
        .padding(.top, 24)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
