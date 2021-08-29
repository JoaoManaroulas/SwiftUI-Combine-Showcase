//
//  PlacesRepositoryProtocol.swift
//  teststuff
//
//  Created by João Guilherme Silva Manaroulas on 29/08/21.
//

import Foundation
import Combine

protocol PlacesRepositoryProtocol {
    func getPlaces() -> AnyPublisher<[Place], Error>
}
