//
//  PokemonDetailService.swift
//  Pokedex-Swift
//
//  Created by Jesus Nieves on 16/07/2022.
//

import Foundation

class PokemonDetailService {
    
    func getPokemon(urlPokemon: String, onComplete: @escaping (PokemonDetailDTO) -> Void,
                     onError: @escaping (String) -> Void) {
        
        // Llamo una funciona
        ApiManger.shared.getCall(url: urlPokemon) { response in
            
            // Hago un switch
            switch response {
            case .success(let data):
                // Hago un do catch
                do {
                    if let data = data {
                        let decoder = JSONDecoder()
                        decoder.keyDecodingStrategy = . convertFromSnakeCase
                        let pokemonResponse = try decoder.decode(PokemonDetailDTO.self, from: data)
                        onComplete(pokemonResponse)
                    }
                    
                } catch {
                    onError("fallo la conversión del json")
                }
            case .failure(_):
                onError("Fallo en el apimanager")
            }
            
        }
        
        
    }
    
}

