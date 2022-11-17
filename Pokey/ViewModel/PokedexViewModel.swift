//
//  PokedexViewModel.swift
//  Pokey
//
//  Created by AlecNipp on 11/16/22.
//

import Foundation

class PokedexViewModel: ObservableObject {
    @Published var pokemon: [Pokemon]
    init() {
        PokedexService.loadPokedex()
        pokemon = PokedexService.pokedex?.pokemon ?? []
    }
}
