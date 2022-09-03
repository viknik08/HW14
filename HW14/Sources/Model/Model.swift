//
//  Model.swift
//  HW14
//
//  Created by Виктор Басиев on 03.09.2022.
//

import Foundation

struct Settings: Hashable {
    var title: String
    var image: String?
    var count: String
    var icon: String?
}

extension Settings {
    static var settingsArray: [[Settings]] = [
    [Settings(title: "Recents", image: "person", count: "30", icon: nil),
     Settings(title: "Layout", image: "person3", count: "100", icon: nil),
     Settings(title: "Favourites", image: "person4", count: "240", icon: nil),
     Settings(title: "WhtsApp", image: "person5", count: "2", icon: nil),
     Settings(title: "Instagram", image: "person3", count: "442", icon: nil),
     Settings(title: "Family", image: "person5", count: "150", icon: nil),
     Settings(title: "Me", image: "person4", count: "11", icon: nil)],
    
    [Settings(title: "People", image: "person4", count: "52", icon: nil),
     Settings(title: "Places", image: "person3", count: "560", icon: nil),
     Settings(title: "Anouther", image: "person", count: "651", icon: nil),
     Settings(title: "MyTouch", image: "person5", count: "230", icon: nil)],
    
    [Settings(title: "Videos", image: nil, count: "432", icon: "video"),
     Settings(title: "Selfies", image: nil, count: "352", icon: "person.crop.square"),
     Settings(title: "Live Photos", image: nil, count: "11", icon: "livephoto"),
     Settings(title: "Portraint", image: nil, count: "0", icon: "cube"),
     Settings(title: "Panoramas", image: nil, count: "72", icon: "pano"),
     Settings(title: "Time-lapse", image: nil, count: "342", icon: "timelapse"),
     Settings(title: "Slo-mo", image: nil, count: "42", icon: "slowmo"),
     Settings(title: "Screenshots", image: nil, count: "112", icon: "camera.viewfinder"),
     Settings(title: "Screen Recordings", image: nil, count: "562", icon: "record.circle")],
    
    [Settings(title: "Imports", image: nil, count: "2", icon: "square.and.arrow.down"),
     Settings(title: "Hidden", image: nil, count: "22", icon: "eye.slash"),
     Settings(title: "Recently Deleted", image: nil, count: "352", icon: "trash")]
    ]
}
