//
//  ModelData.swift
//  Landmarks
//
//  Created by Thomas Mejia on 2024-12-11.
//

@Observable
class ModelData{
    var landmarks: [Landmark] = load (_filename: "landmarkData.json")
    var hikes: [Hike] = load (_filename: "hikeData.json")
    var categories: [String : [Landmark]]{
        Dictionary(
            grouping: landmarks,
            by : {$0.category.rawValue})
    }
    var features: [Landmark]{
        landmarks.filter{$0.isFeatured}
    }
    
    var profile = Profile.default
}


import Foundation

var landmarks: [Landmark] = load (_filename: "landmarkData.json")

func load<T: Decodable>(_filename: String) -> T {
    let data: Data


    guard let file = Bundle.main.url(forResource: _filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(_filename) in main bundle.")
    }


    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(_filename) from main bundle:\n\(error)")
    }


    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(_filename) as \(T.self):\n\(error)")
    }
}
