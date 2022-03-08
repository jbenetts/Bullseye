//
//  ContentView.swift
//  Bullseye
//
//  Created by jbenetts on 3/3/22.
//

import SwiftUI

struct ContentView: View {
    //Variables
    @State private var alertVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    @State private var game: Game = Game()
    //Main View
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .kerning(2.0)
                .bold()
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text(String(game.randomTarget))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack{
                Text("1")
                    .bold()
                Slider(value: self.$sliderValue, in: 1...100)
                Text("100")
                    .bold()
            }
            Button(action: {
                print("Pressed button")
                self.alertVisible = true
            }){
                Text("Hit Me!")
            }
            //Add and alert to the button
            .alert(isPresented: $alertVisible,
                   content: {
                let roundedValue: Int = Int(self.sliderValue.rounded())
                return Alert(
                    title: Text("Hello player!"),
                    message: Text("The slider's value is \(roundedValue) \nYou scored \(self.game.returnPoints(sliderValue: roundedValue)) points this round."),
                    dismissButton: .default(Text("Awesome!")))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 568, height: 320)).previewInterfaceOrientation(.landscapeLeft)
    }
}
