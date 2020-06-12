//
//  ContentView.swift
//  FirstApp
//
//  Created by James Thesken on 6/11/20.
//  Copyright © 2020 James Thesken. All rights reserved.
//

import SwiftUI
import SwiftySuncalc

var message = "Hello, James!😸";

// Class to get the current lunar phase
class lunarData {
    // Returns a string which represents the current lunar phase.
    func getData() -> String{
        let suncalc: SwiftySuncalc! = SwiftySuncalc();
        let moonIllumination = suncalc.getMoonIllumination(date: Date());
        
        let moonPhase = moonIllumination["phase"]
                
        if moonPhase != nil && moonPhase! > 0.5 {
            let daMoon:String = "It's the last quarter!"
            return daMoon
        }

        else{
            // Convert the Double? type to String
            let daMoon:String = String(format:"%f", moonPhase as! CVarArg)
            return daMoon
        }
//        let daMoon:String = String(format:"%f", moonPhase as! CVarArg)
    }
}

struct ContentView: View {
    
    // Initialize the object
    let moonData = lunarData()
    
    var body: some View {
        VStack(alignment: .center){
            Text(message)
                .font(.title)
            Text(moonData.getData())
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 


