//
//  ContentView.swift
//  HomePage
//
//  Created by Israa Kheder on 01/04/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var calendar = Date()
    @State private var isPresented = false
    @State private var date = Date()
    var body: some View {
        //but this to reset the screen to a good nav view
       
            // do a z stack for the background
            ZStack(alignment: .top){
                LinearGradient(gradient: Gradient(colors: [Color("Colore"),Color("Colort")]),
                               startPoint: .top,
                               endPoint: .bottom)
                .ignoresSafeArea(.all)
                //  do the v stack to get the hstach into it // is it true ??
                VStack(alignment: .center){
            
                    HStack {
                        DatePicker(selection: $calendar,displayedComponents: .date) {
                        }.labelsHidden()
                        .accentColor(.orange)
                        .background(Color.init(uiColor: .systemBackground))
                        .cornerRadius(10)
//                        .opacity(0.8)
                        Spacer()
                        
                        Button {isPresented.toggle()} label: {
                            Image(systemName:"plus.app.fill")
                                .resizable()
                                .frame(width: 40,height: 40)
                                .shadow(radius: 20)
//                                .opacity(0.78)
                            
                        }
                                .foregroundColor(Color.white )
                                .sheet(isPresented: $isPresented) {
                                    AddEvent()
                                }
                    }.foregroundColor(.red)
                    .padding()
                    
                    VStack() {
                        Capsule().fill(Color.white.opacity(0.8)).frame(width: 350, height: 4)
                    }
                    VStack {
                        DatePicker(selection: $calendar,displayedComponents: .date) {}
                        .datePickerStyle(.graphical)
                        .accentColor(.orange)
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

