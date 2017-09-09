//
//  Models.swift
//  appstore1
//
//  Created by Ivan Ken Tiu on 09/09/2017.
//  Copyright © 2017 Ivan Ken Tiu. All rights reserved.
//

import UIKit

class AppCategory: NSObject {
    
    var name: String?
    var apps: [App]?
    
    static func sampleAppCategories() -> [AppCategory] {
        
        // 1st sample app category
        let bestNewAppsCategory = AppCategory()
        bestNewAppsCategory.name = "Best New Apps"
        
        // apps within the category
        var apps = [App]()
        
        // logic
        let frozenApp = App()
        frozenApp.name = "Cool Build It: Monster"
        frozenApp.imageName = "monster"
        frozenApp.category = "Entertainment"
        frozenApp.price = NSNumber(value: 3.99)
        apps.append(frozenApp)
        
        
        bestNewAppsCategory.apps = apps
        
        // 2nd sample app category
        let bestNewGamesCategory = AppCategory()
        bestNewGamesCategory.name = "Best New Games"
        
        // apps within the category
        var bestNewGamesApps = [App]()
        
        // logic
        let telepaintApp = App()
        telepaintApp.name = "telepaint"
        telepaintApp.imageName = "telepaint"
        telepaintApp.category = "Games"
        telepaintApp.price = NSNumber(value: 2.99)
        bestNewGamesApps.append(telepaintApp)
        
        bestNewGamesCategory.apps = bestNewGamesApps
        
        return [bestNewAppsCategory, bestNewGamesCategory]
        
    }
}

// model for each individual app
class App: NSObject {
    
    var id: NSNumber?
    var name: String?
    var category: String?
    var imageName: String?
    var price: NSNumber?
    
}
