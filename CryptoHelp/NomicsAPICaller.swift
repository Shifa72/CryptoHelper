//
//  APICaller.swift
//  CryptoHelp
//
//  Created by ilshat shagbanov on 15.02.2022.
//

import Foundation

final class NomicsAPICaller {
    static let shared = NomicsAPICaller()
   
 private struct Constants {
    static let apiKey = "5f226eb62550d4cf9d1a1ba77d8b6e5274c30f84"
    static let assetsEndpoint = "https://api.nomics.com/v1/currencies/"
    }

    private init() {

    }

    public func getAllCryptoData (
        completion: @escaping (Result<[Crypto], Error>) -> Void
    ) {
        guard let url = URL(string: Constants.assetsEndpoint + "ticker?key=" +
            Constants.apiKey +
            "&rank=1&interval=1d,30d&convert=USD&per-page=10&page=1") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return
        }
            
            do {
                //Decode
                let jsonResult = try JSONDecoder().decode([Crypto].self, from: data)
                completion (.success(jsonResult))
            }
            catch {
                completion(.failure(error))
            }
        }
    
        task.resume()

    }
    
}
