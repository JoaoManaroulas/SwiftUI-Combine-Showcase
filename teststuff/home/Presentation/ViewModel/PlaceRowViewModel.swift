//
//  PlaceViewModel.swift
//  teststuff
//
//  Created by João Guilherme Silva Manaroulas on 29/08/21.
//

import Foundation
import Combine


class PlaceRowViewModel: ObservableObject, Identifiable {

    @Published var title: String
    @Published var description: String
    let id: String?

    init(place: Place) {
        self.title = place.name ?? ""
        self.description = place.description ?? ""
        self.id = place.id
    }
}
