//
//  ContentView.swift
//  DAY 5
//
//  Created by macbook on 02/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State var w = ""
    @State var h = ""
    @State var bmi = 0.0
    @State var status = ""
    var body: some View {
        
        VStack{
            
            Image("download")
                    
            Text("ادخل الطول و الوزن  ")
                .bold()
                .font(.title)
                .foregroundColor(.blue)
                .background(.black)
                .clipShape(Capsule())
            
            
                
            TextField("ادخل وزنك" , text: $w)
                .frame(width: 200.0, height: 50.0)
            TextField("ادخل طولك" , text: $h)
                .frame(width: 200.0, height: 50.0)
            Button(action: {
              bmi=bmi(height: Double(h)!, wieght:Double(w)!)
                status=checkstate(bmi: bmi)

                
            }, label: {
                
                Text("احسب")
                    .foregroundColor(.blue)
                    .font(.title2)
                    .padding()
                    .background(.black)
                    .foregroundColor(.white)
                    .cornerRadius(25)
                
            })
            Text(" BMI = \(bmi) \n status = \(status) ")
                .bold()
                .font(.title)
                .padding()
        }
      
    }
    
    func bmi ( height : Double , wieght : Double  ) -> Double {
        var res : Double
        res = wieght / (height * height)
        
            return res
        }
    func checkstate (bmi:Double) -> String {
        if bmi <= 20 {
            return("ضعيف")
        } else if bmi <= 25 {
            return("جيد")
        } else {
            return("سمين")
        }
        
        }

        }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
