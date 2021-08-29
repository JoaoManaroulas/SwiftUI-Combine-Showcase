//
//  PlacesLocalRepository.swift
//  teststuff
//
//  Created by João Guilherme Silva Manaroulas on 29/08/21.
//

import Foundation
import Combine

protocol PlacesLocalDataProtocol {
    func getPlaces() -> AnyPublisher<[Place], Error>
}

class PlacesLocalClient {

}

extension PlacesLocalClient: PlacesLocalDataProtocol {
    func getPlaces() -> AnyPublisher<[Place], Error> {
        let places = [Place.testModel(), Place.testModel(), Place.testModel(), Place.testModel(), Place.testModel()]
        return Just(places)
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }
}
