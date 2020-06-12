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

class lunarData {
    func getData() -> String{
        let suncalc: SwiftySuncalc! = SwiftySuncalc();
        let moonIllumination = suncalc.getMoonIllumination(date: Date());

        let moonPhase = moonIllumination["angle"]
        let b:String = String(format:"%f", moonPhase!)

        print(moonPhase!)
        
        return b
    }
}

struct ContentView: View {
    
    let moonData = lunarData()
    init()  {
        moonData.getData()
    }
    
    var body: some View {
        Text(moonData.getData())
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 


