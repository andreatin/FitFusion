//
//  DietPlans.swift
//  FitFusion
//
//  Created by Cesar Melendez on 7/21/23.
//

import SwiftUI

struct DietPlans: View {
    var body: some View {
        ZStack{
            Color.mint
                .opacity(0.2)
            
            VStack {
                
                Text("Diet Plan")
                .foregroundStyle(.black)
                .font(.system(size: 30.0))
                .bold()
                
                VStack
                {
                    Image("keto")
                        .resizable()
                        .frame(width: 160.0, height: 80.0)
                    
                    Text("Keto Diet")
                        .bold()
                        .italic()
                        .frame(alignment: .leading)
                    Text("High Fat, Low Carbs")
                        .fontWeight(.ultraLight)
                        .italic()
                        .frame(alignment: .leading)
                }//end Keto VStack
                
        
                
                VStack
                {
                    Image("paleo")
                        .resizable()
                        .frame(width: 160.0, height: 80.0)
                    Text("Paleo")
                        .bold()
                        .italic()
                        .frame(alignment: .leading)
                    Text("Eat like a caveman")
                        .fontWeight(.ultraLight)
                        .italic()
                        .frame(alignment: .leading)
                }//end Paleo VStack
                
            
                
                VStack
                {
                    Image("dashdiet")
                        .resizable()
                        .frame(width: 160.0, height: 80.0)
                    Text("Dash Diet")
                        .bold()
                        .italic()
                        .frame(alignment: .leading)
                    Text("Dietary Approach to stop hypertension")
                        .fontWeight(.ultraLight)
                        .italic()
                        .frame(alignment: .leading)
                }//Dash Diet VStack
                
            
                
                VStack
                {
                    Image("mediterranean")
                        .resizable()
                        .frame(width: 160.0, height: 80.0)
                    Text("Mediterranean")
                        .bold()
                        .italic()
                        .frame(alignment: .leading)
                    Text("Plant-Based Foods and Healthy Fats")
                        .fontWeight(.ultraLight)
                        .italic()
                        .frame(alignment: .leading)

                }//end Mediterranean
                
            }// end Main VStack
            
        }//end ZStack
    }
}

struct DietPlans_Previews: PreviewProvider {
    static var previews: some View {
        DietPlans()
    }
}
