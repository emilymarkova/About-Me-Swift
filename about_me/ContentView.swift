//
//  ContentView.swift
//  about_me
//
//  Created by Emily Markova on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var fun_fact = ""
    @State private var button_content = "Click for fun fact :)"
    var body: some View {
        VStack {
            Section(
                header: Text("All About Me")
                    .font(.title)
                    .fontWeight(.bold)
                    .background(.white)
            ){
                Image("cat")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding(.all)
                Button(button_content) {
                    if(button_content == "Click for fun fact :)"){
                        fun_fact = "I have a black cat."
                        button_content = "Click to erase fun fact :)"
                    } else {
                        fun_fact = ""
                        button_content = "Click for fun fact :)"
                    }
                    
                }
                .padding(.all)
                .border(.black)
                .background(.white)

                Text(fun_fact)
            }
            .background(.mint)
            Section(
                header: Text("Things I enjoy to do")
                    .font(.title)
                    .fontWeight(.bold)
                    .background(.white)
            ){
                ScrollView{
                    VStack{
                        Image("snowboarding")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding(.all)
                        Image("coding")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding(.all)
                        Image("watching")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding(.all)
                    }
                }
                

            }
            .background(.mint)
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
