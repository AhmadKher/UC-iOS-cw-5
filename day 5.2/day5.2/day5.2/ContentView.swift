//
//  ContentView.swift
//  day5.2
//
//  Created by macbook on 02/07/2022.
//

import SwiftUI

struct ContentView: View {
    var emmo  = ["🥲","🥹","🤩","😇","🥰","🙂","😣","😍","😁","🤬","🥱","😐"]
   @State var emmo2 = ""

    var body: some View {
        VStack{
            
            Text("اختر الايموجي اللي يعبر عنك اليوم")
                .bold()
                .font(.title)
                .padding()
            
            Text(emmo2)

                .bold()
                .font(.title)
            
                ScrollView(.horizontal){
                    HStack{

                        ForEach(emmo,id: \.self){emmo in
                            
                            Text(emmo)
                                .bold()
                                .padding()
                                .background(.cyan)
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .onTapGesture {
                                   emmo2 = emmo
                                    



                                }
                            
                        
                        }
                    }
                }
            }
            
    }
        }
    
   


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
