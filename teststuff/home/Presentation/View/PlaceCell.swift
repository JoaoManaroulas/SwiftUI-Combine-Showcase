//
//  Place.swift
//  teststuff
//
//  Created by João Guilherme Silva Manaroulas on 29/08/21.
//

import SwiftUI

struct PlaceCell: View {
    @ObservedObject var viewModel: PlaceRowViewModel

    var body: some View {
        VStack {
            Text(viewModel.title)
            Text(viewModel.description)
        }
    }
}

struct PlaceCell_Previews: PreviewProvider {
    static var previews: some View {
        PlaceCell(viewModel: PlaceRowViewModel(place: Place.testModel()))
    }
}
