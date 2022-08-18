//
//  ContentView.swift
//  SUPER 1
//
//  Created by Shhooda on 16/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var BOTpoints = 0
    @State var MYpoints = 0
    @State var BOTimage = "R"
    @State var MYimage = "R"
    @State var PLAYER1 = ""
    var P1 = 0
      // @State let ALERT = ""
    var body: some View {
        ZStack{
           
            LinearGradient(colors: [.teal, .green], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack{
                
                Text("BOT")
                    .font(.system(size: 30))
                    .bold()
                Text("Points: \(BOTpoints)")
                    .font(.system(size: 30))
                    .bold()
               
                Image(BOTimage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200, alignment: .center)
                    .padding(50)
                
                
                Image(MYimage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200, alignment: .center)
                    .padding(50)
                    .onTapGesture {
                        let MYtap = Int.random(in:  1...3)
                        MYimage = imageGenerator(num: MYtap)
                        
                        let BOTtap = Int.random(in:  1...3)
                        BOTimage = imageGenerator(num: BOTtap)
                        
                        pointsCALC(MY: MYtap, BOT: BOTtap)
                    }
                TextField("Player 1" ,text: $PLAYER1)
                    .font(.system(size: 30))
                    .frame(width: 200, height: 30, alignment: .center)
            
        
                Text("Points: \(MYpoints)")
                    .font(.system(size: 30))
                    .bold()
                
            }
            
        }
    }
    
    func imageGenerator(num:Int)-> String{
        if num == 1 {
            return "R"
    }
        else if num == 2 {
            return "P"
}
        else if num == 3 {
            return "S"
        }
        return ""
    }

    func pointsCALC ( MY:Int ,BOT:Int){
        if MY == 1 && BOT == 2{
              BOTpoints = BOTpoints+1
        }
        if MY == 1 && BOT == 3{
               MYpoints = MYpoints+1
        }
        if MY == 2 && BOT == 1{
             MYpoints = MYpoints+1
        }
        if MY == 2 && BOT == 3{
              BOTpoints = BOTpoints+1
        }
        if MY == 3 && BOT == 1{
              BOTpoints = BOTpoints+1
        }
        if MY == 3 && BOT == 2{
             MYpoints = MYpoints+1
        }
    }
}
   // func MYalert(){
       // if MYpoints > BOTpoints{
        //    let Alert = UIAlertController(title: "WE HAVE A WINNER !!!", message: "DING DING DING! \(PLAYER1) has won the round !!", preferredStyle: .alert)
          //  Alert.addAction(UIAlertAction(title: "Next Round", style: .cancel, handler: {action in
           //     print("NEXT ROUND!")
          //  }))
      //  }
//}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
        
