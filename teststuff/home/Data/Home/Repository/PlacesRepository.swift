//
//  PlacesRepository.swift
//  teststuff
//
//  Created by João Guilherme Silva Manaroulas on 29/08/21.
//

import Foundation
import Combine

class PlacesRepository {

    private var localData: PlacesLocalDataProtocol

    init(localData: PlacesLocalDataProtocol) {
        self.localData = localData
    }
}

extension PlacesRepository: PlacesRepositoryProtocol {
    func getPlaces() -> AnyPublisher<[Place], Error> {
        return localData.getPlaces()
    }
}
