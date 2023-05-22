//
//  ContentView.swift
//  GooseShereButton
//
//  Created by Mykola Matsko on 22.05.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader {
            let size = $0.size
            
            Home(size: size)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
