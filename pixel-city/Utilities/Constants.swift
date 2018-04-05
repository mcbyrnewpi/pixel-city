//
//  Constants.swift
//  pixel-city
//
//  Created by Matthew Byrne on 3/19/18.
//  Copyright © 2018 Matthew Byrne. All rights reserved.
//

import Foundation

let apiKey = "58f0c814b736067e9c13ee3517bd53cb"

func flickrUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberofPhotos number: Int) -> String {
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
}
