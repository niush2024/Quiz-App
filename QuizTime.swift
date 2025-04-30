//
//  ContentView.swift
//  Quiz App
//
//  Created by StudentPM on 4/23/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                ZStack{
                    Image("Quiz")
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    //Background 
                    VStack{
                        Spacer()
                        //Title
                        Text("Quiz Time‼️")
                            .padding()
                            .foregroundColor(.black)
                            .font(.system(size: 64, weight: .bold))
                        
                        Spacer()
                        NavigationLink(destination:inGame().navigationBarBackButtonHidden(true)){
                            //Blue button for the player to start.
                            Text("Begin")
                                .padding()
                                .frame(width:230 , height:42)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .font(.title)
                                .cornerRadius(8)
                                
                        }
                        
                        Spacer()
                        
                    }
                    
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
