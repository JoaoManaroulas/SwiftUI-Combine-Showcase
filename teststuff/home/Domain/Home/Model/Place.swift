//
//  Place.swift
//  teststuff
//
//  Created by João Guilherme Silva Manaroulas on 29/08/21.
//

import Foundation

struct Place: Codable, Identifiable {
    let id: String?
    let name: String?
    let description: String?
    let imgUrlAsString: String?
    let authorTip: String?
    let mapUrlAsString: String?
}

extension Place {
    static func testModel() -> Self {
        return Place(id: UUID().uuidString,
                     name: "Teste Name",
                     description: "Test Description",
                     imgUrlAsString: "https://testurl.com",
                     authorTip: "Test Author Thip",
                     mapUrlAsString: "https://testmapurl.com")
    }
}
