//
//  HomeViewModel.swift
//  teststuff
//
//  Created by João Guilherme Silva Manaroulas on 29/08/21.
//
import Foundation
import Combine

class HomeViewModel: ObservableObject {
    @Published public var places: [PlaceRowViewModel] = []

    private var cancellables = Set<AnyCancellable>()
    private var useCase: GetPlaceUseCaseProtocol

    init(useCase: GetPlaceUseCaseProtocol) {
        self.useCase = useCase
    }

    func onAppear() {
        useCase.execute()
            .replaceError(with: [])
            .map {
                $0.map(PlaceRowViewModel.init)
            }
            .assign(to: \.places, on: self)
            .store(in: &cancellables)
    }
}
