//
//  ContentView.swift
//  Shared
//
//  Created by Mazharul Huq on 7/12/20.
//

import SwiftUI

struct ContentView: View {
    @State private var myDate = Date()
    
    var body: some View {
        VStack(alignment:.leading, spacing:15) {
            Text("Date Picker Style Demo")
                .font(.title)
            Text("Default Style")
                .font(.body)
            DatePicker("Date Selected:", selection: $myDate, displayedComponents: .date)
                .frame(width: 320, height: 100, alignment: .center)
                .padding(.bottom, 25)
            Text("Graphical Style")
                .font(.body)
            DatePicker("", selection: $myDate, displayedComponents: .date)
                .datePickerStyle(GraphicalDatePickerStyle())
            Spacer()
            Text("Date selected: \(myDate, formatter: getFormatter()) ")
                .font(.body)
        }.padding(15)
    }
    
    func getFormatter () -> DateFormatter {
    let formater = DateFormatter ()
        formater.dateStyle = .full
        return formater
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
