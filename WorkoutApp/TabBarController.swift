//
//  TabBarController.swift
//  WorkoutApp
//
//  Created by Вик Кальной on 04.10.2022.
//

import UIKit

enum Tabs: Int {
    case overview
    case sessions
    case progress
    case settings
}


final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inactive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let overviewController = UIViewController()
        let sessionsController = UIViewController()
        let progressController = UIViewController()
        let settingsController = UIViewController()
        
        let overviewNavigation = UINavigationController(rootViewController: overviewController)
        let sessionsNavigation = UINavigationController(rootViewController: sessionsController)
        let progressNavigation = UINavigationController(rootViewController: progressController)
        let settingsNavigation = UINavigationController(rootViewController: settingsController)
        
        overviewNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.overview,
                                                     image: Resources.Images.TabBar.overview,
                                                     tag: Tabs.overview.rawValue)
        
        sessionsNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.session,
                                                     image: Resources.Images.TabBar.session,
                                                     tag: Tabs.sessions.rawValue)
        
        progressNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.progress,
                                                     image: Resources.Images.TabBar.progress,
                                                     tag: Tabs.progress.rawValue)
        
        settingsNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.settings,
                                                     image: Resources.Images.TabBar.settings,
                                                     tag: Tabs.settings.rawValue)
        
        setViewControllers([overviewNavigation, sessionsNavigation, progressNavigation, settingsNavigation], animated: false)
        
    }
}

// sms
