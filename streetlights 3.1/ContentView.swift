//
//  ContentView.swift
//  streetlights 3.1
//
//  Created by Maria Berger on 07.09.2021.
//

import SwiftUI

struct ContentView: View {
    var redCircle = Circle()
    var yellowCircle = Circle()
    var greenCircle = Circle()
    @State var buttonText = "Start"


    
    var body: some View {
        VStack{
            Circles
            Button(action: switchColors, label: {
                Text(buttonText)
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 150, height: 50, alignment: .center)
                    .background(Color.blue)
                    .cornerRadius(10)
            })
        }
        .ignoresSafeArea()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black)
        
    }
    
    
    private var Circles: some View {
        VStack(alignment: .center){
                redCircle
                .foregroundColor(.red)
                .background(Color.black)
                .frame(width: 100, height: 100, alignment: .center)
                .overlay(Circle().stroke(Color.white, lineWidth: 3.0))
                    .opacity(0.3)
            
                yellowCircle
                .foregroundColor(.yellow)
                .background(Color.black)
                .frame(width: 100, height: 100, alignment: .center)
                .overlay(Circle().stroke(Color.white, lineWidth: 3.0))
                    .opacity(0.3)
                greenCircle
                .foregroundColor(.green)
                .background(Color.black)
                .frame(width: 100, height: 100, alignment: .center)
                .overlay(Circle().stroke(Color.white, lineWidth: 3.0))
                    .opacity(0.3)
        }
        .padding(.top, -160.0)
        .ignoresSafeArea()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
    }


    func switchColors() {
        if yellowCircle.opacity(0.3) || redCircle.opacity(1.0) {
            buttonText = "NEXT"
            yellowCircle.opacity(1.0)
            redCircle.opacity(0.3)}
        if greenCircle.opacity(0.3) || yellowCircle.opacity(1.0) {
            buttonText = "NEXT"
            greenCircle.opacity(1.0)
            yellowCircle.opacity(0.3)}
        else {
            buttonText = "NEXT"
            redCircle.opacity(1.0)
            greenCircle.opacity(0.3)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

