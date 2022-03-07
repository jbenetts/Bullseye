//
//  ContentView.swift
//  Bullseye
//
//  Created by jbenetts on 3/3/22.
//

import SwiftUI

struct ContentView: View {
    //Create a variable that has a state of false
    @State var alertVisible: Bool = false
    @State var sliderValue: Double = 50.0
    //Create a view that has a 2 object; the label and the button
    var body: some View {
        VStack {
            Spacer()
            //Object with properties like font and color
            HStack {
                Text("Put the bullseye as close as you can to:")
                Text("100")
            }
            Spacer()
            HStack{
                Text("1")
                Slider(value: self.$sliderValue, in: 1...100)
                Text("100")
            }
            
            //Buttons
            Spacer()
            Button(action: {
                print("Button Pressed")
                self.alertVisible = true
            })
            {
                Text("Hit me!")
                    .foregroundColor(Color.blue)

            }
            .alert(isPresented: $alertVisible) { () ->
                Alert in return Alert(
                    title: Text("Testing Alert"),
                    message: Text("This is my first alert"),
                    dismissButton: .default(Text("Awesome")))
            }
            Spacer()
            //Score
            HStack {
                Button("Start Over"){
                }
                Spacer()
                Text("Score:")
                Text("999999")
                Spacer()
                Text("Round:")
                Text("999")
                Spacer()
                Button("Info"){
                }
            }
            .padding(.bottom, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
