//
//  Person.swift
//  ContactList
//
//  Created by mac mini on 3/18/22.
//

import Foundation

struct Person {
    var name: String
    var surname: String
    var phone: String
    
    var email: String {
        "\(name.lowercased())@swiftbook.ru"
    }
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersons() -> [Person] {
        let dataManager = DataManager()
        
        var persons: [Person] = []
        
        for _ in 0..<dataManager.names.count {
           
            let randomName = dataManager.names.remove(at: Int.random(in: 0..<dataManager.names.count))
            let randomSurname = dataManager.surnames.remove(at: Int.random(in: 0..<dataManager.surnames.count))
            let randomPhone = dataManager.phones.remove(at: Int.random(in: 0..<dataManager.phones.count))
            
            let person = Person(name: randomName, surname: randomSurname, phone: randomPhone )
            
            persons.append(person)
        }
        
        return persons
    }
}
