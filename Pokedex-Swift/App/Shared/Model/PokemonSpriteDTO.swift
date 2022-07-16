//
//  PokemonSpriteDTO.swift
//  Pokedex-Swift
//
//  Created by Jesus Nieves on 16/07/2022.
//

import Foundation

struct SpriteDTO: Codable {
    let other: SprintOther?
}

struct SprintOther: Codable {
    let home: SpritHome?
}

struct SpritHome: Codable {
    let frontDefault: String?
}
