// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let place = try? newJSONDecoder().decode(Place.self, from: jsonData)

//
// To read values from URLs:
//
//   let task = URLSession.shared.placeTask(with: url) { place, response, error in
//     if let place = place {
//       ...
//     }
//   }
//   task.resume()

import Foundation

// MARK: - Place
struct Place: Codable {
    let businessStatus: String
    let geometry: Geometry
    let icon: String
    let name: String
    let openingHours: OpeningHours
    let photos: [Photo]
    let placeID: String
    let plusCode: PlusCode
    let priceLevel: Int
    let rating: Double
    let reference, scope: String
    let types: [String]
    let userRatingsTotal: Int
    let vicinity: String

    enum CodingKeys: String, CodingKey {
        case businessStatus = "business_status"
        case geometry, icon, name
        case openingHours = "opening_hours"
        case photos
        case placeID = "place_id"
        case plusCode = "plus_code"
        case priceLevel = "price_level"
        case rating, reference, scope, types
        case userRatingsTotal = "user_ratings_total"
        case vicinity
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.geometryTask(with: url) { geometry, response, error in
//     if let geometry = geometry {
//       ...
//     }
//   }
//   task.resume()

// MARK: - Geometry
struct Geometry: Codable {
    let location: Location
    let viewport: Viewport
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.locationTask(with: url) { location, response, error in
//     if let location = location {
//       ...
//     }
//   }
//   task.resume()

// MARK: - Location
struct Location: Codable {
    let lat, lng: Double
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.viewportTask(with: url) { viewport, response, error in
//     if let viewport = viewport {
//       ...
//     }
//   }
//   task.resume()

// MARK: - Viewport
struct Viewport: Codable {
    let northeast, southwest: Location
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.openingHoursTask(with: url) { openingHours, response, error in
//     if let openingHours = openingHours {
//       ...
//     }
//   }
//   task.resume()

// MARK: - OpeningHours
struct OpeningHours: Codable {
    let openNow: Bool

    enum CodingKeys: String, CodingKey {
        case openNow = "open_now"
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.photoTask(with: url) { photo, response, error in
//     if let photo = photo {
//       ...
//     }
//   }
//   task.resume()

// MARK: - Photo
struct Photo: Codable {
    let height: Int
    let photoReference: String
    let width: Int

    enum CodingKeys: String, CodingKey {
        case height
        case photoReference = "photo_reference"
        case width
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.plusCodeTask(with: url) { plusCode, response, error in
//     if let plusCode = plusCode {
//       ...
//     }
//   }
//   task.resume()

// MARK: - PlusCode
struct PlusCode: Codable {
    let compoundCode, globalCode: String

    enum CodingKeys: String, CodingKey {
        case compoundCode = "compound_code"
        case globalCode = "global_code"
    }
}

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}

// MARK: - URLSession response handlers

extension URLSession {
    fileprivate func codableTask<T: Codable>(with url: URL, completionHandler: @escaping (T?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completionHandler(nil, response, error)
                return
            }
            completionHandler(try? newJSONDecoder().decode(T.self, from: data), response, nil)
        }
    }

    func placeTask(with url: URL, completionHandler: @escaping (Place?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.codableTask(with: url, completionHandler: completionHandler)
    }
}
