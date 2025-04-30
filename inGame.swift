//
//  inGame.swift
//  Quiz App
//
//  Created by StudentPM on 4/23/25.
//

import SwiftUI
struct QuestionItem{
    let question: String
    let options: [String]
    let correctAnswer: String
}

struct inGame: View {
    @State private var score = 0
    @State private var Questions = 0
    @State private var selectedAnswer: String? = nil
    @State var finish = false
    // I added the emojis for the fun and design of it.
    
    @State var questions:[QuestionItem] = [
     QuestionItem(
         question:"1. What is my name?",
         options:["A) MINAI IONWSL", "B) NIMAI NOIWLS", "C) IMANI WILSON","D) ANMII SNOWIL"],
         correctAnswer: "C) IMANI WILSON"
     
     ),
     
     QuestionItem(
         question:"2. My favorite color?",
         options:["A) Purple🟪", "B) Orange🟧", "C) Green🟩","D) Blue🟦"],
         correctAnswer: "C) Green🟩"
     
     ),
     
     QuestionItem(
         question:"3. How many pets do I have?🐶",
         options:["A) 1", "B) 1,000,000", "C) 3","D) 2"],
         correctAnswer: "C) 3"
         
         ),
         
         QuestionItem(
             question:"4. In my free time I like to",
             options:["A) Foodie🥘", "B) Watch fish videos🐠", "C)Taking dogs on walk🐩","D) Watch TV shows📺"],
             correctAnswer: "D) Watch TV shows📺"
         
         ),
     
     QuestionItem(
         question:"5. How many friends do I have?",
         options:["A) 10", "B) 1", "C) 8","D) 3"],
         correctAnswer: "C) 8"
         
     ),
     
     QuestionItem(
         question:"6. What food do I like",
         options:["A) Popcorn🍿", "B) Chocolate🍫", "C) Avacado🥑","D) French fries🍟"],
         correctAnswer: "B) Chocolate🍫"
         
         ),
     
     QuestionItem(
         question:"7. How many siblings do I have?",
         options:["A) 0", "B) 4", "C)1","D) 2"],
         correctAnswer: "D) 2"
         ),
     
     QuestionItem(
         question:"8. Is this my favorite class?💻",
         options:["A) Yes", "B) Idk", "C) I hate this clas","D) No"],
         correctAnswer: "A) Yes"
         ),
     
     QuestionItem(
         question:"9. What is my favorite subject?",
         options:["A) Lunch ", "B) English", "C) Biology","D) World history"],
         correctAnswer: "C) Biology"
    ),
     
     QuestionItem(
         question:"10. What college am i gonna attend?",
         options:["A) Nothing!", "B) West valley College", "C) Mission College","D) De Anza College"],
         correctAnswer: "C) Mission College"
    ),
     
     QuestionItem(
         question:"11. What is my hogwarts house?🧙‍♂️",
         options:["A) Gryffindor", "B) Ravenclaw", "C) Slytherin","D) Hufflepuff"],
         correctAnswer: "D) Hufflepuff"
    ),
     
     QuestionItem(
         question:"12. What is my favorite drink?",
         options:["A) Water🍶", "B) Chai☕", "C) Pepsi🥤","D) Boba🧋"],
         correctAnswer: "B) Chai☕"
         
         ),
     QuestionItem(
         question:"13. What is my favorite flavor?",
         options:["A) Sweet🍬", "B) Sour🍋", "C)Spicy🌶","D) Salty🧂"],
         correctAnswer: "D) Salty🧂"
         ),
     
     QuestionItem(
         question:"14. What is my birth stone?💎",
         options:["A) Garnet", "B) Sapphire", "C) Amethyst","D) Pearl"],
         correctAnswer: "A) Garnet"
         ),
    
     QuestionItem(
         question:"15. I can't stand",
         options:["A) sneezing🤧", "B) breathing hard😮‍💨", "C) sniffing😤","D) someone eating to loudly👄"],
         correctAnswer: "C) sniffing😤"
         ),
     QuestionItem(
         question:"16. Dream career:",
         options:["A) Dog walker", "B) None", "C) Lawyer","D) Videogame designer"],
         correctAnswer: "D) Videogame designer"
         ),
     
     QuestionItem(
         question:"17. What's my favorite type of jewelry?",
         options:["A) Earrings", "B) Necklace", "C) Ring","D) Bracelet"],
         correctAnswer: "B) Necklace"
         ),
     QuestionItem(
         question:"18. What is my favorite song?🎵",
         options:["A) Here by Alessa cara", "B) Again by Noah Cyrus", "C) Umbrella by Rihanna","D) My Way by Ava Max"],
         correctAnswer: "B) Again by Noah Cyrus"
         ),
     QuestionItem(
         question:"19. What is my favorite TV show?",
         options:["A) Steven Universe", "B) loki", "C) Gumball","D) The Kardashians"],
         correctAnswer: "A) Steven Universe"
         ),
     
     QuestionItem(
         question:"20. What do you call a sad strawberry?🍓",
         options:["A) Green🟩", "B) Red🟥", "C) White⬜","D) A blueberry!🫐"],
         correctAnswer: "D) A blueberry!🫐"
         ),
     
     ]
    

    var body: some View {
        
        NavigationView{

                ZStack{
                    Image("Quiz")
                        .edgesIgnoringSafeArea(.all)
                    //Background that has the question marks.
                    VStack{
                        Text("Score: \(score)")
                            .padding()
                            .foregroundColor(.black)
                        // change the text color
                            .font(.system(size: 26))
                        //makes the font bigger
                            .bold()
                            .padding(.top)
                        //moves down bit
                            .padding(.horizontal)
                        //moves up bit
                        //This text is for questions that be display on the IPhone
                        Text(questions[Questions].question)
                            .padding()
                            .foregroundColor(.black)
                            .background(Color.white)
                            .font(.system(size: 25))
                            // Added frame for the question box to be fixed like box doesn't go out the IPhone screen.
                            .frame(width:400)
                        //This text is for options that be display on the IPhone.
                        ForEach(questions[Questions].options.indices, id:\.self){i in
                            Button(action: {
                                if questions[Questions].options[i] == questions[Questions].correctAnswer{
                                    score += 1
                                }
                                if Questions < questions.count-1{
                                    Questions += 1
                                } else {
                                    finish = true
                                }
                            }){
                                Text(questions[Questions].options[i])
                                    .padding(.vertical)
                                    //.padding(.horizontal, 9)
                                    .frame(width:230 , height:42)
                                    .foregroundColor(.black)
                                    //Changes the text color foregroundColor
                                    .background(Color.white)
                                    //Changes the box color for the questions and options
                                    .cornerRadius(2)
                                    //changes the box corner
                                    .font(.system(size: 20))
                                  //how big the text is gonna be on the screen
                            }
                            
                        }
                        if finish == true {
                            NavigationLink(destination:Score(finalscore: score, total:questions.count).navigationBarBackButtonHidden(true)){
                                // changes to the next page like to shows the persons score like what they got.
                                Text("Finish")
                                //this is for the blue button when it's done after answering the questions
                                    .padding()
                                    .frame(width:230 , height:42)
                                    //line 175
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .cornerRadius(8)
                                    
                            }
                        }
                    }
                }
  

        }
    }
}

#Preview {
    inGame()
}
