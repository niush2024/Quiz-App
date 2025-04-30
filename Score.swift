//
//  Score.swift
//  Quiz App
//
//  Created by StudentPM on 4/23/25.
//

import SwiftUI

struct Score: View {
    @State var finalscore: Int = 0
    @State var total: Int = 0
    @State var emojis = ["🐠", "🦈", "🐟"]
    var body: some View {
        NavigationView{
            VStack{
                ZStack{
                    Image("Ocean")
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    VStack{
                        Spacer()
                        Text("🦈")
                            .padding()
                            .font(.system(size: 100))
                        
                        //Title
                        Text("CONGRATULATIONS!!🐳\nYou got \(finalscore)/\(total)")
                        
                            .padding()
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                        
                       
                        
                        Spacer()
                        
                    }
                    
                }
                
            }
            
            
            
        }
        
    }
}

#Preview {
    Score()
}
