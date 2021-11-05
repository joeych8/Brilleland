//
//  BrillelandApp.swift
//  Brilleland
//
//  Created by joey chau on 20/10/2021.
//

import SwiftUI

@main
struct BrillelandApp: App {
    
    init() {
        //MARK: Changes TabBar background color
        UITabBar.appearance().backgroundColor = UIColor(named: "TabBarGrayColor")
        
        //MARK: Changes tabbar unselected icon color
        //UITabBar.appearance().unselectedItemTintColor = UIColor(named: "brillelandPrimaryGreenColor")
        
        //MARK: Changes tabView Indicator color
        UIPageControl.appearance().currentPageIndicatorTintColor = .black
        //UIPageControl.appearance().pageIndicatorTintColor = UIColor.gray.withAlphaComponent(0.2)
        
    }
    
    var body: some Scene {
        WindowGroup {
            CustomNavigation()
        }
    }
}
