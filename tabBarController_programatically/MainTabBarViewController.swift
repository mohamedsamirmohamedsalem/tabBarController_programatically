//
//  ViewController.swift
//  tabBarController_programatically
//
//  Created by Mohamed Samir on 9/11/20.
//  Copyright © 2020 Mohamed Samir. All rights reserved.
//

import UIKit

class MainTabBarViewController : UITabBarController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = #colorLiteral(red: 0.9446642399, green: 0.3604849875, blue: 0.3527566791, alpha: 1)
        tabBar.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        setupTabBar()
        
    }

   private func setupTabBar(){
    let vc1 = ViewController1.init(nibName: ViewController1.className, bundle: nil)
    vc1.tabBarItem.image = UIImage(named: "ic_menu_e")
    vc1.tabBarItem.selectedImage = UIImage(named: "ic_menu_e")
  
    let vc2 = ViewController2.init(nibName: ViewController2.className, bundle: nil)
    vc2.tabBarItem.image = UIImage(named: "ic_menu")
     vc2.tabBarItem.selectedImage = UIImage(named: "ic_menu")
     
    viewControllers = [vc1,vc2]
    
    }

}

public extension NSObject {

    public class var className: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }

    public var className: String {
        return NSStringFromClass(type(of: self)).components(separatedBy: ".").last!
    }
}
