//
//  HabitView.swift
//  HabitTracker
//
//  Created by Олексій Якимчук on 09.07.2023.
//

import SwiftUI

struct HabitView: View {
    @StateObject var habits: Habits
    var habit: Habit
    
    var body: some View {
            VStack {
                Form {
                    Group {
                        HStack {
                            Text("Habit name:")
                                .bold()
                            Text("\(habit.name != "" ? habit.name : "No name")")
                        }
                        
                        HStack {
                            Text("Description:")
                                .bold()
                            Text("\(habit.description != "" ? habit.description : "No desription")")
                        }
                        
                        HStack {
                            Text("Completed days:")
                                .bold()
                            Text("\(habit.count)")
                        }
                    }
                }
                
                Button() {
                    if let index = habits.items.firstIndex(of: habit) {
                        var updatedHabit = habit
                        updatedHabit.count += 1
                        habits.items[index] = updatedHabit
                    }
                } label: {
                    HStack {
                        Image(systemName: "calendar.badge.plus")
                        Text("Day completed")
                    }
                }
            }
            .navigationTitle("Habit")
        }
}

struct HabitView_Previews: PreviewProvider {
    static let habits = Habits()
    
    static var previews: some View {
        HabitView(habits: habits, habit: Habit(id: UUID(), name: "Reading", description: "Read 45-50 pages", count: 0))
    }
}
