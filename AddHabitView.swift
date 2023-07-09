//
//  AddHabitView.swift
//  HabitTracker
//
//  Created by Олексій Якимчук on 09.07.2023.
//

import SwiftUI

struct AddHabitView: View {
    @StateObject var habits: Habits
    @Environment(\.dismiss) var dismiss
    
    @State private var habitName: String = ""
    @State private var habitDescription: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Write the habit name:")
                    .font(.callout.bold())
                    .frame(width: 320, alignment: .leading)
                TextField("Name", text: $habitName)
                    .padding()
                    .background(.customYellow)
                    .clipShape(RoundedRectangle(cornerRadius: 17))
                    .padding(.horizontal)
                
                Text("Write the habit description:")
                    .font(.callout.bold())
                    .frame(width: 320, alignment: .leading)
                TextField("Description", text: $habitDescription)
                    .padding()
                    .background(.customYellow)
                    .clipShape(RoundedRectangle(cornerRadius: 17))
                    .padding(.horizontal)
                
                Spacer()
                
                Button() {
                    let newHabit = Habit(id: UUID(), name: habitName, description: habitDescription, count: 0)
                    habits.items.append(newHabit)
                    dismiss()
                } label: {
                    HStack {
                        Image(systemName: "plus")
                        Text("Add habit")
                    }
                }
                .padding()
                .background(.customYellow)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            }
            .frame(maxHeight: .infinity)
            .background(.midBlue)
            .navigationTitle("New habit")
        }
    }
}

struct AddHabitView_Previews: PreviewProvider {
    static var previews: some View {
        AddHabitView(habits: Habits())
    }
}
