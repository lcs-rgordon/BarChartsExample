//
//  BarView.swift
//  BarChartsExample
//
//  Created by Russell Gordon on 2020-12-04.
//

// NOTE: Adapted from https://medium.com/better-programming/swiftui-bar-charts-274e9fbc8030


import SwiftUI

struct BarView: View{

    var value: CGFloat
    var cornerRadius: CGFloat
    
    var body: some View {
        VStack {

            ZStack (alignment: .bottom) {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .frame(width: 30, height: 200).foregroundColor(.black)
                RoundedRectangle(cornerRadius: cornerRadius)
                    .frame(width: 30, height: value).foregroundColor(.green)
                
            }.padding(.bottom, 8)
        }
        
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView(value: 50, cornerRadius: 10)
    }
}
