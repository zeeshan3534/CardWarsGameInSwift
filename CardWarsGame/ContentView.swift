//
//  ContentView.swift
//  CardWarsGame
//
//  Created by Zeeshan Khan on 08/05/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var PlayerCard = "card5"
    @State var CpuCard = "card7"
    
    @State var PlayerScore = 0
    @State var CpuScore = 0
    
    
    var body: some View {
        

        ZStack{
            
            
            Image("background-cloth").resizable().ignoresSafeArea()
        
            VStack{
                Spacer()
                Image("logo")
                
                HStack{
                    Spacer()
                    Image(PlayerCard)
                    Spacer()
                    Image(CpuCard)
                    Spacer()
                }
            
                Spacer()
                Button {
                    Deal()
                }label: {
                    Image("button")
                }
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").padding(.bottom, 10.0).font(.headline)
                  
                        Text(String(PlayerScore)).font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").padding(.bottom, 8.0).font(.headline)
                        
                        Text(String(CpuScore)).font(.largeTitle)
                    }
                    Spacer()

                }.foregroundColor(.white)
                Spacer()
                
                
            }
            
        }

    }
    func Deal(){
        var randomPlayer = Int.random(in: 2...14)
        var randomCpu = Int.random(in: 2...14)
        
        PlayerCard = "card"+String(randomPlayer)
        CpuCard = "card"+String(randomCpu)
        
        if randomPlayer>randomCpu{
            PlayerScore+=1
        }
        else if randomPlayer<randomCpu{
            CpuScore+=1
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
