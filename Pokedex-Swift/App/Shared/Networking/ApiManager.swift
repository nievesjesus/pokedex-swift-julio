//
//  ApiManager.swift
//  Pokedex
//
//  Created by Jesus Nieves on 13/07/2022.
//
import Alamofire

class ApiManger {
    
    static let shared = ApiManger()
    
    // GET / POST / DELETE / UPDATE
    func getCall(url: String, success: @escaping (Result<Data?, AFError>) -> Void) {
        AF.request(url).response { response in
            success(response.result)
        }
    }

}



