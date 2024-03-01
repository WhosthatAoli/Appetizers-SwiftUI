//
//  User.swift
//  Appetizers
//
//  Created by Shaohua Zhang on 2/29/24.
//

import Foundation

struct User: Codable{
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
