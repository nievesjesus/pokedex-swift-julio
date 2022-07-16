//
//  PokemonListDTO.swift
//  Pokedex
//
//  Created by Jesus Nieves on 13/07/2022.
//

import Foundation

// DTO: Data Transfer Object
struct PokemonListDTO: Codable {
    let results: [PokemonDTO]
}
