//
//  Home.swift
//  teststuff
//
//  Created by João Guilherme Silva Manaroulas on 29/08/21.
//

import SwiftUI

struct Home: View {

    @ObservedObject var viewModel: HomeViewModel

    var body: some View {
        NavigationView {
            List(viewModel.places) { place in
                PlaceCell(viewModel: place)
            }
        }.onAppear(perform: viewModel.onAppear)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(viewModel: HomeViewModel(useCase: GetPlaceUseCase(repository: PlacesRepository(localData: PlacesLocalClient()))))
    }
}
