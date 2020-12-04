//
//  BarView.swift
//  BarChartsExample
//
//  Created by Russell Gordon on 2020-12-04.
//

// NOTE: Adapted from https://medium.com/better-programming/swiftui-bar-charts-274e9fbc8030


import SwiftUI

struct BarView: View{

    // The value to be illustrated with a bar
    var value: CGFloat
    
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
                    .frame(width: 30, height: value)
                    .foregroundColor(.green)
                
            }
            .padding(.bottom, 8)
        }
        
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
    
        BarView(value: 50, cornerRadius: 10)
    }
}
