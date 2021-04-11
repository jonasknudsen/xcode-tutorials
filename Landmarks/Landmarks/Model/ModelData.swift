//
//  ModelData.swift
//  Landmarks
//
//  Created by Jonas Knudsen on 4/11/21.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    // first, try to find the correct file
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    // next, try to load the contents of the file into the data objet
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle: \n\(error)")
    }
    
    // finally, try to decode the JSON data and return it
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't partse \(filename) as \(T.self): \n\(error)")
    }
}
