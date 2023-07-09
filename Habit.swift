//
//  Habit.swift
//  HabitTracker
//
//  Created by Олексій Якимчук on 09.07.2023.
//

import Foundation

struct Habit: Identifiable, Codable, Equatable {
    let id: UUID
    let name: String
    let description: String
    var count: Int
}
