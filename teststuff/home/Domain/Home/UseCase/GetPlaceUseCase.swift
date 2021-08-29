//
//  GetPlaceUseCaseProtocol.swift
//  teststuff
//
//  Created by João Guilherme Silva Manaroulas on 29/08/21.
//

import Foundation
import Combine

protocol GetPlaceUseCaseProtocol {
    func execute() -> AnyPublisher<[Place], Error>
}

class GetPlaceUseCase {

    private var repository: PlacesRepositoryProtocol

    init(repository: PlacesRepositoryProtocol) {
        self.repository = repository
    }
}

extension GetPlaceUseCase: GetPlaceUseCaseProtocol {
    func execute() -> AnyPublisher<[Place], Error> {
        return repository.getPlaces()
    }
}
