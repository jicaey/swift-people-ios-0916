//
//  Person.swift
//  swift-people
//
//  Created by Michael Young on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    var name = "John Doe"
    var ageInYears: Int? = nil
    var skills = [String]()
    var qualifiedTutor: Bool {
            guard skills.count >= 4 else {
                return false
        }
        return true
    }
    
    
    
    init(name: String, ageInYears: Int?) {
        self.name = name
        self.ageInYears = ageInYears
    }
    
    convenience init(name: String) {
        self.init(name: name, ageInYears: nil)
    }
    
    convenience init() {
        self.init(name: "John Doe", ageInYears: nil)
        
    }
    
    func celebrateBirthday() -> String {
        
        if ageInYears != nil {
            ageInYears! += 1
            return "HAPPY \(ageInYears!)\(ageInYears!.ordinal().uppercased()) BIRTHDAY, \(name.uppercased())!!!"
        } else {
            return "HAPPY BIRTHDAY, \(name.uppercased())!!!"
        }
    }
    
    func learnSkillBash() {
        if !skills.contains("bash") {
            skills.append("bash")
        }
    }
    
    func learnSkillXcode() {
        if !skills.contains("Xcode") {
            skills.append("Xcode")
        }
    }
    
    func learnSkillObjectiveC() {
        if !skills.contains("Objective-C") {
            skills.append("Objective-C")
        }
    }
    
    func learnSkillSwift() {
        if !skills.contains("Swift") {
            skills.append("Swift")
        }
    }
    
    func learnSkillInterfaceBuilder() {
        if !skills.contains("Interface Builder") {
            skills.append("Interface Builder")
        }
    }
}


