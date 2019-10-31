//
//  ContentView.swift
//  ShowingAndHidingViews
//
//  Created by ramil on 31.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.presentationMode) var presentationMode
    var name: String
     
    var body: some View {
        Button("Dismiss") {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
}

struct ContentView: View {
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            // show sheet
            self.showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            // contents of the sheet
            SecondView(name: "@Estonia" )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
