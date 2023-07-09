//
//  ContentView.swift
//  HabitTracker
//
//  Created by Олексій Якимчук on 09.07.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var habits = Habits()
    @State private var isAddHabitSheetPresented: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(colors: [.customOrange, .customYellow, .midBlue], startPoint: .bottomLeading, endPoint: .topTrailing)
                    .ignoresSafeArea()
                
                VStack {
                    List {
                        Section {
                            ForEach($habits.items) { $habit in
                                NavigationLink {
                                    HabitView(habits: habits, habit: habit)
                                } label: {
                                    HStack {
                                        Text(habit.name)
                                        
                                        Spacer()
                                        
                                        Text("\(habit.count)")
                                    }
                                }
                            }
                            .onDelete(perform: removeItems)
                        }
                    }
                    .listStyle(.insetGrouped)
                    .scrollContentBackground(.hidden)
                }
                .navigationTitle("HabitTracker")
                .toolbar {
                    Button() {
                        isAddHabitSheetPresented.toggle()
                    } label: {
                        VStack {
                            Image(systemName: "plus.circle")
                            Text("Add")
                        }
                    }
                    .sheet(isPresented: $isAddHabitSheetPresented) {
                        AddHabitView(habits: habits)
                    }
                }
            }
        }
    }
    
    func removeItems(at offset: IndexSet) {
        habits.items.remove(atOffsets: offset)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
