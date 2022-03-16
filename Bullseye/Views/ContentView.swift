//
//  ContentView.swift
//  Bullseye
//
//  Created by jbenetts on 3/3/22.
//

import SwiftUI

struct ContentView: View {
    //Variables
    @State private var alertVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    //Main View
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                    .kerning(2.0)
                    .bold()
                    .multilineTextAlignment(.center)
                    .lineSpacing(4.0)
                    .font(.footnote)
                    .foregroundColor(Color("TextColor"))
                Text(String(game.randomTarget))
                    .kerning(-1.0)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color("TextColor"))
                HStack{
                    Text("1")
                        .bold()
                        .foregroundColor(Color("TextColor"))
                    Slider(value: $sliderValue, in: 1...100)
                    Text("100")
                        .bold()
                        .foregroundColor(Color("TextColor"))
                }
                .padding()
                Button(action: {
                    print("Pressed button")
                    alertVisible = true
                }){
                    Text(" Hit me".uppercased())
                        .bold()
                        .font(.title3)
                }
                .padding()
                .background(
                    ZStack {
                        Color("ButtonColor")
                        LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                    }
                )
                .foregroundColor(Color.white)
                .cornerRadius(21.00)
                //Add and alert to the button
                .alert(isPresented: $alertVisible,
                       content: {
                    let roundedValue = Int(sliderValue.rounded())
                    return Alert(
                        title: Text("Hello player!"),
                        message: Text("The slider's value is \(roundedValue)\nThe bullseye is \(game.randomTarget) \nYou scored \(game.returnPoints(sliderValue: roundedValue)) points this round."),
                        dismissButton: .default(Text("Awesome!")))
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //Light Mode
        ContentView()
        ContentView().previewLayout(.fixed(width: 568, height: 320)).previewInterfaceOrientation(.landscapeRight)
        //Dark Mode
        ContentView().preferredColorScheme(.dark)
        ContentView().preferredColorScheme(.dark).previewLayout(.fixed(width: 568, height: 320)).previewInterfaceOrientation(.landscapeRight)
    }
}
