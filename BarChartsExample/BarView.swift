//
//  BarView.swift
//  BarChartsExample
//
//  Created by Russell Gordon on 2020-12-04.
//

// NOTE: Adapted from https://medium.com/better-programming/swiftui-bar-charts-274e9fbc8030


import SwiftUI

struct BarView: View{

    // Starting value
    @State private var currentValue: CGFloat = 0.0
    
    // The value to be illustrated with a bar
    var valueToIllustrate: CGFloat
    
    // How rounded the corner of the bar should be (higher is more rounded)
    var cornerRadius: CGFloat
    
    var body: some View {
        
        VStack {

            ZStack (alignment: .bottom) {
        
                // Background, fixed height of 200 points
                RoundedRectangle(cornerRadius: cornerRadius)
                    .frame(width: 30, height: 200)
                    .foregroundColor(.black)
                
                // The height of the bar, a given value
                RoundedRectangle(cornerRadius: cornerRadius)
                    .frame(width: 30, height: currentValue)
                    .foregroundColor(.green)
                    .animation(.easeIn(duration: 2.0))
                
            }
            .padding(.bottom, 8)
            .onAppear() {
                currentValue = valueToIllustrate
            }
        }
        
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
    
        BarView(valueToIllustrate: 100, cornerRadius: 10)
        
    }
}
