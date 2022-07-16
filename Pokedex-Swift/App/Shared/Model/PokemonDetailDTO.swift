//
//  PokemonDetailDTO.swift
//  Pokedex-Swift
//
//  Created by Jesus Nieves on 16/07/2022.
//

import Foundation


struct PokemonDetailDTO: Codable {
    let id: Int
    let name: String
    let sprites: SpriteDTO
}
