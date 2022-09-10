//
//  ContentView.swift
//  Dynamic-Island
//
//  Created by simge on 10.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var expanded: Bool = false
    
    var body: some View {
        VStack {
            DynamicIsland(expanded: $expanded)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
